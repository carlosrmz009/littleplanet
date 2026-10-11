; R42D__.MMD
; disassembled from the disc; code only, data comes from data/R42D__.MMD at build time
	.file "R42D__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18
	jmp (loc_2022cc).l
	jmp (loc_201de6).l
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
	bsr.w sub_202408
	bsr.w sub_2023b0
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2013a8

sub_200184:
	tst.b ($ff1507).l
	bne.s loc_20018e
	rts
loc_20018e:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200204).l,a1
	lea (dat_20021c).l,a2
	bsr.w sub_2001c6
	lea (dat_20020c).l,a1
	lea (dat_20021c).l,a2
	bsr.w sub_2001c6
	lea (dat_200214).l,a1
	lea (dat_20021c).l,a2
	bra.w sub_2001c6

sub_2001c6:
	subq.b #$1,(a5)
	bpl.s loc_2001fa
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
	bcs.s loc_2001e6
	moveq #$0,d0
loc_2001e6:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_2001fa:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200204:
	dc.b $32,$03,$02,$00,$02,$01,$02,$02
dat_20020c:
	dc.b $33,$03,$02,$01,$02,$02,$02,$00
dat_200214:
	dc.b $34,$03,$02,$02,$02,$00,$02,$01
dat_20021c:
	dc.b $0c,$6a,$0c,$8c,$0c,$ae

sub_200222:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_200234:
	move.w d1,(a0)+
	dbf d0,loc_200234
	move.w #$15,d4
loc_20023e:
	move.b #$12,($f62a).w
	bsr.w sub_2006f4
	bsr.s sub_200254
	bsr.w sub_2027ce
	dbf d4,loc_20023e
	rts

sub_200254:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20026a:
	bsr.s sub_200298
	dbf d0,loc_20026a
	cmpi.b #$1,($ff1506).l
	bne.s loc_200296
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200290:
	bsr.s sub_200298
	dbf d0,loc_200290
loc_200296:
	rts

sub_200298:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002c0
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002ae
	move.w d1,(a0)+
	rts
loc_2002ae:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002bc
	move.w d1,(a0)+
	rts
loc_2002bc:
	addq.w #$2,(a0)+
	rts
loc_2002c0:
	addq.w #$2,a0
	rts

sub_2002c4:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2002ce:
	move.b #$12,($f62a).w
	bsr.w sub_2006f4
	bsr.s sub_2002e4
	bsr.w sub_2027ce
	dbf d4,loc_2002ce
	rts

sub_2002e4:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2002f4:
	bsr.s sub_200312
	dbf d0,loc_2002f4
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20030a:
	bsr.s sub_200312
	dbf d0,loc_20030a
	rts

sub_200312:
	move.w (a0),d2
	beq.s loc_20033e
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_200322
	subq.w #$2,(a0)+
	rts
loc_200322:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_200330
	subi.w #$20,(a0)+
	rts
loc_200330:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_20033e
	subi.w #$200,(a0)+
	rts
loc_20033e:
	addq.w #$2,a0
	rts

sub_200342:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_20035c:
	move.w d1,(a0)+
	dbf d0,loc_20035c
	move.w #$15,d4
loc_200366:
	move.b #$12,($f62a).w
	bsr.w sub_2006f4
	bsr.s sub_20037c
	bsr.w sub_2027ce
	dbf d4,loc_200366
	rts

sub_20037c:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200392:
	bsr.s sub_2003c0
	dbf d0,loc_200392
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003be
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003b8:
	bsr.s sub_2003c0
	dbf d0,loc_2003b8
loc_2003be:
	rts

sub_2003c0:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003ec
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2003d8
	cmp.w d2,d1
	bcs.s loc_2003d8
	move.w d1,(a0)+
	rts
loc_2003d8:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2003e8
	cmp.w d2,d1
	bcs.s loc_2003e8
	move.w d1,(a0)+
	rts
loc_2003e8:
	subq.w #$2,(a0)+
	rts
loc_2003ec:
	addq.w #$2,a0
	rts

sub_2003f0:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2003fa:
	move.b #$12,($f62a).w
	bsr.w sub_2006f4
	bsr.s sub_200410
	bsr.w sub_2027ce
	dbf d4,loc_2003fa
	rts

sub_200410:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200420:
	bsr.s sub_20043e
	dbf d0,loc_200420
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200436:
	bsr.s sub_20043e
	dbf d0,loc_200436
	rts

sub_20043e:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_20047a
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200456
	addq.w #$2,(a0)+
	rts
loc_200456:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_200468
	addi.w #$20,(a0)+
	rts
loc_200468:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_20047a
	addi.w #$200,(a0)+
	rts
loc_20047a:
	addq.w #$2,a0
	rts

sub_20047e:
	lea (dat_2004ea).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_200492:
	move.l (a2)+,(a3)+
	dbf d7,loc_200492
	rts

sub_20049a:
	lea (dat_2004ea).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004aa:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004aa
	rts

sub_2004b2:
	lea (dat_2004ea).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_2004c6:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004c6
	rts
	.incbin 1230, 28
dat_2004ea:
	.incbin 1258, 522

sub_2006f4:
	move.w #$2300,sr
loc_2006f8:
	tst.b ($f62a).w
	bne.s loc_2006f8
	rts

sub_200700:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200718(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200718(pc,d0.w),d0
	rts
dat_200718:
	.incbin 1816, 640

sub_200998:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_2009f4
	move.w d2,d4
	tst.w d3
	bpl.w loc_2009b2
	neg.w d3
loc_2009b2:
	tst.w d4
	bpl.w loc_2009ba
	neg.w d4
loc_2009ba:
	cmp.w d3,d4
	bcc.w loc_2009cc
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_2009fe(pc,d4.w),d0
	bra.s loc_2009d6
loc_2009cc:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_2009fe(pc,d3.w),d0
loc_2009d6:
	tst.w d1
	bpl.w loc_2009e2
	neg.w d0
	addi.w #$80,d0
loc_2009e2:
	tst.w d2
	bpl.w loc_2009ee
	neg.w d0
	addi.w #$100,d0
loc_2009ee:
	movem.l (a7)+,d3-d4
	rts
loc_2009f4:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_2009fe:
	.incbin 2558, 258

sub_200b00:
	btst.b #$3,$22(a0)
	beq.s loc_200b14
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b14:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b36
	move.b $26(a0),d0
	bpl.s loc_200b30
	subq.b #$1,d0
loc_200b30:
	addi.b #$20,d0
	bra.s loc_200b42
loc_200b36:
	move.b $26(a0),d0
	bpl.s loc_200b3e
	addq.b #$1,d0
loc_200b3e:
	addi.b #$1f,d0
loc_200b42:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200dcc
	cmpi.b #$80,d0
	beq.w loc_200d2a
	cmpi.b #$c0,d0
	beq.w loc_200c8e
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
	bsr.w sub_201056
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
	bsr.w sub_201056
	move.w (a7)+,d0
	bsr.w sub_200c62
	tst.w d1
	beq.s loc_200bd0
	bpl.s loc_200bd2
	cmpi.w #$fff2,d1
	blt.s loc_200bf8
	add.w d1,$c(a0)
loc_200bd0:
	rts
loc_200bd2:
	cmpi.w #$e,d1
	bgt.s loc_200bde
loc_200bd8:
	add.w d1,$c(a0)
	rts
loc_200bde:
	tst.b $38(a0)
	bne.s loc_200bd8
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200bf8:
	rts
	.incbin 3066, 34
loc_200c1c:
	rts
	.incbin 3102, 68

sub_200c62:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200c70
	move.b ($f768).w,d2
	move.w d0,d1
loc_200c70:
	btst.l #$0,d2
	bne.s loc_200c7c
	move.b d2,$26(a0)
	rts
loc_200c7c:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200c8e:
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
	bsr.w sub_2011c6
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
	bsr.w sub_2011c6
	move.w (a7)+,d0
	bsr.w sub_200c62
	tst.w d1
	beq.s loc_200d02
	bpl.s loc_200d04
	cmpi.w #$fff2,d1
	blt.w loc_200c1c
	add.w d1,$8(a0)
loc_200d02:
	rts
loc_200d04:
	cmpi.w #$e,d1
	bgt.s loc_200d10
loc_200d0a:
	add.w d1,$8(a0)
	rts
loc_200d10:
	tst.b $38(a0)
	bne.s loc_200d0a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d2a:
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
	bsr.w sub_201056
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
	bsr.w sub_201056
	move.w (a7)+,d0
	bsr.w sub_200c62
	tst.w d1
	beq.s loc_200da4
	bpl.s loc_200da6
	cmpi.w #$fff2,d1
	blt.w loc_200bf8
	sub.w d1,$c(a0)
loc_200da4:
	rts
loc_200da6:
	cmpi.w #$e,d1
	bgt.s loc_200db2
loc_200dac:
	sub.w d1,$c(a0)
	rts
loc_200db2:
	tst.b $38(a0)
	bne.s loc_200dac
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200dcc:
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
	bsr.w sub_2011c6
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
	bsr.w sub_2011c6
	move.w (a7)+,d0
	bsr.w sub_200c62
	tst.w d1
	beq.s loc_200e46
	bpl.s loc_200e48
	cmpi.w #$fff2,d1
	blt.w loc_200c1c
	sub.w d1,$8(a0)
loc_200e46:
	rts
loc_200e48:
	cmpi.w #$e,d1
	bgt.s loc_200e54
loc_200e4e:
	sub.w d1,$8(a0)
	rts
loc_200e54:
	tst.b $38(a0)
	bne.s loc_200e4e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200e6e:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200e84
	andi.w #$380,d0
loc_200e84:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200ee4
	bmi.s loc_200ee8
	cmpi.b #$5,($ff1506).l
	beq.s loc_200eb4
	cmpi.b #$6,($ff1506).l
	bne.s loc_200eba
loc_200eb4:
	andi.w #$7fff,$2(a0)
loc_200eba:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200eca
	bclr.b #$6,$1(a0)
loc_200eca:
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
loc_200ee4:
	movea.l d1,a1
	rts
loc_200ee8:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f50
	btst.b #$6,$1(a0)
	bne.s loc_200f16
	cmpi.b #$14,d1
	bne.w loc_20103a
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_20103a
loc_200f16:
	cmpi.b #$15,d1
	bne.s loc_200f24
	move.w #$60,d1
	bra.w loc_20103a
loc_200f24:
	cmpi.b #$1e,d1
	bne.s loc_200f32
	move.w #$61,d1
	bra.w loc_20103a
loc_200f32:
	cmpi.b #$1f,d1
	bne.s loc_200f40
	move.w #$62,d1
	bra.w loc_20103a
loc_200f40:
	cmpi.b #$32,d1
	bne.w loc_20103a
	move.w #$63,d1
	bra.w loc_20103a
loc_200f50:
	cmpi.b #$5,($ff1506).l
	bne.w loc_200fb6
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200fa0
	cmpi.b #$6,d1
	beq.s loc_200fa0
	tst.b ($ff1956).l
	beq.w loc_20103a
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_200fb0
	cmpi.b #$3c,d1
	beq.s loc_200fb0
	cmpi.b #$37,d1
	beq.s loc_200fb0
	cmpi.b #$2f,d1
	beq.s loc_200fb0
	cmpi.b #$16,d1
	beq.s loc_200fb0
	bra.w loc_20103a
loc_200fa0:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_20103a
loc_200fb0:
	addq.b #$1,d1
	bra.w loc_20103a
loc_200fb6:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201026
	cmpi.b #$3,$0(a0)
	bcc.w loc_20103a
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_20103a
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_200fea
	move.w #$6a,d1
	bra.s loc_20103a
loc_200fea:
	cmpi.b #$48,d1
	bne.s loc_200ff6
	move.w #$6b,d1
	bra.s loc_20103a
loc_200ff6:
	cmpi.b #$4a,d1
	bne.s loc_201002
	move.w #$6c,d1
	bra.s loc_20103a
loc_201002:
	cmpi.b #$10,d1
	bne.s loc_20100e
	move.w #$6d,d1
	bra.s loc_20103a
loc_20100e:
	cmpi.b #$63,d1
	bne.s loc_20101a
	move.w #$6e,d1
	bra.s loc_20103a
loc_20101a:
	cmpi.b #$43,d1
	bne.s loc_20103a
	move.w #$6f,d1
	bra.s loc_20103a
loc_201026:
	btst.b #$6,$1(a0)
	beq.s loc_20103a
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_20103a
	move.w #$51,d1
loc_20103a:
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

sub_201056:
	bsr.w sub_200e6e
	cmpi.l #$210000,d1
	beq.s loc_201070
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201070
	btst.l d5,d4
	bne.s loc_20107e
loc_201070:
	add.w a3,d2
	bsr.w sub_201116
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20107e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201070
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2010a4
	not.w d1
	neg.b (a4)
loc_2010a4:
	btst.l #$c,d4
	beq.s loc_2010b4
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2010b4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239a76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2010d0
	neg.w d0
loc_2010d0:
	tst.w d0
	beq.s loc_201070
	bmi.s loc_2010ec
	cmpi.b #$10,d0
	beq.s loc_201108
loc_2010dc:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2010ec:
	cmpa.w #$10,a3
	bne.s loc_2010fc
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2010dc
loc_2010fc:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201070
loc_201108:
	sub.w a3,d2
	bsr.w sub_201116
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201116:
	bsr.w sub_200e6e
	cmpi.l #$210000,d1
	beq.s loc_201130
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201130
	btst.l d5,d4
	bne.s loc_20113e
loc_201130:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20113e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201130
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201164
	not.w d1
	neg.b (a4)
loc_201164:
	btst.l #$c,d4
	beq.s loc_201174
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201174:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239a76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201190
	neg.w d0
loc_201190:
	tst.w d0
	beq.s loc_201130
	bmi.s loc_2011a6
loc_201196:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011a6:
	cmpa.w #$10,a3
	bne.s loc_2011b6
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201196
loc_2011b6:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201130
	not.w d1
	rts

sub_2011c6:
	bsr.w sub_200e6e
	cmpi.l #$210000,d1
	beq.s loc_2011e0
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011e0
	btst.l d5,d4
	bne.s loc_2011ee
loc_2011e0:
	add.w a3,d3
	bsr.w sub_201276
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2011ee:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011e0
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20121c
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20121c:
	btst.l #$b,d4
	beq.s loc_201224
	neg.b (a4)
loc_201224:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23aa76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201240
	neg.w d0
loc_201240:
	tst.w d0
	beq.s loc_2011e0
	bmi.s loc_20125c
	cmpi.b #$10,d0
	beq.s loc_201268
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20125c:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011e0
loc_201268:
	sub.w a3,d3
	bsr.w sub_201276
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201276:
	bsr.w sub_200e6e
	cmpi.l #$210000,d1
	beq.s loc_201290
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201290
	btst.l d5,d4
	bne.s loc_20129e
loc_201290:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20129e:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201290
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012cc
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012cc:
	btst.l #$b,d4
	beq.s loc_2012d4
	neg.b (a4)
loc_2012d4:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23aa76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012f0
	neg.w d0
loc_2012f0:
	tst.w d0
	beq.s loc_201290
	bmi.s loc_201306
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201306:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201290
	not.w d1
	rts

sub_201316:
	rts
	.incbin 4888, 144
loc_2013a8:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2013c8
	tst.b ($ff0f01).l
	bne.s loc_2013c8
	move.b #$1,($ff156a).l
loc_2013c8:
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_201430
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20765c
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201430
	move.b #$1,($ff1508).l
loc_201430:
	bset.b #$7,($f600).w
	bsr.w sub_2027c0
	tst.b ($ff156e).l
	bne.s loc_201456
	btst.b #$7,($ff152e).l
	beq.s loc_20147a
	bset.b #$0,($ff151d).l
	beq.s loc_201462
loc_201456:
	bsr.w sub_2003f0
	bclr.b #$0,($ff151d).l
loc_201462:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2014ea
	move.w #$0,($ff1502).l
	rts
loc_20147a:
	bset.b #$0,($ff151d).l
	beq.s loc_201488
	bsr.w sub_2002c4
loc_201488:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2014a4
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2014cc
loc_2014a4:
	tst.b ($ff1508).l
	bne.s loc_2014ea
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2014cc:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2014d4:
	move.l #$0,(a1)+
	dbf d6,loc_2014d4
	move.b #$c,($f62a).w
	bsr.w sub_2006f4
	rts
loc_2014ea:
	cmpi.w #$800,($f78e).w
	bne.s loc_201508
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_201508:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_20151e
	btst.b #$7,($ff152e).l
	beq.s loc_201524
loc_20151e:
	move.l #$eee0eee,d0
loc_201524:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20152c:
	move.l d0,(a1)+
	dbf d6,loc_20152c
loc_201532:
	move.b #$c,($f62a).w
	bsr.w sub_2006f4
	bsr.w sub_2027ce
	bne.s loc_201532
	tst.l ($f680).w
	bne.s loc_201532
	bsr.w sub_2019ba
	moveq #$0,d0
	lea (dat_20fdac).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20155e
	bsr.w sub_2028d4
loc_20155e:
	moveq #$1,d0
	bsr.w sub_2028d4
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20157a:
	move.l d0,(a1)+
	dbf d1,loc_20157a
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20158c:
	move.l d0,(a1)+
	dbf d1,loc_20158c
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20159c:
	move.l d0,(a1)+
	dbf d1,loc_20159c
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2015ac:
	move.l d0,(a1)+
	dbf d1,loc_2015ac
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2015bc:
	move.l d0,(a1)+
	dbf d1,loc_2015bc
	move.w #$2700,sr
	move.l #$213600,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2024aa
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
	cmpi.b #$2,($ff1506).l
	bne.s loc_201650
	move.w #$8014,(a6)
	moveq #$0,d0
	move.b ($ff1507).l,d0
	lsl.w #$3,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	add.w d1,d1
	add.w d1,d0
	lea (dat_201ad0).l,a1
	move.w $0(a1,d0.w),d0
	move.w d0,($f646).w
	move.w d0,($f648).w
	move.w d0,($f64a).w
	clr.b ($f64d).w
	clr.b ($f64e).w
	move.b #$1,($f64c).w
loc_201650:
	move.w #$1e,($ff150a).l
	move.w #$2300,sr
	moveq #$3,d0
	bsr.w sub_20049a
	moveq #$3,d0
	bsr.w sub_20047e
	bsr.w sub_202b36
	bsr.w sub_202c92
	bset.b #$2,($f754).w
	bsr.w sub_2035c0
	bsr.w sub_203572
	jsr (sub_201316).l
	bsr.w sub_20191c
loc_201688:
	move.b #$c,($f62a).w
	bsr.w sub_2006f4
	bsr.w sub_2027ce
	bne.s loc_201688
	tst.l ($f680).w
	bne.s loc_201688
	bsr.w sub_201900
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a0a
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2016ec
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2016ec:
	move.b #$4,($d800).w
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_20172c
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_20172c:
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
	jsr (sub_20fda6).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017bc
loc_2017b6:
	bsr.w sub_200342
	bra.s loc_2017ca
loc_2017bc:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017b6
	bsr.w sub_200222
loc_2017ca:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2017da
	moveq #$0,d0
	bsr.w sub_2004b2
loc_2017da:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2017e8:
	move.b #$8,($f62a).w
	bsr.w sub_2006f4
	tst.b ($f7cc).w
	bne.s loc_201806
	btst.b #$7,($f605).w
	beq.s loc_201806
	eori.b #$1,($f63a).w
loc_201806:
	btst.b #$0,($f63a).w
	beq.w loc_20188c
	bsr.w sub_201d64
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20186a
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2017e8
	subq.b #$1,($ff1508).l
	bpl.s loc_201838
	clr.b ($ff1508).l
loc_201838:
	move.w #$e,d0
	jsr (sub_205cc0).l
	bsr.w sub_20765c
	clr.b ($ff1522).l
	jsr (sub_202530).l
	move.b #$1,($a01c3e).l
	jsr (sub_20254c).l
	move.w #$1,($ff1502).l
	bra.s loc_201878
loc_20186a:
	andi.b #$70,d0
	beq.w loc_2017e8
	clr.b ($ff1508).l
loc_201878:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2013a8
loc_20188c:
	bsr.w sub_201daa
	addq.w #$1,($ff1504).l
	jsr (sub_207672).l
	jsr (sub_2039c6).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2013a8
	tst.w ($ff1502).l
	bne.w loc_2013a8
	tst.w ($ff1906).l
	bne.s loc_2018d4
	cmpi.b #$6,($d024).w
	bcs.s loc_2018d4
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018d8
loc_2018d4:
	bsr.w sub_202c92
loc_2018d8:
	bsr.w sub_201c40
	jsr (sub_203b70).l
	tst.w ($ff190e).l
	bne.s loc_2018ee
	bsr.w sub_200184
loc_2018ee:
	jsr (sub_20bfb2).l
	bsr.w sub_2027ce
	bsr.w sub_201926
	bra.w loc_2017e8

sub_201900:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201918
	move.w #$78,$30(a1)
loc_201918:
	rts
	dc.b $4e,$75

sub_20191c:
	move.l #$23ba76,($f796).w
	rts

sub_201926:
	subq.b #$1,($ff1910).l
	bpl.s loc_201944
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201944:
	subq.b #$1,($ff1912).l
	bpl.s loc_201962
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201962:
	subq.b #$1,($ff1914).l
	bpl.s loc_20198a
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_20198a
	move.b #$0,($ff1915).l
loc_20198a:
	tst.b ($ff1916).l
	beq.s loc_2019b8
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_2019b8:
	rts

sub_2019ba:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_2019dc
	cmpi.b #$2,d0
	bne.s loc_2019dc
	add.b ($ff156a).l,d0
loc_2019dc:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_2019f4(pc,d1.w),d0
	jmp (sub_205cc0).l
dat_2019f4:
	.incbin 6644, 22

sub_201a0a:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_2382c2).l,a1
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

sub_201a6e:
	tst.b ($f63a).w
	bne.s loc_201ace
	cmpi.b #$6,($d024).w
	bcc.s loc_201a80
	bsr.w sub_201ae8
loc_201a80:
	move.b #$0,($f64e).w
	moveq #$0,d0
	addq.b #$2,($ff1955).l
	move.b ($ff1955).l,d0
	jsr (sub_200700).l
	lsr.w #$6,d0
	ext.w d0
	add.w ($f648).w,d0
	move.w d0,($f646).w
	move.w ($f646).w,d0
	sub.w ($f704).w,d0
	bcc.s loc_201ac0
	tst.w d0
	bpl.s loc_201ac0
	move.b #$df,($f625).w
	move.b #$1,($f64e).w
loc_201ac0:
	cmpi.w #$df,d0
	bcs.s loc_201aca
	move.w #$df,d0
loc_201aca:
	move.b d0,($f625).w
loc_201ace:
	rts
dat_201ad0:
	.incbin 6864, 24

sub_201ae8:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_201b14(pc,d0.w),d0
	jsr dat_201b14(pc,d0.w)
	moveq #$0,d1
	move.b ($f64c).w,d1
	move.w ($f64a).w,d0
	sub.w ($f648).w,d0
	beq.s loc_201b12
	bcc.s loc_201b0e
	neg.w d1
loc_201b0e:
	add.w d1,($f648).w
loc_201b12:
	rts
dat_201b14:
	dc.b $00,$06,$00,$56,$00,$fa
	move.w ($d008).w,d2
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201b30
	rts
loc_201b30:
	cmpi.b #$1,d0
	bne.s loc_201b46
	move.w #$280,d1
	cmpi.w #$5e0,d2
	bcs.s loc_201b64
	move.w #$260,d1
	bra.s loc_201b64
loc_201b46:
	move.w #$1d0,d1
	cmpi.w #$920,d2
	bcs.s loc_201b64
	move.w #$110,d1
	cmpi.w #$1980,d2
	bcs.s loc_201b64
	move.w #$240,d1
	move.b #$3,($f64c).w
loc_201b64:
	move.w d1,($f64a).w
	rts
	move.w ($d008).w,d2
	move.w ($f704).w,d1
	addi.w #$e8,d1
	cmpi.w #$200,d2
	bcs.s loc_201b92
	cmpi.w #$600,($d00c).w
	bcs.s loc_201b98
	cmpi.w #$6c0,($d00c).w
	bcc.s loc_201b98
	cmpi.w #$2a0,d2
	bcc.s loc_201b98
loc_201b92:
	move.w d1,($f648).w
	bra.s loc_201c08
loc_201b98:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201bae
	move.w #$5b0,d1
	bra.s loc_201b92
loc_201bae:
	cmpi.b #$1,d0
	bne.s loc_201be6
	move.w #$530,d1
	cmpi.w #$c00,d2
	bcs.s loc_201c08
	move.w #$780,d1
	cmpi.w #$dc0,d2
	bcs.s loc_201c08
	move.w #$500,d1
	cmpi.w #$1380,d2
	bcc.s loc_201c08
	cmpi.w #$400,($d00c).w
	bcc.s loc_201be4
	move.w #$3c0,d1
	cmpi.w #$1100,d2
	bcc.s loc_201c08
loc_201be4:
	rts
loc_201be6:
	move.w #$510,d1
	cmpi.w #$400,d2
	bcs.s loc_201c08
	move.w #$390,d1
	cmpi.w #$1600,d2
	bcs.s loc_201c08
	move.w #$410,d1
	cmpi.w #$1900,d2
	bcs.s loc_201c08
	move.w #$500,d1
loc_201c08:
	move.w d1,($f64a).w
	rts
	move.w ($d008).w,d2
	move.w ($f704).w,d1
	addi.w #$e8,d1
	cmpi.w #$7c0,d2
	bcc.s loc_201c26
	move.w d1,($f648).w
	bra.s loc_201c3a
loc_201c26:
	move.w #$490,d1
	cmpi.w #$af0,d2
	bcs.s loc_201c3a
	move.b #$2,($f64c).w
	move.w #$5c0,d1
loc_201c3a:
	move.w d1,($f64a).w
	rts

sub_201c40:
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_201d60
	btst.b #$0,$2c(a1)
	bne.w loc_201d60
	tst.b (a1)
	beq.w loc_201d60
	tst.w ($ff1906).l
	bne.w loc_201d60
	moveq #$0,d0
	move.b ($ff1507).l,d0
	cmpi.b #$2,d0
	bcc.w loc_201d60
	lea (dat_20bd16).l,a2
loc_201c7e:
	move.w $8(a1),d0
	cmp.w (a2),d0
	bcs.w loc_201d46
	cmp.w $4(a2),d0
	bcc.w loc_201d46
	move.w $c(a1),d2
	cmp.w $2(a2),d2
	bcs.w loc_201d46
	cmp.w $6(a2),d2
	bcc.w loc_201d46
	move.b ($ff190d).l,d0
	andi.b #$3f,d0
	bne.s loc_201cb4
	move.w #$d0,d0
loc_201cb4:
	lea ($f7e0).w,a3
	moveq #$0,d0
	move.b $d(a2),d0
	cmpi.b #$1,$c(a2)
	bne.s loc_201cd0
	btst.b #$6,$0(a3,d0.w)
	beq.w loc_201d60
loc_201cd0:
	cmpi.b #$4,$24(a1)
	bcc.w loc_201d5c
	move.b #$1,($f7c7).w
	clr.b $3c(a1)
	move.w $8(a2),$10(a1)
	move.w $a(a2),$12(a1)
	move.b #$f,$1c(a1)
	bset.b #$1,$22(a1)
	cmpi.b #$2,$c(a2)
	bne.s loc_201d14
	btst.b #$5,$0(a3,d0.w)
	beq.s loc_201d14
	neg.w $10(a1)
	neg.w $12(a1)
loc_201d14:
	btst.b #$0,($f602).w
	beq.s loc_201d20
	subq.w #$1,$c(a1)
loc_201d20:
	btst.b #$1,($f602).w
	beq.s loc_201d2c
	addq.w #$1,$c(a1)
loc_201d2c:
	btst.b #$2,($f602).w
	beq.s loc_201d38
	subq.w #$1,$8(a1)
loc_201d38:
	btst.b #$3,($f602).w
	beq.s loc_201d44
	addq.w #$1,$8(a1)
loc_201d44:
	rts
loc_201d46:
	adda.w #$e,a2
	tst.b (a2)
	bpl.w loc_201c7e
	tst.b ($f7c7).w
	beq.s loc_201d60
	move.b #$0,$1c(a1)
loc_201d5c:
	clr.b ($f7c7).w
loc_201d60:
	rts
	dc.b $4e,$75

sub_201d64:
	move.w #$ab,d0
	jsr (sub_202598).l
	bset.b #$7,($f63a).w
	bne.s loc_201da8
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201d8e
loc_201d84:
	move.w #$d5,d0
	jmp (sub_205cc0).l
loc_201d8e:
	tst.b ($ff151f).l
	bne.s loc_201d84
	tst.b ($ff1520).l
	bne.s loc_201d84
	move.w #$90,d0
	jmp (sub_205cc0).l
loc_201da8:
	rts

sub_201daa:
	bclr.b #$7,($f63a).w
	beq.s loc_201de4
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201dca
loc_201dc0:
	move.w #$d6,d0
	jmp (sub_205cc0).l
loc_201dca:
	tst.b ($ff151f).l
	bne.s loc_201dc0
	tst.b ($ff1520).l
	bne.s loc_201dc0
	move.w #$91,d0
	jmp (sub_205cc0).l
loc_201de4:
	rts
loc_201de6:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201e6c
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201e22
	move.w #$700,d0
loc_201e1e:
	dbf d0,loc_201e1e
loc_201e22:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201e52(pc,d0.w),d0
	jsr dat_201e52(pc,d0.w)
loc_201e38:
	tst.b ($f63a).w
	bne.s loc_201e46
	bsr.w sub_202370
	bsr.w sub_20235e
loc_201e46:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201e52:
	.incbin 7762, 26
loc_201e6c:
	tst.b ($ff1957).l
	beq.s loc_201e38
	cmpi.b #$2,($ff1506).l
	bne.w loc_201e38
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201e98
	move.w #$700,d0
loc_201e94:
	dbf d0,loc_201e94
loc_201e98:
	move.w #$1,($f6fc).w
	jsr (sub_202530).l
	jsr (sub_201a6e).l
	tst.b ($f64e).w
	bne.s loc_201ed6
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201efa
loc_201ed6:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201efa:
	move.w ($f624).w,(a5)
	jsr (sub_20254c).l
	bra.w loc_201e38
	.incbin 7944, 60
	jsr (sub_2025bc).l
	jsr (sub_202530).l
	bsr.w sub_2023cc
	jsr (sub_201a6e).l
	tst.b ($f64e).w
	bne.s loc_201f86
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201faa
loc_201f86:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201faa:
	move.w ($f624).w,(a5)
	move.w #$1,($f6fc).w
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
	bsr.w sub_205be2
	tst.b ($f767).w
	beq.s loc_202034
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202034:
	tst.w ($ff190e).l
	bne.s loc_202042
	jsr (sub_20fda6).l
loc_202042:
	jsr (sub_20254c).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	cmpi.b #$60,($f625).w
	bcc.s sub_202078
	move.b #$1,($f64f).w
	addq.l #$4,a7
	bra.w loc_201e38

sub_202078:
	bsr.w sub_20324e
	bsr.w sub_202840
	jmp (loc_20a218).l
	dc.b $4e,$75
	jsr (sub_202530).l
	bsr.w sub_2023cc
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
	jsr (sub_20254c).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20324e
	bra.w loc_202824
	.incbin 8488, 16
	bsr.w sub_202224
	cmpi.b #$1,($ff1903).l
	bne.s loc_20215a
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_20215a:
	move.w ($f624).w,(a5)
	bra.w loc_202824
	dc.b $4e,$b9,$00,$20,$25,$30,$61,$00
	dc.b $02,$62
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
	jsr (sub_20254c).l
	lea ($d000).w,a0
	bsr.w sub_205be2
	tst.b ($f767).w
	beq.s loc_202216
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202216:
	tst.w ($f614).w
	beq.w loc_202222
	subq.w #$1,($f614).w
loc_202222:
	rts

sub_202224:
	jsr (sub_202530).l
	bsr.w sub_2023cc
	tst.b ($f64e).w
	bne.s loc_20225a
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20227e
loc_20225a:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20227e:
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
	jmp (sub_20254c).l
loc_2022cc:
	move.w #$2700,sr
	tst.w ($f6fc).w
	beq.s loc_20234a
	move.w #$0,($f6fc).w
	cmpi.b #$df,($f625).w
	beq.s loc_20234a
	movem.l a0-a1,-(a7)
	lea ($c00000).l,a1
	lea ($fa80).w,a0
	move.l #$c0000000,$4(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.l (a0)+,(a1)
	move.w #$8adf,$4(a1)
	movem.l (a7)+,a0-a1
	tst.b ($f64f).w
	bne.s loc_20234c
loc_20234a:
	rte
loc_20234c:
	clr.b ($f64f).w
	movem.l d0-d7/a0-a6,-(a7)
	bsr.w sub_202078
	movem.l (a7)+,d0-d7/a0-a6
	rte

sub_20235e:
	tst.b ($d02a).w
	bne.s loc_20236e
	tst.w ($f786).w
	beq.s loc_20236e
	addq.w #$1,($f786).w
loc_20236e:
	rts

sub_202370:
	tst.w ($f780).w
	beq.s loc_20237a
	addq.w #$1,($f780).w
loc_20237a:
	tst.w ($f782).w
	beq.s loc_202384
	addq.w #$1,($f782).w
loc_202384:
	rts

sub_202386:
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_202394
	move.l #$2a6d365a,d1
loc_202394:
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

sub_2023b0:
	bsr.w sub_202530
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_20254c

sub_2023cc:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2023da
	addq.w #$2,a1

sub_2023da:
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

sub_202408:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202484).l,a2
	moveq #$12,d7
loc_20241c:
	move.w (a2)+,(a0)
	dbf d7,loc_20241c
	move.w (dat_202486).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202442:
	move.w d0,(a1)
	dbf d7,loc_202442
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202474:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202474
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202484:
	dc.b $80,$04
dat_202486:
	.incbin 9350, 36

sub_2024aa:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2024cc:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2024cc
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2024fa:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2024fa
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202518:
	move.l d0,(a1)+
	dbf d1,loc_202518
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202528:
	move.l d0,(a1)+
	dbf d1,loc_202528
	rts

sub_202530:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202540:
	btst.b #$0,($a11100).l
	bne.s loc_202540
	rts

sub_20254c:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9562, 60

sub_202596:
	rts

sub_202598:
	tst.b ($f00a).w
	bne.s loc_2025a4
	move.b d0,($f00a).w
	rts
loc_2025a4:
	tst.b ($f00b).w
	bne.s loc_2025b0
	move.b d0,($f00b).w
	rts
loc_2025b0:
	tst.b ($f00c).w
	bne.s loc_2025ba
	move.b d0,($f00c).w
loc_2025ba:
	rts

sub_2025bc:
	jsr (sub_202530).l
	tst.b ($f00a).w
	beq.s loc_2025d6
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2025d6:
	tst.b ($f00b).w
	beq.s loc_2025ea
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2025ea:
	tst.b ($f00c).w
	beq.s loc_2025fe
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2025fe:
	bra.w sub_20254c
	.incbin 9730, 32

sub_202622:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2026e4).l,a3
	lea ($c00000).l,a4
	bra.s loc_20263e

sub_202634:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2026fa).l,a3
loc_20263e:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_20264c
	adda.w #$a,a3
loc_20264c:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202710
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20266c
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20266c:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2026b8
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202694
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202694:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2026a2:
	lsr.w #$4,d0
loc_2026a4:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2026b2
	jmp (a3)

sub_2026ae:
	moveq #$0,d4
	moveq #$8,d3
loc_2026b2:
	dbf d0,loc_2026a4
	bra.s sub_20266c
loc_2026b8:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2026c6
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2026c6:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2026a2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2026a2
loc_2026e4:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2026ae
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2026ae
	rts
dat_2026fa:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2026ae
	rts

sub_202710:
	move.b (a0)+,d0
loc_202712:
	cmpi.b #$ff,d0
	bne.s loc_20271a
	rts
loc_20271a:
	move.w d0,d7
loc_20271c:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202712
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
	bne.s loc_20274a
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20271c
loc_20274a:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202756:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202756
	bra.s loc_20271c

sub_202762:
	movem.l a1-a2,-(a7)
	lea (dat_20fdbc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20277a:
	tst.l (a2)
	beq.s loc_202782
	addq.w #$6,a2
	bra.s loc_20277a
loc_202782:
	move.w (a1)+,d0
	bmi.s loc_20278e
loc_202786:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202786
loc_20278e:
	movem.l (a7)+,a1-a2
	rts
	.incbin 10132, 44

sub_2027c0:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2027c6:
	clr.l (a2)+
	dbf d0,loc_2027c6
	rts

sub_2027ce:
	tst.l ($f680).w
	beq.s loc_202822
	tst.w ($f6f8).w
	bne.s loc_202822
	movea.l ($f680).w,a0
	lea (loc_2026e4).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2027f0
	adda.w #$a,a3
loc_2027f0:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202710
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
loc_202822:
	rts
loc_202824:
	tst.w ($f6f8).w
	beq.w loc_2028c2
loc_20282c:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20285e

sub_202840:
	tst.w ($f6f8).w
	beq.s loc_2028c2
	tst.b ($f744).w
	bne.s loc_20282c
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20285e:
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
loc_202892:
	movea.w #$8,a5
	bsr.w sub_2026ae
	subq.w #$1,($f6f8).w
	beq.s loc_2028c4
	subq.w #$1,($f6fa).w
	bne.s loc_202892
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2028c2:
	rts
loc_2028c4:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2028ca:
	move.l $6(a0),(a0)+
	dbf d0,loc_2028ca
	rts

sub_2028d4:
	lea (dat_20fdbc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2028e6:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202622
	dbf d1,loc_2028e6
	rts
	.incbin 10502, 560

sub_202b36:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202b92).l,a0
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
	bra.w loc_202bbe
dat_202b92:
	dc.b $00,$04,$00,$00,$1c,$97,$00,$00
	dc.b $08,$00,$00,$60
dat_202b9e:
	.incbin 11166, 32
loc_202bbe:
	tst.b ($ff1522).l
	beq.s loc_202bda
	jsr (sub_206b88).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bra.s loc_202c16
loc_202bda:
	lea (dat_202c52).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202bfc
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202b9e).l,a1
	adda.w d0,a1
	bra.s loc_202c06
loc_202bfc:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202c06:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202c16:
	subi.w #$a0,d1
	bcc.s loc_202c1e
	moveq #$0,d1
loc_202c1e:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202c28
	move.w d2,d1
loc_202c28:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202c34
	moveq #$0,d0
loc_202c34:
	cmp.w ($f72e).w,d0
	blt.s loc_202c3e
	move.w ($f72e).w,d0
loc_202c3e:
	move.w d0,($f704).w
	bsr.w sub_202c5a
	lea (dat_202c56).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202c52:
	dc.b $00,$50,$04,$ec
dat_202c56:
	dc.b $7f,$7f,$7f,$7f

sub_202c5a:
	move.w ($f704).w,d0
	lsr.w #$1,d0
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
	rts

sub_202c92:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202c9e
	rts
loc_202c9e:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202ec4
	bsr.w sub_202f64
	bsr.w sub_20365a
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$2,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	move.w ($f73c).w,d5
	ext.l d5
	asl.l #$7,d5
	bsr.w sub_2030b6
	move.w ($f70c).w,($f618).w
	move.w ($f70c).w,($f714).w
	move.w ($f70c).w,($f71c).w
	move.b ($f75a).w,d0
	or.b ($f758).w,d0
	or.b d0,($f756).w
	clr.b ($f75a).w
	clr.b ($f758).w
	lea ($a800).w,a2
	move.w ($f708).w,d0
	neg.w d0
	move.w #$bf,d6
loc_202d1a:
	move.w d0,(a1)+
	dbf d6,loc_202d1a
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f700).w,d0
	neg.w d0
	move.w d0,d5
	swap d0
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	lea $0(a2,d0.w),a2
	bra.w loc_202d46
loc_202d46:
	lea (dat_202dc4).l,a3
	lea (dat_23fa02).l,a4
	move.b ($f7d8).w,d3
	move.b d3,d4
	addi.w #$80,($f7d8).w
	add.w ($f70c).w,d3
	andi.w #$ff,d3
	add.w ($f704).w,d4
	andi.w #$ff,d4
	move.w #$e7,d6
	andi.w #$7,d2
	move.w (a2)+,d0
	move.w ($f704).w,d1
loc_202d7c:
	cmp.w ($f646).w,d1
	bge.s loc_202d9c
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202d96
	moveq #$0,d2
	move.w (a2)+,d0
loc_202d96:
	dbf d6,loc_202d7c
	rts
loc_202d9c:
	move.w #$0,d1
	add.w d5,d1
	move.w d1,(a1)+
	move.b $0(a4,d3.w),d1
	ext.w d1
	add.w d0,d1
	move.w d1,(a1)+
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202dbe
	moveq #$0,d2
	move.w (a2)+,d0
loc_202dbe:
	dbf d6,loc_202d9c
	rts
dat_202dc4:
	.incbin 11716, 256

sub_202ec4:
	move.w ($f700).w,d4
	bsr.s sub_202ef8
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202ef6
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202ef0
	bset.b #$2,($f754).w
	rts
loc_202ef0:
	bset.b #$3,($f754).w
loc_202ef6:
	rts

sub_202ef8:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202f0a
	bcs.s loc_202f3a
	bra.s loc_202f10
loc_202f0a:
	clr.w ($f73a).w
	rts
loc_202f10:
	cmpi.w #$10,d0
	blt.s loc_202f1a
	move.w #$10,d0
loc_202f1a:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202f28
	move.w ($f72a).w,d0
loc_202f28:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202f3a:
	cmpi.w #$fff0,d0
	bge.s loc_202f44
	move.w #$fff0,d0
loc_202f44:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202f28
	move.w ($f728).w,d0
	bra.s loc_202f28
	.incbin 12116, 16

sub_202f64:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202f78
	subq.w #$5,d0
loc_202f78:
	btst.b #$1,$22(a6)
	beq.s loc_202f98
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202fe4
	subi.w #$40,d0
	bcc.s loc_202fe4
	tst.b ($f75c).w
	bne.s loc_202ff6
	bra.s loc_202fa4
loc_202f98:
	sub.w ($f73e).w,d0
	bne.s loc_202faa
	tst.b ($f75c).w
	bne.s loc_202ff6
loc_202fa4:
	clr.w ($f73c).w
	rts
loc_202faa:
	cmpi.w #$60,($f73e).w
	bne.s loc_202fd2
	move.w $14(a6),d1
	bpl.s loc_202fba
	neg.w d1
loc_202fba:
	cmpi.w #$800,d1
	bcc.s loc_202fe4
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_203044
	cmpi.w #$fffa,d0
	blt.s loc_20300e
	bra.s loc_202ffc
loc_202fd2:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_203044
	cmpi.w #$fffe,d0
	blt.s loc_20300e
	bra.s loc_202ffc
loc_202fe4:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_203044
	cmpi.w #$fff0,d0
	blt.s loc_20300e
	bra.s loc_202ffc
loc_202ff6:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202ffc:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_20304e
	bra.w loc_20301a
loc_20300e:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_20301a:
	cmp.w ($f72c).w,d1
	bgt.s loc_203072
	cmpi.w #$0,d1
	bgt.s loc_20303e
	addi.w #$800,d1
	addi.w #$800,$c(a6)
	addi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203072
loc_20303e:
	move.w ($f72c).w,d1
	bra.s loc_203072
loc_203044:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_20304e:
	cmp.w ($f72e).w,d1
	blt.s loc_203072
	subi.w #$800,d1
	bcs.s loc_20306e
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203072
loc_20306e:
	move.w ($f72e).w,d1
loc_203072:
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
	bne.s loc_2030b4
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_2030ae
	bset.b #$0,($f754).w
	rts
loc_2030ae:
	bset.b #$1,($f754).w
loc_2030b4:
	rts

sub_2030b6:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030ea
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030e4
	bset.b #$2,($f756).w
	bra.s loc_2030ea
loc_2030e4:
	bset.b #$3,($f756).w
loc_2030ea:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_20311e
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_203118
	bset.b #$0,($f756).w
	rts
loc_203118:
	bset.b #$1,($f756).w
loc_20311e:
	rts
	.incbin 12576, 302

sub_20324e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2032a6
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20330c
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20330e
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2

sub_2032a6:
	tst.b (a2)
	beq.s loc_20330a
	bclr.b #$0,(a2)
	beq.s loc_2032c0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20353a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203310
loc_2032c0:
	bclr.b #$1,(a2)
	beq.s loc_2032da
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20353a
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203310
loc_2032da:
	bclr.b #$2,(a2)
	beq.s loc_2032f0
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20353a
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203366
loc_2032f0:
	bclr.b #$3,(a2)
	beq.s loc_20330a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20353a
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203366
loc_20330a:
	rts

sub_20330c:
	rts

sub_20330e:
	rts

sub_203310:
	moveq #$15,d6

sub_203312:
	move.l #$800000,d7
	move.l d0,d1
loc_20331a:
	movem.l d4-d5,-(a7)
	bsr.w sub_203412
	move.l d1,d0
	bsr.w sub_203394
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20331a
	rts
	.incbin 13116, 42

sub_203366:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203370:
	movem.l d4-d5,-(a7)
	bsr.w sub_203412
	move.l d1,d0
	bsr.w sub_203394
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203370
	rts

sub_203394:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033d0
	btst.b #$3,(a0)
	bne.s loc_2033b0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2033b0:
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
loc_2033d0:
	btst.b #$3,(a0)
	bne.s loc_2033f2
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
loc_2033f2:
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

sub_203412:
	add.w (a3),d5
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
	beq.s loc_203462
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
loc_203462:
	rts
	.incbin 13412, 214

sub_20353a:
	add.w (a3),d5
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
	.incbin 13654, 28

sub_203572:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203598
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2

sub_203598:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20359c:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20353a
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_203312
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20359c
	rts

sub_2035c0:
	moveq #$0,d0
	lea (dat_20fdac).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202634
	movea.l (a2)+,a0
	bsr.w sub_20360c
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20047e
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_20360a
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20360a
	bsr.w sub_202762
loc_20360a:
	rts

sub_20360c:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203616:
	move.l d0,(a3)+
	dbf d1,loc_203616
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20362c
	lea ($a040).w,a3
	moveq #$2,d1

sub_20362c:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23bd32).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203646:
	move.w d1,d0
	movea.l a3,a0
loc_20364a:
	move.b (a1)+,(a0)+
	dbf d0,loc_20364a
	lea $80(a3),a3
	dbf d2,loc_203646
	rts

sub_20365a:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036d4(pc,d0.w),d0
	jsr dat_2036d4(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203680
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203680:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2036ae
	bcc.s loc_2036b0
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2036a4
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2036a4:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2036ae:
	rts
loc_2036b0:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036c8
	btst.b #$1,($d022).w
	beq.s loc_2036c8
	add.w d1,d1
	add.w d1,d1
loc_2036c8:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036d4:
	.incbin 14036, 460
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2038b2(pc,d0.w),d0
	jmp dat_2038b2(pc,d0.w)
dat_2038b2:
	dc.b $00,$06,$00,$0e,$00,$40,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	cmpi.b #$2b,($d01c).w
	beq.s loc_2038e4
	cmpi.b #$6,($d024).w
	bcc.s loc_2038e4
	move.w #$800,($f72e).w
	move.w #$800,($f726).w
	cmpi.w #$200,($f700).w
	bcs.s loc_2038f0
loc_2038e4:
	move.w #$710,($f72e).w
	move.w #$710,($f726).w
loc_2038f0:
	rts
	move.w #$af8,d0
	move.w #$4c0,d1
	bsr.w sub_203980
	bne.s loc_203906
	tst.b ($f7a7).w
	bne.s loc_203908
loc_203906:
	rts
loc_203908:
	move.w #$4f0,($f72e).w
	move.w #$4f0,($f726).w
	rts
	.incbin 14614, 106

sub_203980:
	cmp.w ($d008).w,d0
	ble.s loc_20398a
	moveq #$0,d0
	rts
loc_20398a:
	move.w d1,($f726).w
	sub.w ($f72e).w,d1
	bpl.s loc_203996
	neg.w d1
loc_203996:
	cmpi.w #$4,d1
	bge.s loc_2039a2
	move.w ($f726).w,($f72e).w
loc_2039a2:
	move.w ($d008).w,d0
	subi.w #$a0,d0
	cmp.w ($f728).w,d0
	blt.s loc_2039c2
	cmp.w ($f72a).w,d0
	ble.s loc_2039ba
	move.w ($f72a).w,d0
loc_2039ba:
	move.w d0,($f728).w
	move.w d0,($f720).w
loc_2039c2:
	moveq #$1,d0
	rts

sub_2039c6:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039ce:
	move.b (a0),d0
	beq.s loc_2039e4
	add.w d0,d0
	add.w d0,d0
	lea (dat_203de8).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039e4:
	lea $40(a0),a0
	dbf d7,loc_2039ce
	rts

sub_2039ee:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a2c
	bpl.s loc_203a1e
	btst.b #$1,$2c(a0)
	beq.s loc_203a1e
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a2c
loc_203a1e:
	btst.b #$2,$2c(a0)
	bne.s loc_203a2c
	addi.w #$38,$12(a0)
loc_203a2c:
	tst.w $12(a0)
	bmi.s loc_203a40
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a40
	move.w #$1000,$12(a0)
loc_203a40:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a50:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a8c
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a8c
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a8a
	neg.w d1
loc_203a8a:
	add.w d1,d0
loc_203a8c:
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

sub_203aa6:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b16
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b32
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b32
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203af0
	cmpi.w #$800,d3
	bcs.s loc_203b02
	subi.w #$800,d3
	bra.s loc_203b02
loc_203af0:
	cmpi.w #$700,($f704).w
	bcs.s loc_203b02
	cmpi.w #$100,d3
	bcc.s loc_203b02
	addi.w #$800,d3
loc_203b02:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b32
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b32
loc_203b16:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b32
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b32:
	rts
	.incbin 15156, 30

sub_203b52:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b58:
	move.l d1,(a1)+
	dbf d0,loc_203b58
	rts
dat_203b60:
	.incbin 15200, 16

sub_203b70:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b7c:
	tst.w (a4)
	beq.w loc_203c3c
	moveq #$2,d6
loc_203b84:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c34
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bea
	movea.l dat_203b60(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203bce
	cmpi.w #$800,d2
	bcs.s loc_203be0
	subi.w #$800,d2
	bra.s loc_203be0
loc_203bce:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203be0
	cmpi.w #$100,d2
	bcc.s loc_203be0
	addi.w #$800,d2
loc_203be0:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203c0c
loc_203bea:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203c0c
	.incbin 15348, 24
loc_203c0c:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c2a
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c2e
loc_203c2a:
	bsr.w sub_203c5e
loc_203c2e:
	bset.b #$7,$1(a0)
loc_203c34:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b84
loc_203c3c:
	lea $80(a4),a4
	dbf d7,loc_203b7c
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c56
	move.l #$0,(a2)
	rts
loc_203c56:
	move.b #$0,-$5(a2)
	rts

sub_203c5e:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203ca4
	btst.l #$1,d4
	bne.w loc_203cf2
loc_203c70:
	cmpi.b #$50,d5
	beq.s loc_203ca2
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
	bne.s loc_203c9c
	addq.w #$1,d0
loc_203c9c:
	move.w d0,(a2)+
	dbf d1,loc_203c70
loc_203ca2:
	rts
loc_203ca4:
	btst.l #$1,d4
	bne.w loc_203d38
loc_203cac:
	cmpi.b #$50,d5
	beq.s loc_203cf0
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
	bne.s loc_203cea
	addq.w #$1,d0
loc_203cea:
	move.w d0,(a2)+
	dbf d1,loc_203cac
loc_203cf0:
	rts
loc_203cf2:
	cmpi.b #$50,d5
	beq.s loc_203d36
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
	bne.s loc_203d30
	addq.w #$1,d0
loc_203d30:
	move.w d0,(a2)+
	dbf d1,loc_203cf2
loc_203d36:
	rts
loc_203d38:
	cmpi.b #$50,d5
	beq.s loc_203d8a
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
	bne.s loc_203d84
	addq.w #$1,d0
loc_203d84:
	move.w d0,(a2)+
	dbf d1,loc_203d38
loc_203d8a:
	rts
	.incbin 15756, 92
dat_203de8:
	.incbin 15848, 326

sub_203f2e:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f40
	move.w #$0,(a1)
	rts
loc_203f40:
	tst.w (a1)
	bne.s loc_203f4a
	move.b #$1,$1(a1)
loc_203f4a:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f94
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f86
	neg.w $10(a0)
loc_203f86:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205cc0
loc_203f94:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203fb2
	cmpa.w #$d040,a0
	beq.s loc_203fb2
	tst.b ($ff1906).l
	beq.s loc_203fb2
	jmp (loc_2074ae).l
loc_203fb2:
	move.b $2a(a0),d0
	beq.s loc_203fdc
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203fce
	cmpi.b #$2d,d0
	bcs.s loc_203fd8
	move.b #$2d,d0
	bra.s loc_203fd8
loc_203fce:
	cmpi.b #$1e,d0
	bcs.s loc_203fd8
	move.b #$1e,d0
loc_203fd8:
	move.b d0,$2a(a0)
loc_203fdc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203fea(pc,d0.w),d1
	jmp dat_203fea(pc,d1.w)
dat_203fea:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203ff4:
	tst.b ($d300).w
	bne.s loc_204032
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_204032:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_20405a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_20405a:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_20408e:
	tst.b ($ff1506).l
	bne.s loc_2040f4
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2040f4
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2040f8
	cmpi.b #$2f,d1
	bne.s loc_2040f6
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2040f4
	tst.b $2c(a0)
	beq.s loc_2040f4
	jsr (sub_20786e).l
	bne.s loc_2040f4
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2040ec
	moveq #$0,d0
loc_2040ec:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2040f4:
	rts
loc_2040f6:
	rts

sub_2040f8:
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

sub_20411e:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_20412a
	neg.w d0
loc_20412a:
	btst.b #$1,$2c(a0)
	beq.s loc_20413a
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204162
loc_20413a:
	cmpi.w #$600,d0
	bcs.s loc_204162
	tst.w $14(a0)
	bpl.s loc_204154
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204170
	move.w #$e0,d1
	bra.s loc_204170
loc_204154:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204170
	move.w #$60,d1
	bra.s loc_204170
loc_204162:
	cmpi.w #$a0,d1
	beq.s loc_204170
	bcc.s loc_20416e
	addq.w #$2,d1
	bra.s loc_204170
loc_20416e:
	subq.w #$2,d1
loc_204170:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_20411e
	bsr.w sub_20408e
	tst.w ($ff1588).l
	beq.s loc_204196
	btst.b #$4,($f605).w
	beq.s loc_204196
	move.b #$1,($ff1906).l
	rts
loc_204196:
	tst.b ($f7cc).w
	bne.s loc_2041a2
	move.w ($f604).w,($f602).w
loc_2041a2:
	btst.b #$0,$2c(a0)
	beq.s loc_2041c6
	cmpi.b #$6,($ff1506).l
	bne.s loc_2041c0
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2041de
loc_2041c0:
	bsr.w sub_2044a8
	bra.s loc_2041de
loc_2041c6:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204224(pc,d0.w),d1
	jsr dat_204224(pc,d1.w)
	jsr (sub_206ab4).l
loc_2041de:
	bsr.s sub_204232
	bsr.w sub_2042f2
	bsr.w sub_20430c
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204206
	tst.b $1c(a0)
	bne.s loc_204206
	move.b $1d(a0),$1c(a0)
loc_204206:
	bsr.w sub_2056b0
	tst.b $2c(a0)
	bmi.s loc_20421e
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20421e
	jsr (sub_207058).l
loc_20421e:
	bsr.w sub_205566
	rts
dat_204224:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204232:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204256
	move.w $30(a0),d0
	beq.s loc_204248
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204256
loc_204248:
	btst.b #$6,$2c(a0)
	bne.s loc_204256
	jsr (sub_203aa6).l
loc_204256:
	tst.b ($ff151f).l
	beq.s loc_20429a
	tst.w $32(a0)
	beq.s loc_20429a
	subq.w #$1,$32(a0)
	bne.s loc_20429a
	tst.b ($ff1520).l
	bne.s loc_204292
	tst.b ($ff1958).l
	bne.s loc_204292
	tst.b ($ff152e).l
	bne.s loc_20428c
	move.w #$e,d0
	jsr (sub_205cc0).l
loc_20428c:
	jsr (sub_2019ba).l
loc_204292:
	move.b #$0,($ff151f).l
loc_20429a:
	tst.b ($ff1520).l
	beq.s loc_2042f0
	tst.w $34(a0)
	beq.s loc_2042f0
	subq.w #$1,$34(a0)
	bne.s loc_2042f0
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042e8
	tst.b ($ff1958).l
	bne.s loc_2042e8
	tst.b ($ff152e).l
	bne.s loc_2042e2
	move.w #$e,d0
	jsr (sub_205cc0).l
loc_2042e2:
	jsr (sub_2019ba).l
loc_2042e8:
	move.b #$0,($ff1520).l
loc_2042f0:
	rts

sub_2042f2:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_20430c:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204318
loc_204316:
	rts
loc_204318:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20432a
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204316
loc_20432a:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20436e
	bset.b #$6,$22(a0)
	bne.s loc_204316
	bsr.w sub_206140
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204316
	bra.s loc_2043a6
loc_20436e:
	tst.w $12(a0)
	beq.s loc_204376
	bpl.s loc_204316
loc_204376:
	bclr.b #$6,$22(a0)
	beq.s loc_204316
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204316
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2043a6
	move.w #$f000,$12(a0)
loc_2043a6:
	jsr (sub_20786e).l
	bne.s loc_2043ba
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2043ba:
	rts

sub_2043bc:
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
	bcs.s loc_204496
	move.l #$50000,d0
loc_204496:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2044a8:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044ce
	tst.b ($ff152e).l
	beq.s loc_2044c4
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044ce
loc_2044c4:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20457e
loc_2044ce:
	tst.b $2a(a0)
	bne.w loc_20458c
	tst.b ($f784).w
	beq.w loc_20458c
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044ec
	neg.w d0
loc_2044ec:
	tst.w ($f786).w
	bne.s loc_2044f8
	move.w #$1,($f786).w
loc_2044f8:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20450e
	move.b #$1,($ff1502).l
	bra.w loc_205cbc
loc_20450e:
	cmpi.w #$d2,d1
	bcs.s loc_204562
	cmpi.b #$2,($ff1522).l
	beq.s loc_204560
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204538
	move.w #$82,d0
	jsr (sub_205cc0).l
	moveq #$0,d0
loc_204538:
	add.b ($f784).w,d0
	bpl.s loc_204542
	moveq #$0,d0
	bra.s loc_20454a
loc_204542:
	cmpi.b #$3,d0
	bcs.s loc_20454a
	moveq #$2,d0
loc_20454a:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043bc
	move.b #$2,($ff1522).l
loc_204560:
	rts
loc_204562:
	cmpi.w #$5a,d1
	bcc.s loc_20457a
	cmp.w d2,d0
	bcc.w loc_203ff4
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20457a:
	cmp.w d2,d0
	bcc.s loc_20458c
loc_20457e:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20458c:
	rts
	bsr.w sub_203f2e
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045be
	tst.b ($ff195b).l
	beq.s loc_2045ac
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045e8
	bra.s loc_2045b4
loc_2045ac:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045e8
loc_2045b4:
	bsr.w sub_204e50
	jmp (sub_2039ee).l
loc_2045be:
	bsr.w sub_204696
	bsr.w sub_2044a8
	bsr.w sub_204f3a
	bsr.w sub_205066
	bsr.w sub_20470a
	bsr.w sub_204ebc
	bsr.w sub_204e50
	jsr (sub_203a50).l
	bsr.w sub_200b00
	bsr.w sub_2050e4
loc_2045e8:
	rts
	tst.b ($f7c7).w
	bne.s loc_204604
	cmpi.b #$15,$1c(a0)
	beq.s loc_204604
	tst.w $12(a0)
	bmi.s loc_204604
	move.b #$0,$1c(a0)
loc_204604:
	bsr.w sub_204696
	bsr.w sub_2044a8
	bsr.w sub_205024
	bsr.w sub_204d70
	bsr.w sub_204e50
	jsr (sub_2039ee).l
	btst.b #$6,$22(a0)
	beq.s loc_20462c
	subi.w #$28,$12(a0)
loc_20462c:
	bsr.w sub_20512e
	bsr.w sub_205152
	rts
	bsr.w sub_204696
	bsr.w sub_2044a8
	bsr.w sub_204f3a
	bsr.w sub_2050a2
	bsr.w sub_204baa
	bsr.w sub_204e50
	tst.b $2a(a0)
	bne.s loc_20465a
	jsr (sub_203a50).l
loc_20465a:
	bsr.w sub_200b00
	bsr.w sub_2050e4
	rts
	bsr.w sub_204696
	bsr.w sub_2044a8
	bsr.w sub_205024
	bsr.w sub_204d70
	bsr.w sub_204e50
	jsr (sub_2039ee).l
	btst.b #$6,$22(a0)
	beq.s loc_20468c
	subi.w #$28,$12(a0)
loc_20468c:
	bsr.w sub_20512e
	bsr.w sub_205152
	rts

sub_204696:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204702
	tst.w ($ff1506).l
	bne.s loc_204702
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204704).l,a2
loc_2046ca:
	move.b (a2)+,d0
	bmi.s loc_2046da
	cmp.b d0,d1
	bne.s loc_2046ca
	bset.b #$1,$2c(a0)
	rts
loc_2046da:
	bclr.b #$1,$2c(a0)
	beq.s loc_204702
	tst.w $12(a0)
	bpl.s loc_204702
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204702
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204702
	neg.w $10(a0)
loc_204702:
	rts
dat_204704:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20470a:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a34
	tst.w $3e(a0)
	bne.w loc_2049e4
	btst.b #$2,($f602).w
	beq.s loc_204732
	bsr.w sub_204ac4
loc_204732:
	btst.b #$3,($f602).w
	beq.s loc_20473e
	bsr.w sub_204b3a
loc_20473e:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049e4
	tst.w $14(a0)
	beq.s loc_20475e
	tst.b $2a(a0)
	beq.w loc_2049e4
	bra.s loc_20476a
loc_20475e:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20476a:
	btst.b #$3,$22(a0)
	beq.s loc_2047bc
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204814
	cmpi.b #$1e,$0(a1)
	bne.s loc_20479c
	move.b #$0,$1c(a0)
	bra.w loc_2049e4
loc_20479c:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2047f8
	cmp.w d2,d1
	bge.s loc_2047e6
	bra.s loc_204814
loc_2047bc:
	jsr (sub_206dbc).l
	cmpi.w #$c,d1
	blt.s loc_204814
	move.w #$ab,d0
	jsr (sub_202598).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2047f0
loc_2047e6:
	btst.b #$0,$22(a0)
	bne.s loc_204800
	bra.s loc_20480a
loc_2047f0:
	cmpi.b #$3,$37(a0)
	bne.s loc_204814
loc_2047f8:
	btst.b #$0,$22(a0)
	bne.s loc_20480a
loc_204800:
	move.b #$32,$1c(a0)
	bra.w loc_2049e4
loc_20480a:
	move.b #$6,$1c(a0)
	bra.w loc_2049e4
loc_204814:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204828
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204828:
	btst.b #$7,($f788).w
	bne.w loc_20492c
	btst.b #$6,($f788).w
	bne.w loc_20494c
	btst.b #$1,($f602).w
	bne.w loc_20494c
	andi.b #$f,($f788).w
	beq.s loc_204860
	btst.b #$0,($f603).w
	beq.s loc_204874
	bset.b #$7,($f788).w
	bra.w loc_204a08
loc_204860:
	btst.b #$0,($f603).w
	beq.w loc_204874
	move.b #$1,($f788).w
	bra.w loc_204a08
loc_204874:
	btst.b #$0,($f602).w
	beq.s loc_2048f0
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048d2
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2048a4
	asr.w #$1,d2
	sub.w d2,d1
loc_2048a4:
	btst.b #$0,$22(a0)
	beq.s loc_2048b0
	neg.w d0
	neg.w d1
loc_2048b0:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048c6
	cmp.w d0,d1
	ble.s loc_2048cc
	bra.s loc_2048ca
loc_2048c6:
	cmp.w d1,d0
	ble.s loc_2048cc
loc_2048ca:
	move.w d1,d0
loc_2048cc:
	move.w d0,$14(a0)
	rts
loc_2048d2:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048ec
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202598).l
loc_2048ec:
	bra.w loc_204a08
loc_2048f0:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204910
	move.w #$ab,d0
	jsr (sub_202598).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20494c
loc_204910:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202598).l
	bra.w loc_2049e4
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20492c:
	btst.b #$0,($f602).w
	beq.s loc_20494c
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204a08
	addq.w #$2,($f73e).w
	bra.w loc_204a08
loc_20494c:
	btst.b #$6,($f788).w
	bne.w loc_2049c8
	andi.b #$f,($f788).w
	beq.s loc_204970
	btst.b #$1,($f603).w
	beq.s loc_204982
	bset.b #$6,($f788).w
	bra.w loc_204a08
loc_204970:
	btst.b #$1,($f603).w
	beq.s loc_204982
	move.b #$1,($f788).w
	bra.w loc_204a08
loc_204982:
	btst.b #$1,($f602).w
	beq.s loc_2049e4
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049c6
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049c6
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049b8
	neg.w $14(a0)
loc_2049b8:
	move.w #$9c,d0
	jsr (sub_202598).l
	bsr.w sub_204ee4
loc_2049c6:
	bra.s loc_204a08
loc_2049c8:
	btst.b #$1,($f602).w
	beq.s loc_2049e4
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204a08
	subq.w #$2,($f73e).w
	bra.s loc_204a08
loc_2049e4:
	cmpi.w #$60,($f73e).w
	bne.s loc_2049fe
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204a08
	move.b #$0,($f788).w
	bra.s loc_204a08
loc_2049fe:
	bcc.s loc_204a04
	addq.w #$4,($f73e).w
loc_204a04:
	subq.w #$2,($f73e).w
loc_204a08:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a34
	move.w $14(a0),d0
	beq.s loc_204a34
	bmi.s loc_204a28
	sub.w d5,d0
	bcc.s loc_204a22
	move.w #$0,d0
loc_204a22:
	move.w d0,$14(a0)
	bra.s loc_204a34
loc_204a28:
	add.w d5,d0
	bcc.s loc_204a30
	move.w #$0,d0
loc_204a30:
	move.w d0,$14(a0)
loc_204a34:
	move.b $26(a0),d0
	jsr (sub_200700).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a52:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204ac2
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204ac2
	bmi.s loc_204a6a
	neg.w d1
loc_204a6a:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c7c
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204ac2
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204abe
	cmpi.b #$40,d0
	beq.s loc_204aac
	cmpi.b #$80,d0
	beq.s loc_204aa6
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204aa6:
	sub.w d1,$12(a0)
	rts
loc_204aac:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204abe:
	add.w d1,$12(a0)
loc_204ac2:
	rts

sub_204ac4:
	tst.b $2a(a0)
	bne.s loc_204b38
	move.w $14(a0),d0
	beq.s loc_204ad2
	bpl.s loc_204b02
loc_204ad2:
	bset.b #$0,$22(a0)
	bne.s loc_204ae6
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204ae6:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204af6
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204af6
	move.w d1,d0
loc_204af6:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b02:
	sub.w d4,d0
	bcc.s loc_204b0a
	move.w #$ff80,d0
loc_204b0a:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b38
	cmpi.w #$400,d0
	blt.s loc_204b38
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202598).l
loc_204b38:
	rts

sub_204b3a:
	tst.b $2a(a0)
	bne.s loc_204ba8
	move.w $14(a0),d0
	bmi.s loc_204b72
	bclr.b #$0,$22(a0)
	beq.s loc_204b5a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b5a:
	cmp.w d6,d0
	bge.s loc_204b66
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b66
	move.w d6,d0
loc_204b66:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b72:
	add.w d4,d0
	bcc.s loc_204b7a
	move.w #$80,d0
loc_204b7a:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204ba8
	cmpi.w #$fc00,d0
	bgt.s loc_204ba8
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202598).l
loc_204ba8:
	rts

sub_204baa:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204cf4
	tst.w $3e(a0)
	bne.s loc_204be2
	btst.b #$2,($f602).w
	beq.s loc_204bd6
	bsr.w sub_204d2a
loc_204bd6:
	btst.b #$3,($f602).w
	beq.s loc_204be2
	bsr.w sub_204d4e
loc_204be2:
	tst.b $2a(a0)
	beq.w loc_204c8c
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204c02
	asr.w #$1,d2
	sub.w d2,d1
loc_204c02:
	btst.b #$0,$22(a0)
	beq.s loc_204c0e
	neg.w d0
	neg.w d1
loc_204c0e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204c24
	cmp.w d0,d1
	ble.s loc_204c2a
	bra.s loc_204c28
loc_204c24:
	cmp.w d1,d0
	ble.s loc_204c2a
loc_204c28:
	move.w d1,d0
loc_204c2a:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c5e
	rts
loc_204c38:
	move.w #$ab,d0
	jsr (sub_202598).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204cbe
loc_204c5e:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c38
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202598).l
	btst.b #$0,$22(a0)
	bne.s loc_204c84
	bsr.w sub_204d4e
	bra.s loc_204c8c
loc_204c84:
	bsr.w sub_204d2a
	bra.s loc_204c8c
	dc.b $4e,$75
loc_204c8c:
	move.w $14(a0),d0
	beq.s loc_204cae
	bmi.s loc_204ca2
	sub.w d5,d0
	bcc.s loc_204c9c
	move.w #$0,d0
loc_204c9c:
	move.w d0,$14(a0)
	bra.s loc_204cae
loc_204ca2:
	add.w d5,d0
	bcc.s loc_204caa
	move.w #$0,d0
loc_204caa:
	move.w d0,$14(a0)
loc_204cae:
	tst.w $14(a0)
	bne.s loc_204cf4
	move.w #$ab,d0
	jsr (sub_202598).l
loc_204cbe:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cde
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204cee
loc_204cde:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204cee:
	move.b #$5,$1c(a0)
loc_204cf4:
	move.b $26(a0),d0
	jsr (sub_200700).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d18
	move.w #$1000,d1
loc_204d18:
	cmpi.w #$f000,d1
	bge.s loc_204d22
	move.w #$f000,d1
loc_204d22:
	move.w d1,$10(a0)
	bra.w loc_204a52

sub_204d2a:
	move.w $14(a0),d0
	beq.s loc_204d32
	bpl.s loc_204d40
loc_204d32:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d40:
	sub.w d4,d0
	bcc.s loc_204d48
	move.w #$ff80,d0
loc_204d48:
	move.w d0,$14(a0)
	rts

sub_204d4e:
	move.w $14(a0),d0
	bmi.s loc_204d62
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d62:
	add.w d4,d0
	bcc.s loc_204d6a
	move.w #$80,d0
loc_204d6a:
	move.w d0,$14(a0)
	rts

sub_204d70:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204daa
	tst.w ($ff1506).l
	bne.s loc_204daa
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204da2
	cmpi.w #$840,$8(a0)
	bcc.s loc_204da2
	rts
loc_204da2:
	btst.b #$1,$2c(a0)
	bne.s loc_204dda
loc_204daa:
	btst.b #$2,($f602).w
	beq.s loc_204dc4
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204dc4
	move.w d1,d0
loc_204dc4:
	btst.b #$3,($f602).w
	beq.s loc_204dda
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204dda
	move.w d6,d0
loc_204dda:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204df0
	bcc.s loc_204dec
	addq.w #$4,($f73e).w
loc_204dec:
	subq.w #$2,($f73e).w
loc_204df0:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204e1e
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204e1e
	bmi.s loc_204e12
	sub.w d1,d0
	bcc.s loc_204e0c
	move.w #$0,d0
loc_204e0c:
	move.w d0,$10(a0)
	rts
loc_204e12:
	sub.w d1,d0
	bcs.s loc_204e1a
	move.w #$0,d0
loc_204e1a:
	move.w d0,$10(a0)
loc_204e1e:
	rts
	.incbin 20000, 48

sub_204e50:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204ea4
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e7e
	addi.w #$38,d0
loc_204e7e:
	cmp.w d1,d0
	bls.s loc_204ea4
loc_204e82:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e92
	rts
loc_204e92:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2072ea
	move.b #$6,$24(a0)
	rts
loc_204ea4:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e82

sub_204ebc:
	tst.b ($f7ca).w
	bne.s loc_204ee2
	move.w $14(a0),d0
	bpl.s loc_204eca
	neg.w d0
loc_204eca:
	cmpi.w #$80,d0
	bcs.s loc_204ee2
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204ee2
	btst.b #$1,($f602).w
	bne.s sub_204ee4
loc_204ee2:
	rts

sub_204ee4:
	btst.b #$2,$22(a0)
	beq.s loc_204eee
	bra.s loc_204f1e
loc_204eee:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f0e
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f1e
loc_204f0e:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f1e:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f38
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f38
	move.w #$200,$14(a0)
loc_204f38:
	rts

sub_204f3a:
	tst.b $2a(a0)
	beq.s loc_204f42
	rts
loc_204f42:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f54
	tst.w $14(a0)
	beq.w loc_20501a
loc_204f54:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20501a
	btst.b #$3,$22(a0)
	beq.s loc_204f70
	jsr (sub_205c46).l
	beq.s loc_204fa0
loc_204f70:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206ce6
	cmpi.w #$6,d1
	blt.w loc_20501a
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f96
	move.w #$380,d2
loc_204f96:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204fa0:
	jsr (sub_200700).l
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
	jsr (sub_202598).l
	btst.b #$2,$22(a0)
	bne.s loc_20501c
	tst.b ($ff195b).l
	beq.s loc_204ffe
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_20500e
loc_204ffe:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_20500e:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_20501a:
	rts
loc_20501c:
	bset.b #$4,$22(a0)
	rts

sub_205024:
	tst.b $3c(a0)
	beq.s loc_205056
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_20503a
	move.w #$fe00,d1
loc_20503a:
	cmp.w $12(a0),d1
	ble.s loc_205054
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205054
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205054:
	rts
loc_205056:
	cmpi.w #$f040,$12(a0)
	bge.s loc_205064
	move.w #$f040,$12(a0)
loc_205064:
	rts

sub_205066:
	tst.b $2a(a0)
	bne.s loc_2050a0
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050a0
	move.b $26(a0),d0
	jsr (sub_200700).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2050a0
	bmi.s loc_20509c
	tst.w d0
	beq.s loc_20509a
	add.w d0,$14(a0)
loc_20509a:
	rts
loc_20509c:
	add.w d0,$14(a0)
loc_2050a0:
	rts

sub_2050a2:
	tst.b $2a(a0)
	bne.s loc_2050e2
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050e2
	move.b $26(a0),d0
	jsr (sub_200700).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050d8
	tst.w d0
	bpl.s loc_2050d2
	asr.l #$2,d0
loc_2050d2:
	add.w d0,$14(a0)
	rts
loc_2050d8:
	tst.w d0
	bmi.s loc_2050de
	asr.l #$2,d0
loc_2050de:
	add.w d0,$14(a0)
loc_2050e2:
	rts

sub_2050e4:
	nop
	tst.b $38(a0)
	bne.s loc_205126
	tst.w $3e(a0)
	bne.s loc_205128
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205126
	move.w $14(a0),d0
	bpl.s loc_205108
	neg.w d0
loc_205108:
	cmpi.w #$280,d0
	bcc.s loc_205126
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205126:
	rts
loc_205128:
	subq.w #$1,$3e(a0)
	rts

sub_20512e:
	btst.b #$1,$2c(a0)
	bne.s loc_205150
	move.b $26(a0),d0
	beq.s loc_205150
	bpl.s loc_205146
	addq.b #$2,d0
	bcc.s loc_205144
	moveq #$0,d0
loc_205144:
	bra.s loc_20514c
loc_205146:
	subq.b #$2,d0
	bcc.s loc_20514c
	moveq #$0,d0
loc_20514c:
	move.b d0,$26(a0)
loc_205150:
	rts

sub_205152:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200998).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205236
	cmpi.b #$80,d0
	beq.w loc_205298
	cmpi.b #$c0,d0
	beq.w loc_2052f4
	bsr.w sub_206ffc
	tst.w d1
	bpl.s loc_2051a4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051a4:
	bsr.w sub_206e5e
	tst.w d1
	bpl.s loc_2051b6
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051b6:
	bsr.w sub_206d0e
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205234
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051d4
	cmp.b d2,d0
	blt.s loc_205234
loc_2051d4:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205356
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205212
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205204
	asr.w $12(a0)
	bra.s loc_205226
loc_205204:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205212:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205226
	move.w #$fc0,$12(a0)
loc_205226:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205234
	neg.w $14(a0)
loc_205234:
	rts
loc_205236:
	bsr.w sub_206ffc
	tst.w d1
	bpl.s loc_205250
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205250:
	bsr.w sub_206eb6
	tst.w d1
	bpl.s loc_20526a
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205268
	move.w #$0,$12(a0)
loc_205268:
	rts
loc_20526a:
	tst.w $12(a0)
	bmi.s loc_205296
	bsr.w sub_206d0e
	tst.w d1
	bpl.s loc_205296
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205356
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205296:
	rts
loc_205298:
	bsr.w sub_206ffc
	tst.w d1
	bpl.s loc_2052aa
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052aa:
	bsr.w sub_206e5e
	tst.w d1
	bpl.s loc_2052bc
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052bc:
	bsr.w sub_206eb6
	tst.w d1
	bpl.s loc_2052f2
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052dc
	move.w #$0,$12(a0)
	rts
loc_2052dc:
	move.b d3,$26(a0)
	bsr.w sub_2053c8
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052f2
	neg.w $14(a0)
loc_2052f2:
	rts
loc_2052f4:
	bsr.w sub_206e5e
	tst.w d1
	bpl.s loc_20530e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20530e:
	bsr.w sub_206eb6
	tst.w d1
	bpl.s loc_205328
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205326
	move.w #$0,$12(a0)
loc_205326:
	rts
loc_205328:
	tst.w $12(a0)
	bmi.s loc_205354
	bsr.w sub_206d0e
	tst.w d1
	bpl.s loc_205354
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205356
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205354:
	rts

sub_205356:
	btst.b #$4,$22(a0)
	beq.s loc_205360
	nop
loc_205360:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053ba
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20539a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2053aa
loc_20539a:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2053aa:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202598).l
loc_2053ba:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053c8:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_203a50).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205402
	subi.w #$20,$12(a0)
loc_205402:
	jsr (sub_206ab4).l
	bsr.w sub_20541e
	bsr.w sub_204e50
	bsr.w sub_2042f2
	bsr.w sub_2056b0
	jmp (sub_203aa6).l

sub_20541e:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_2072ea
	bsr.w sub_205152
	btst.b #$1,$22(a0)
	bne.s loc_205458
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_205458:
	rts
	bsr.w sub_205472
	jsr (sub_2039ee).l
	bsr.w sub_2042f2
	bsr.w sub_2056b0
	jmp (sub_203aa6).l

sub_205472:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_2054e0
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_2054a6
	clr.b ($ff1508).l
loc_2054a6:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2054c0
	tst.b ($ff0f01).l
	beq.s loc_2054c0
	move.b #$0,($ff1508).l
	bra.s loc_2054da
loc_2054c0:
	jsr (sub_20786e).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_2054e0
loc_2054da:
	move.w #$3c,$3a(a0)
loc_2054e0:
	rts
	tst.w $3a(a0)
	beq.w loc_205564
	subq.w #$1,$3a(a0)
	bne.w loc_205564
	move.w #$1,($ff1502).l
	jsr (sub_202530).l
	move.b #$1,($a01c3e).l
	jsr (sub_20254c).l
	bsr.w sub_20765c
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205532
	cmpi.b #$1,($ff152e).l
	bne.s loc_205532
	bclr.b #$1,($ff151c).l
loc_205532:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_205560
	cmpi.b #$1,($ff152e).l
	bne.s loc_20555a
	tst.b ($ff158e).l
	beq.s loc_205560
	move.b #$1,($ff1522).l
	bra.s loc_205560
loc_20555a:
	clr.b ($ff1522).l
loc_205560:
	bra.w sub_205cc0
loc_205564:
	rts

sub_205566:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20558e
	cmpi.b #$5,($ff1506).l
	beq.s loc_20558e
	cmpi.b #$2,($ff1506).l
	beq.s loc_20558e
	tst.b ($ff1506).l
	bne.w loc_205650
loc_20558e:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055cc
	tst.b ($ff1506).l
	bne.w loc_205652
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205652
	bra.s loc_2055d4
loc_2055cc:
	cmp.b ($f7af).w,d1
	beq.w loc_205652
loc_2055d4:
	cmp.b ($f7ac).w,d1
	beq.s loc_205604
	cmp.b ($f7ad).w,d1
	beq.s loc_2055e8
	bclr.b #$6,$1(a0)
	rts
loc_2055e8:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20566a
	btst.b #$1,$22(a0)
	beq.s loc_205604
	bclr.b #$6,$1(a0)
	rts
loc_205604:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205616
	bclr.b #$6,$1(a0)
	rts
loc_205616:
	cmpi.b #$e0,d2
	bcs.s loc_205624
	bset.b #$6,$1(a0)
	rts
loc_205624:
	btst.b #$6,$1(a0)
	bne.s loc_205640
	move.b $26(a0),d1
	beq.s loc_205650
	cmpi.b #$80,d1
	bhi.s loc_205650
	bset.b #$6,$1(a0)
	rts
loc_205640:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205650
	bclr.b #$6,$1(a0)
loc_205650:
	rts
loc_205652:
	btst.b #$2,$22(a0)
	bne.s loc_205664
	move.w #$9c,d0
	jsr (sub_202598).l
loc_205664:
	jmp (sub_204ee4).l
loc_20566a:
	tst.w $12(a0)
	bmi.s loc_2056ae
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2056a2
	cmpi.w #$38,d1
	bcs.s loc_20569a
	cmpi.w #$80,d1
	bcs.s loc_2056ae
loc_205692:
	bclr.b #$6,$1(a0)
	rts
loc_20569a:
	bset.b #$6,$1(a0)
	rts
loc_2056a2:
	cmpi.w #$38,d1
	bcs.s loc_205692
	cmpi.w #$80,d1
	bcc.s loc_20569a
loc_2056ae:
	rts

sub_2056b0:
	lea (dat_2059a0).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056d2
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056d2:
	bsr.w sub_205942
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20574a
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205718
	move.b d0,$1e(a0)

sub_2056fc:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205710
	bpl.s loc_205710
	cmpi.b #$fd,d0
	bge.s loc_20571a
loc_205710:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205718:
	rts
loc_20571a:
	addq.b #$1,d0
	bne.s loc_20572a
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205710
loc_20572a:
	addq.b #$1,d0
	bne.s loc_20573e
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205710
loc_20573e:
	addq.b #$1,d0
	bne.s loc_205748
	move.b $2(a1,d1.w),$1c(a0)
loc_205748:
	rts
loc_20574a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205718
	addq.b #$1,d0
	bne.w loc_205804
	tst.b ($ff195b).l
	bne.w loc_2058cc
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205772
	not.b d0
loc_205772:
	btst.b #$1,$2c(a0)
	bne.s loc_205780
	addi.b #$10,d0
	bra.s loc_205782
loc_205780:
	addq.b #$8,d0
loc_205782:
	bpl.s loc_205786
	moveq #$3,d1
loc_205786:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205878
	move.w $14(a0),d2
	bpl.s loc_2057a4
	neg.w d2
loc_2057a4:
	btst.b #$1,$2c(a0)
	beq.s loc_2057bc
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205ba2).l,a1
	bra.s loc_2057e6
loc_2057bc:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b7c).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057e6
	lea (dat_205a20).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057e6
	lea (dat_205a18).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057e6:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2057f4
	moveq #$0,d2
loc_2057f4:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2056fc
	add.b d3,$1a(a0)
	rts
loc_205804:
	addq.b #$1,d0
	bne.s loc_205874
	move.w $14(a0),d2
	bpl.s loc_205810
	neg.w d2
loc_205810:
	lea (dat_205afe).l,a1
	tst.b ($ff195b).l
	bne.s loc_20584e
	lea (dat_205a30).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205842
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20584e
	lea (dat_205baa).l,a1
	bra.s loc_20584e
loc_205842:
	cmpi.w #$600,d2
	bcc.s loc_20584e
	lea (dat_205a28).l,a1
loc_20584e:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205858
	moveq #$0,d2
loc_205858:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056fc
loc_205874:
	addq.b #$1,d0
	bne.s loc_2058b8
loc_205878:
	move.w $14(a0),d2
	bmi.s loc_205880
	neg.w d2
loc_205880:
	addi.w #$800,d2
	bpl.s loc_205888
	moveq #$0,d2
loc_205888:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205b10).l,a1
	tst.b ($ff195b).l
	bne.s loc_2058a2
	lea (dat_205a38).l,a1
loc_2058a2:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056fc
loc_2058b8:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058cc:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058de
	not.b d0
loc_2058de:
	addi.b #$10,d0
	bpl.s loc_2058e6
	moveq #$0,d1
loc_2058e6:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205914
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205804
loc_205914:
	move.w $14(a0),d2
	bpl.s loc_20591c
	neg.w d2
loc_20591c:
	lea (dat_205af8).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20592e
	lea (dat_205af2).l,a1
loc_20592e:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205938
	moveq #$0,d2
loc_205938:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2056fc

sub_205942:
	tst.b ($ff195b).l
	beq.s loc_20594e
	move.b dat_205950(pc,d0.w),d0
loc_20594e:
	rts
dat_205950:
	.incbin 22864, 80
dat_2059a0:
	.incbin 22944, 120
dat_205a18:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205a20:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205a28:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a30:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a38:
	.incbin 23096, 186
dat_205af2:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205af8:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205afe:
	.incbin 23294, 18
dat_205b10:
	.incbin 23312, 108
dat_205b7c:
	.incbin 23420, 38
dat_205ba2:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205baa:
	.incbin 23466, 56

sub_205be2:
	tst.b (a0)
	beq.w loc_205c44
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c44
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c44
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c16:
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
loc_205c30:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c30
	dbf d1,loc_205c16
loc_205c44:
	rts

sub_205c46:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205cba
	move.w #$98,d0
	jsr (sub_202598).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200998).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205ca8
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205ca8:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205cba:
	rts
loc_205cbc:
	move.w #$e,d0

sub_205cc0:
	cmpi.w #$67,d0
	bne.s loc_205cce
	move.b #$1,($ff1958).l
loc_205cce:
	move.w d0,($a12010).l
loc_205cd4:
	move.w ($a12020).l,d0
	beq.s loc_205cd4
	cmp.w ($a12020).l,d0
	bne.s loc_205cd4
	move.w #$0,($a12010).l
loc_205cec:
	move.w ($a12020).l,d0
	bne.s loc_205cec
	move.w ($a12020).l,d0
	bne.s loc_205cec
	rts
	dc.b $00,$00

sub_205d00:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d1c
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d1c:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d5c
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d5e
loc_205d38:
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
loc_205d5c:
	rts
loc_205d5e:
	addq.b #$1,d0
	bne.s loc_205d6e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d38
loc_205d6e:
	addq.b #$1,d0
	bne.s loc_205d82
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d38
loc_205d82:
	addq.b #$1,d0
	bne.s loc_205d8c
	move.b $2(a1,d1.w),$1c(a0)
loc_205d8c:
	addq.b #$1,d0
	bne.s loc_205d94
	addq.b #$2,$24(a0)
loc_205d94:
	addq.b #$1,d0
	bne.s loc_205da2
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205da2:
	addq.b #$1,d0
	bne.s loc_205daa
	addq.b #$2,$25(a0)
loc_205daa:
	rts
	.incbin 23980, 526
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fc8(pc,d0.w),d1
	jmp dat_205fc8(pc,d1.w)
dat_205fc8:
	.incbin 24520, 18
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_206022
	addq.b #$8,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$48a,$2(a0)
	andi.w #$7f,d0
	move.b d0,$33(a0)
	bra.w loc_206186
loc_206022:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	lea (dat_206388).l,a1
	jsr (sub_205d00).l
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20605c
	move.b #$6,$24(a0)
	addq.b #$7,$1c(a0)
	cmpi.b #$d,$1c(a0)
	beq.s loc_2060a0
	bra.s loc_2060a0
loc_20605c:
	tst.b ($f7c7).w
	beq.s loc_206066
	addq.w #$4,$30(a0)
loc_206066:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23fa02).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	bsr.s sub_2060f4
	jsr (sub_203a50).l
	tst.b $1(a0)
	bpl.s loc_20609a
	jmp (sub_203aa6).l
loc_20609a:
	jmp (sub_203b52).l
loc_2060a0:
	bsr.s sub_2060f4
	lea (dat_206388).l,a1
	jsr (sub_205d00).l
	jmp (sub_203aa6).l
	jmp (sub_203b52).l
	cmpi.w #$c,($ff150a).l
	bhi.s loc_2060ee
	subq.w #$1,$38(a0)
	bne.s loc_2060d6
	move.b #$e,$24(a0)
	addq.b #$7,$1c(a0)
	bra.s loc_2060a0
loc_2060d6:
	lea (dat_206388).l,a1
	jsr (sub_205d00).l
	tst.b $1(a0)
	bpl.s loc_2060ee
	jmp (sub_203aa6).l
loc_2060ee:
	jmp (sub_203b52).l

sub_2060f4:
	tst.w $38(a0)
	beq.s loc_20613e
	subq.w #$1,$38(a0)
	bne.s loc_20613e
	cmpi.b #$7,$1c(a0)
	bcc.s loc_20613e
	move.w #$f,$38(a0)
	clr.w $12(a0)
	move.b #$80,$1(a0)
	move.w $8(a0),d0
	sub.w ($f700).w,d0
	addi.w #$80,d0
	move.w d0,$8(a0)
	move.w $c(a0),d0
	sub.w ($f704).w,d0
	addi.w #$80,d0
	move.w d0,$a(a0)
	move.b #$c,$24(a0)
loc_20613e:
	rts

sub_206140:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_206178
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_20615c
	move.w #$86,d0
loc_20615c:
	tst.b ($ff151f).l
	beq.s loc_206168
	move.w #$87,d0
loc_206168:
	tst.b ($f7aa).w
	beq.s loc_206172
	move.w #$8c,d0
loc_206172:
	jsr (sub_202596).l
loc_206178:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
loc_206186:
	tst.w $2c(a0)
	bne.w loc_206276
	cmpi.b #$6,($d024).w
	bcc.w loc_206386
	btst.b #$6,($d022).w
	beq.w loc_206386
	subq.w #$1,$38(a0)
	bpl.w loc_20629c
	move.w #$3b,$38(a0)
	move.w #$1,$36(a0)
	jsr (sub_202386).l
	andi.w #$1,d0
	move.b d0,$34(a0)
	move.w ($ff150a).l,d0
	cmpi.w #$19,d0
	beq.s loc_206208
	cmpi.w #$14,d0
	beq.s loc_206208
	cmpi.w #$f,d0
	beq.s loc_206208
	cmpi.w #$c,d0
	bhi.s loc_206208
	btst.b #$5,($ff1505).l
	bne.s loc_2061f6
	move.w #$df,d0
	jsr (sub_202598).l
loc_2061f6:
	subq.b #$1,$32(a0)
	bpl.s loc_206208
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_206208:
	subq.w #$1,($ff150a).l
	bcc.w loc_20629a
	bsr.w sub_206140
	move.b #$81,($d02c).w
	move.w #$b6,d0
	jsr (sub_202598).l
	move.b #$a,$34(a0)
	move.w #$1,$36(a0)
	move.w #$78,$2c(a0)
	move.l a0,-(a7)
	lea ($d000).w,a0
	bsr.w sub_205356
	move.b #$17,$1c(a0)
	bset.b #$1,$22(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$0,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.b #$1,($f744).w
	movea.l (a7)+,a0
	rts
loc_206276:
	subq.w #$1,$2c(a0)
	bne.s loc_206284
	move.b #$6,($d024).w
	rts
loc_206284:
	move.l a0,-(a7)
	lea ($d000).w,a0
	jsr (sub_203a50).l
	addi.w #$10,$12(a0)
	movea.l (a7)+,a0
	bra.s loc_20629c
loc_20629a:
	bra.s loc_2062ac
loc_20629c:
	tst.w $36(a0)
	beq.w loc_206386
	subq.w #$1,$3a(a0)
	bpl.w loc_206386
loc_2062ac:
	jsr (sub_202386).l
	andi.w #$f,d0
	move.w d0,$3a(a0)
	jsr (sub_20786e).l
	bne.w loc_206386
	move.b #$21,$0(a1)
	move.w ($d008).w,$8(a1)
	moveq #$6,d0
	btst.b #$0,($d022).w
	beq.s loc_2062e2
	neg.w d0
	move.b #$40,$26(a1)
loc_2062e2:
	add.w d0,$8(a1)
	move.w ($d00c).w,$c(a1)
	move.b #$6,$28(a1)
	tst.w $2c(a0)
	beq.w loc_206330
	andi.w #$7,$3a(a0)
	addi.w #$0,$3a(a0)
	move.w ($d00c).w,d0
	subi.w #$c,d0
	move.w d0,$c(a1)
	jsr (sub_202386).l
	move.b d0,$26(a1)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	bne.s loc_20637c
	move.b #$e,$28(a1)
	bra.s loc_20637c
loc_206330:
	btst.b #$7,$36(a0)
	beq.s loc_20637c
	move.w #$2000,$2(a1)
	move.w ($ff150a).l,d2
	lsr.w #$1,d2
	jsr (sub_202386).l
	andi.w #$3,d0
	bne.s loc_206364
	bset.b #$6,$36(a0)
	bne.s loc_20637c
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_206364:
	tst.b $34(a0)
	bne.s loc_20637c
	bset.b #$6,$36(a0)
	bne.s loc_20637c
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_20637c:
	subq.b #$1,$34(a0)
	bpl.s loc_206386
	clr.w $36(a0)
loc_206386:
	rts
dat_206388:
	.incbin 25480, 154

sub_206422:
	tst.b $25(a0)
	bne.s loc_206452
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_20786e).l
	bne.s loc_206452
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206452:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206462(pc,d0.w),d0
	jmp dat_206462(pc,d0.w)
dat_206462:
	dc.b $00,$06,$00,$4a,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$680,$2(a0)
	move.l #$23f970,$4(a0)
	bsr.s sub_206422
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_2064ac
	move.w #$100,$1c(a0)
loc_2064ac:
	lea (dat_23f95c).l,a1
	bsr.w sub_205d00
	jmp (sub_203aa6).l
	tst.b $25(a0)
	beq.s loc_2064c8
	jmp (sub_203b52).l
loc_2064c8:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2064ea(pc,d0.w),d0
	jsr dat_2064ea(pc,d0.w)
	jmp (sub_203aa6).l
dat_2064ea:
	dc.b $00,$0a,$00,$5a,$00,$aa,$00,$fa
	dc.b $01,$08
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$26d7,$2(a0)
	move.l #$238e9e,$4(a0)
	tst.b $28(a0)
	bne.s loc_206532
	bsr.w sub_20659e
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_206594
loc_206532:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_206dbc).l
	tst.w d1
	bpl.s loc_206590
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_20657a
	bsr.w sub_20659e
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_2065c4
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_20657a:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_206594
loc_206590:
	addq.w #$2,$c(a0)
loc_206594:
	lea (dat_238e82).l,a1
	bra.w sub_205d00

sub_20659e:
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

sub_2065c4:
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
	bra.s loc_206594
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_206594
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20660e(pc,d0.w),d0
	jmp dat_20660e(pc,d0.w)
dat_20660e:
	dc.b $00,$06,$00,$42,$00,$5c
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$23f8ae,$4(a0)
	move.w #$298,$2(a0)
	move.b $28(a0),$1c(a0)
	moveq #$d,d0
	move.w #$a2,d0
	cmpi.b #$2,$28(a0)
	bcs.s loc_20664a
	move.w #$a1,d0
loc_20664a:
	jsr (sub_202598).l
	move.w ($f646).w,$c(a0)
	addq.w #$4,$c(a0)
	lea (dat_23f896).l,a1
	bsr.w sub_205d00
	jmp (sub_203aa6).l
	jmp (sub_203b52).l
	.incbin 26224, 316
loc_2067ac:
	bclr.b #$7,($ff156b).l
	beq.s loc_2067fa
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2067fc(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2067d0:
	move.l (a1)+,(a2)+
	dbf d0,loc_2067d0
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2067fa:
	rts
dat_2067fc:
	.incbin 26620, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206824(pc,d0.w),d0
	jsr dat_206824(pc,d0.w)
	jmp (sub_203aa6).l
dat_206824:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$2068b4,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_206858
	moveq #$0,d1
loc_206858:
	move.b d1,$2a(a0)
	move.b dat_20687e(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_206880).l,a1
	jmp (sub_205d00).l
dat_20687e:
	dc.b $a0,$60
dat_206880:
	.incbin 26752, 564

sub_206ab4:
	rts
loc_206ab6:
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
	bne.s loc_206b70
	move.b ($ff1593).l,($ff195b).l
loc_206b70:
	tst.b ($ff1522).l
	bpl.s loc_206b86
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b86:
	rts

sub_206b88:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ab6
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
	bne.s loc_206c42
	move.b ($ff1591).l,($ff195b).l
loc_206c42:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c64
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c64:
	tst.b ($ff1522).l
	bpl.s loc_206c7a
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c7a:
	rts

sub_206c7c:
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
	bpl.s loc_206cb8
	move.b d1,d0
	bpl.s loc_206cb2
	subq.b #$1,d0
loc_206cb2:
	addi.b #$20,d0
	bra.s loc_206cc2
loc_206cb8:
	move.b d1,d0
	bpl.s loc_206cbe
	addq.b #$1,d0
loc_206cbe:
	addi.b #$1f,d0
loc_206cc2:
	andi.b #$c0,d0
	beq.w loc_206d92
	cmpi.b #$80,d0
	beq.w loc_206f2e
	andi.b #$38,d1
	bne.s loc_206cda
	addq.w #$8,d2
loc_206cda:
	cmpi.b #$40,d0
	beq.w loc_207004
	bra.w loc_206e66

sub_206ce6:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206f8c
	cmpi.b #$80,d0
	beq.w sub_206eb6
	cmpi.b #$c0,d0
	beq.w loc_206df6

sub_206d0e:
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
	jsr (sub_201056).l
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
	jsr (sub_201056).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206d72:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d80
	move.b ($f768).w,d3
	exg d0,d1
loc_206d80:
	btst.l #$0,d3
	beq.s loc_206d88
	move.b d2,d3
loc_206d88:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206d92:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201056).l
	move.b #$0,d2
loc_206dae:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206dba
	move.b d2,d3
loc_206dba:
	rts

sub_206dbc:
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
	jsr (sub_201056).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206df4
	move.b #$0,d3
loc_206df4:
	rts
loc_206df6:
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
	jsr (sub_2011c6).l
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
	jsr (sub_2011c6).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206d72

sub_206e5e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e66:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011c6).l
	move.b #$c0,d2
	bra.w loc_206dae
	.incbin 28294, 48

sub_206eb6:
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
	jsr (sub_201056).l
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
	jsr (sub_201056).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206d72

sub_206f26:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f2e:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201056).l
	move.b #$80,d2
	bra.w loc_206dae
	.incbin 28498, 42
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206f8a
	move.b #$80,d3
loc_206f8a:
	rts
loc_206f8c:
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
	jsr (sub_2011c6).l
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
	jsr (sub_2011c6).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206d72

sub_206ffc:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207004:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011c6).l
	move.b #$40,d2
	bra.w loc_206dae
	.incbin 28712, 48

sub_207058:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_20707c
	addi.w #$c,d3
	moveq #$a,d5
loc_20707c:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_20708a:
	tst.b $1(a1)
	bpl.s loc_207096
	move.b $20(a1),d0
	bne.s loc_2070a2
loc_207096:
	lea $40(a1),a1
	dbf d6,loc_20708a
	moveq #$0,d0
	rts
loc_2070a2:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207430).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070ca
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070d0
	bra.w loc_207096
loc_2070ca:
	cmp.w d4,d0
	bhi.w loc_207096
loc_2070d0:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2070e8
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2070ee
	bra.w loc_207096
loc_2070e8:
	cmp.w d5,d0
	bhi.w loc_207096
loc_2070ee:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207162
	cmpi.b #$c0,d1
	beq.w loc_207342
	tst.b d1
	bmi.w sub_20722c
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207126
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207124
	addq.b #$2,$24(a1)
loc_207124:
	rts
loc_207126:
	tst.w $12(a0)
	bpl.s loc_207150
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207160
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207160
	addq.b #$4,$25(a1)
	rts
loc_207150:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207160
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207160:
	rts

sub_207162:
	tst.b ($ff1521).l
	bne.s loc_20717c
	tst.b ($ff151f).l
	bne.s loc_20717c
	cmpi.b #$2,$1c(a0)
	bne.w sub_20722c
loc_20717c:
	tst.b $21(a1)
	beq.s loc_2071a6
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2071a4
	bset.b #$7,$22(a1)
loc_2071a4:
	rts
loc_2071a6:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071be
	moveq #$6,d0
loc_2071be:
	move.w d0,$3e(a1)
	move.w dat_20721e(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071d8
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071d8:
	bsr.w sub_20a1d0
	move.w #$96,d0
	jsr (sub_202598).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_20720e
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207216
	neg.w $12(a0)
	rts
loc_20720e:
	addi.w #$100,$12(a0)
	rts
loc_207216:
	subi.w #$100,$12(a0)
	rts
dat_20721e:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20722c:
	tst.b ($ff1521).l
	bne.s loc_20723c
	tst.b ($ff151f).l
	beq.s loc_207240
loc_20723c:
	moveq #$ffffffff,d0
	rts
loc_207240:
	nop
	tst.w $30(a0)
	bne.s loc_20723c
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_207276
	tst.w ($ff1512).l
	beq.w loc_2072e0
	jsr (sub_20786e).l
	bne.s loc_207276
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207276:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_20728c
	move.b #$0,($ff156f).l
loc_20728c:
	move.b #$4,$24(a0)
	bsr.w sub_205356
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072bc
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072bc:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072ca
	neg.w $10(a0)
loc_2072ca:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072e0:
	tst.w ($ff1588).l
	bne.w loc_207276

sub_2072ea:
	tst.w ($ff1906).l
	bne.s loc_20733e
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205356
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202598).l
loc_20733e:
	moveq #$ffffffff,d0
	rts
loc_207342:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2073ca
	cmpi.b #$23,d1
	beq.w loc_2073ca
	cmpi.b #$33,d1
	beq.w loc_207422
	cmpi.b #$3a,d1
	beq.w loc_207422
	cmpi.b #$3b,d1
	beq.w loc_207422
	tst.b ($f7aa).w
	beq.w loc_2073c8
	cmpi.b #$1,($f7aa).w
	beq.s loc_207392
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073b4
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073c2
loc_207392:
	cmpi.b #$3c,d1
	blt.s loc_2073c8
	cmpi.b #$3f,d1
	bgt.s loc_2073c8
	bsr.w sub_207162
	tst.b $20(a1)
	bne.s loc_2073ac
	addq.b #$3,$21(a1)
loc_2073ac:
	clr.b $20(a1)
	bra.w loc_2073ca
loc_2073b4:
	cmpi.b #$3f,d1
	beq.s loc_2073d6
	cmpi.b #$3e,d1
	beq.s loc_2073d0
	bra.s loc_2073c8
loc_2073c2:
	cmpi.b #$3d,d1
	beq.s loc_2073d0
loc_2073c8:
	rts
loc_2073ca:
	addq.b #$1,$21(a1)
	rts
loc_2073d0:
	bsr.w sub_20722c
	bra.s loc_2073ca
loc_2073d6:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207420
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_202598).l
	jsr (sub_206140).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207420
	neg.w $10(a0)
loc_207420:
	rts
loc_207422:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20742e
	addq.b #$1,$21(a1)
loc_20742e:
	rts
dat_207430:
	.incbin 29744, 126
loc_2074ae:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074c4
	move.l #$4000,(dat_20763e).l
	bra.s loc_2074e4
loc_2074c4:
	addi.l #$2000,(dat_20763e).l
	cmpi.l #$80000,(dat_20763e).l
	bls.s loc_2074e4
	move.l #$80000,(dat_20763e).l
loc_2074e4:
	move.l (dat_20763e).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2074f6
	sub.l d0,$c(a0)
loc_2074f6:
	btst.b #$1,($f604).w
	beq.s loc_207502
	add.l d0,$c(a0)
loc_207502:
	btst.b #$2,($f604).w
	beq.s loc_20750e
	sub.l d0,$8(a0)
loc_20750e:
	btst.b #$3,($f604).w
	beq.s loc_20751a
	add.l d0,$8(a0)
loc_20751a:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e6e).l
	move.w (a1),($ff194e).l
	lea (dat_207642).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20755c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207556
	move.b #$0,d1
loc_207556:
	move.b d1,($ff1904).l
loc_20755c:
	btst.b #$7,($f605).w
	beq.s loc_20757c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207576
	add.b (a2),d1
loc_207576:
	move.b d1,($ff1904).l
loc_20757c:
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
	beq.s loc_207608
	bsr.w sub_20786e
	bne.s loc_207608
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
loc_207608:
	btst.b #$4,($f605).w
	beq.s loc_207638
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207638:
	jmp (sub_203aa6).l
dat_20763e:
	dc.b $00,$00,$40,$00
dat_207642:
	.incbin 30274, 26

sub_20765c:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20766a:
	clr.l (a2)+
	dbf d0,loc_20766a
	rts

sub_207672:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207680(pc,d0.w),d0
	jmp dat_207680(pc,d0.w)
dat_207680:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207920).l,a0
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
	bcc.s loc_2076be
	moveq #$0,d6
loc_2076be:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2076c6:
	cmp.w (a0),d6
	bls.s loc_2076d8
	tst.b $4(a0)
	bpl.s loc_2076d4
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076d4:
	addq.w #$8,a0
	bra.s loc_2076c6
loc_2076d8:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2076f8
loc_2076e6:
	cmp.w (a0),d6
	bls.s loc_2076f8
	tst.b $4(a0)
	bpl.s loc_2076f4
	addq.b #$1,$1(a2)
loc_2076f4:
	addq.w #$8,a0
	bra.s loc_2076e6
loc_2076f8:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2077e2
	bge.s loc_207788
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207764
loc_207732:
	cmp.w -$8(a0),d6
	bge.s loc_207764
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207748
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207748:
	bsr.w sub_207806
	bne.s loc_207752
	subq.w #$8,a0
	bra.s loc_207732
loc_207752:
	tst.b $4(a0)
	bpl.s loc_207762
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207762:
	addq.w #$8,a0
loc_207764:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207770:
	cmp.w -$8(a0),d6
	bgt.s loc_207782
	tst.b -$4(a0)
	bpl.s loc_20777e
	subq.b #$1,(a2)
loc_20777e:
	subq.w #$8,a0
	bra.s loc_207770
loc_207782:
	move.l a0,($f770).w
	rts
loc_207788:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20779c:
	cmp.w (a0),d6
	bls.s loc_2077be
	tst.b $4(a0)
	bpl.s loc_2077aa
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077aa:
	bsr.w sub_207806
	beq.s loc_20779c
	tst.b $4(a0)
	bpl.s loc_2077be
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077be:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2077de
loc_2077cc:
	cmp.w (a0),d6
	bls.s loc_2077de
	tst.b $4(a0)
	bpl.s loc_2077da
	addq.b #$1,$1(a2)
loc_2077da:
	addq.w #$8,a0
	bra.s loc_2077cc
loc_2077de:
	move.l a0,($f774).w
loc_2077e2:
	rts

sub_2077e4:
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

sub_207806:
	bsr.s sub_2077e4
	beq.s loc_207818
	tst.b $4(a0)
	bpl.s loc_20781e
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_20781e
loc_207818:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_20781e:
	bsr.w sub_20786e
	bne.s loc_20786c
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
	bpl.s loc_20784e
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_20784e:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207860
	nop
	nop
	nop
	nop
loc_207860:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20786c:
	rts

sub_20786e:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207876:
	tst.b (a1)
	beq.s loc_207882
	lea $40(a1),a1
	dbf d0,loc_207876
loc_207882:
	rts

sub_207884:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078a2
loc_207896:
	tst.b (a1)
	beq.s loc_2078a2
	lea $40(a1),a1
	dbf d0,loc_207896
loc_2078a2:
	rts
loc_2078a4:
	move.w $8(a0),d0
loc_2078a8:
	tst.b $1(a0)
	bmi.s loc_207912
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207912
loc_2078c6:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207908
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207900
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2078f8
	moveq #$0,d1
	bra.s loc_207900
loc_2078f8:
	cmpi.w #$3,d1
	bcs.s loc_207900
	moveq #$2,d1
loc_207900:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207908:
	jsr (sub_203b52).l
	moveq #$1,d0
	rts
loc_207912:
	btst.b #$7,($ff152e).l
	bne.s loc_2078c6
	moveq #$0,d0
	rts
dat_207920:
	.incbin 31008, 3434

sub_20868a:
	btst.b #$3,$22(a0)
	beq.s loc_2086fa
	btst.b #$3,$22(a1)
	beq.s loc_2086fa
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2086fa
	tst.b $2a(a1)
	beq.s loc_2086bc
	move.w #$ab,d0
	jsr (sub_202598).l
loc_2086bc:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2086e8
	cmpi.b #$17,$1c(a1)
	beq.s loc_2086e8
	bclr.b #$0,$2c(a1)
loc_2086e8:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2086fa
	bclr.b #$1,$22(a1)
loc_2086fa:
	rts

sub_2086fc:
	cmpi.b #$4,$24(a1)
	bne.s loc_20870e
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_20870e:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_20876e
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208730
	bclr.b #$3,$22(a0)
	bra.w sub_20868a
loc_208730:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_20876e
	tst.b ($ff195b).l
	beq.s loc_208758
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208768
loc_208758:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208768:
	move.b #$0,$1c(a1)
loc_20876e:
	bset.b #$3,$22(a1)
	beq.s loc_208790
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2087c8
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208790:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2087bc
	cmpi.b #$2,$24(a0)
	beq.s loc_2087c2
loc_2087bc:
	move.w $10(a1),$14(a1)
loc_2087c2:
	bclr.b #$1,$22(a1)
loc_2087c8:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_2087d2:
	move.b #$1,$25(a0)

sub_2087d8:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208a8c
	btst.b #$6,$2c(a1)
	bne.w loc_208a8c
	cmpi.b #$6,$24(a1)
	bcc.w loc_208a8c
	tst.b $0(a1)
	beq.w loc_208a8c
	tst.b $1(a0)
	bpl.w loc_208a8c
	tst.b ($ff1906).l
	bne.w loc_208a8c
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208a8c
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208a8c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208846
	btst.b #$3,$22(a0)
	bne.s loc_208858
	bra.w loc_208a8c
loc_208846:
	cmpi.b #$1,$25(a0)
	bne.s loc_208858
	tst.w $12(a1)
	beq.s loc_208858
	bmi.w loc_208a8c
loc_208858:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208a8c
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208a8c
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_20888e
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_20888e:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_20889c
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_20889c:
	cmp.w d4,d5
	bcs.w loc_208930
	cmpi.b #$1,$25(a0)
	beq.w loc_208a8c
	cmpi.b #$a,$0(a0)
	bne.s loc_2088be
	btst.b #$1,$22(a1)
	bne.w loc_208a8c
loc_2088be:
	cmpi.b #$4,d5
	bls.w loc_208a8c
	bsr.w sub_208adc
	move.l d0,-(a7)
	bsr.w sub_20868a
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2088e8
	tst.w $10(a1)
	beq.s loc_208918
	bpl.s loc_2088f0
	bra.s loc_208918
loc_2088e8:
	tst.w $10(a1)
	beq.s loc_208918
	bpl.s loc_208918
loc_2088f0:
	bsr.w sub_208a9c
	btst.b #$1,$22(a1)
	bne.s loc_20890e
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_20890e:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208918:
	bsr.w sub_208b52
	bsr.w sub_208a9c
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208930:
	cmpi.b #$19,$0(a0)
	bne.s loc_208942
	btst.b #$2,$22(a1)
	bne.w loc_208a8c
loc_208942:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208958
	bmi.w loc_208a28
loc_208958:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20896a
	tst.w $12(a1)
	beq.s loc_20896a
	bmi.w loc_208a8c
loc_20896a:
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
	beq.s loc_2089b6
	bpl.s loc_208996
	neg.b d0
loc_208996:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c7c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2089b6
	tst.w $10(a0)
	bpl.s loc_2089b2
	neg.w d1
loc_2089b2:
	add.w d1,$8(a1)
loc_2089b6:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208a20
	tst.w $12(a0)
	bmi.s loc_2089f4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d0e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2089f4
	add.w d1,$c(a1)
	bra.w loc_208a8c
loc_2089f4:
	tst.w $12(a0)
	bpl.s loc_208a20
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f26).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a20
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072ea).l
	movem.l (a7)+,a0-a1
	bra.s loc_208a8c
loc_208a20:
	bsr.w sub_2086fc
	moveq #$1,d0
	rts
loc_208a28:
	cmpi.b #$1,$25(a0)
	beq.s loc_208a8c
	cmpi.b #$9,$0(a0)
	beq.s loc_208a8c
	cmpi.b #$a,$0(a0)
	bne.s loc_208a52
	cmpi.b #$2,$25(a0)
	beq.s loc_208a72
	btst.b #$1,$1(a0)
	bne.s loc_208a72
	bra.s loc_208a8c
loc_208a52:
	btst.b #$1,$22(a1)
	bne.s loc_208a72
	tst.w $12(a0)
	beq.s loc_208a72
	bmi.s loc_208a72
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072ea).l
	movem.l (a7)+,a0-a1
loc_208a72:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208b52
	bsr.w sub_20868a
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208a8c:
	bsr.w sub_208b52
	bsr.w sub_20868a
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208a9c:
	tst.w $10(a0)
	beq.s loc_208ada
	cmpi.b #$a,$0(a0)
	beq.s loc_208ada
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208ab6
	neg.b d0
loc_208ab6:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c7c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ada
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072ea).l
	movem.l (a7)+,a0-a1
loc_208ada:
	rts

sub_208adc:
	cmpi.b #$a,$0(a0)
	bne.s loc_208aec
	move.b #$0,$20(a1)
	rts
loc_208aec:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208b40
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208b50
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208b0e
	tst.w $10(a2)
	beq.s loc_208b50
loc_208b0e:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208b20
	cmp.w $8(a2),d1
	bcs.s loc_208b50
	bra.s loc_208b26
loc_208b20:
	cmp.w $8(a2),d1
	bcc.s loc_208b50
loc_208b26:
	cmpi.b #$15,$0(a0)
	beq.s loc_208b50
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072ea).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208b40:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208b50:
	rts

sub_208b52:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208b6c
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208b6c
	move.b #$0,$20(a1)
loc_208b6c:
	rts
	.incbin 35694, 374
loc_208ce4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208cf2(pc,d0.w),d0
	jmp dat_208cf2(pc,d0.w)
dat_208cf2:
	.incbin 36082, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208ce4
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208d48
	tst.b $1(a0)
	bpl.s loc_208d50
loc_208d48:
	move.w dat_208da2(pc,d0.w),d1
	jsr dat_208da2(pc,d1.w)
loc_208d50:
	bsr.w sub_203aa6
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208d82
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208d82:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b52
	rts
dat_208da2:
	.incbin 36258, 26
	addq.b #$2,$24(a0)
	move.l #$209124,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208e12
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20912a,$4(a0)
	bra.s loc_208e54
loc_208e12:
	btst.l #$3,d0
	beq.s loc_208e40
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209174,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bfb2).l
	move.l (a7)+,d0
	bra.s loc_208e54
loc_208e40:
	btst.b #$1,$1(a0)
	beq.s loc_208e54
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208e54:
	btst.l #$1,d0
	beq.s loc_208e60
	bset.b #$5,$2(a0)
loc_208e60:
	andi.w #$2,d0
	move.w dat_208e6c(pc,d0.w),$30(a0)
	rts
dat_208e6c:
	dc.b $f0,$00,$f6,$00

sub_208e70:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2087d8).l
	tst.b $1(a0)
	bpl.s loc_208e8c
	lea ($d000).w,a1
	bsr.s sub_208e70
	bne.s loc_208e8e
loc_208e8c:
	rts
loc_208e8e:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202598).l
	lea (dat_209116).l,a1
	bra.w sub_205d00
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 36578, 124
	move.w #$98,d0
	jmp (sub_202598).l
	.incbin 36712, 430
dat_209116:
	.incbin 37142, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209210(pc,d0.w),d1
	jmp dat_209210(pc,d1.w)
dat_209210:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20921a:
	.incbin 37402, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209272
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20926a
	moveq #$0,d1
	bra.s loc_209272
loc_20926a:
	cmpi.w #$3,d1
	bcs.s loc_209272
	moveq #$2,d1
loc_209272:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20928e
	moveq #$6,d1
loc_20928e:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20921a).l,a1
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
	beq.s loc_2092de
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2092d6
	moveq #$0,d0
	bra.s loc_2092de
loc_2092d6:
	cmpi.w #$3,d0
	bcs.s loc_2092de
	moveq #$2,d0
loc_2092de:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2093ac
	dbf d0,loc_2092de
	bclr.b #$7,(a2)
	bra.s loc_209334
loc_2092f0:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20931c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209314
	moveq #$0,d0
	bra.s loc_20931c
loc_209314:
	cmpi.w #$3,d0
	bcs.s loc_20931c
	moveq #$2,d0
loc_20931c:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2093ac
	dbf d0,loc_20931c
	bclr.b #$7,(a2)
	bsr.w sub_207884
	bne.w loc_2093b8
loc_209334:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20967e,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20938a
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_20938a
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_20938a:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2093ac:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2092f0
loc_2093b8:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2093de
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2093d6
	moveq #$0,d0
	bra.s loc_2093de
loc_2093d6:
	cmpi.w #$3,d0
	bcs.s loc_2093de
	moveq #$2,d0
loc_2093de:
	lea $1(a2),a3
loc_2093e2:
	btst.b #$0,-(a3)
	bne.w sub_203b52
	dbf d0,loc_2093e2
	tst.b $1(a0)
	bmi.s loc_209412
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20948c
loc_209412:
	tst.w ($ff190e).l
	bne.s loc_209422
	move.b ($ff1913).l,$1a(a0)
loc_209422:
	bra.w sub_203aa6
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209490
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209472
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20946a
	moveq #$0,d1
	bra.s loc_209472
loc_20946a:
	cmpi.w #$3,d1
	bcs.s loc_209472
	moveq #$2,d1
loc_209472:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209676).l,a1
	bsr.w sub_205d00
	bra.w sub_203aa6
loc_20948c:
	bra.w sub_203b52

sub_209490:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2094e0
	bset.b #$1,($ff150d).l
	beq.s loc_2094ca
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2094e0
	bset.b #$2,($ff150d).l
	bne.s loc_2094e0
loc_2094ca:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cc0).l
loc_2094e0:
	jmp (sub_202598).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094f4(pc,d0.w),d1
	jmp dat_2094f4(pc,d1.w)
dat_2094f4:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209510
	move.w d0,d5
loc_209510:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209520
loc_209518:
	bsr.w sub_20786e
	bne.w loc_2095d6
loc_209520:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20967e,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20957e
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20957e
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20957e:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_2095c6
	move.w d4,d0
	jsr (sub_200700).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_2095c6
	subi.w #$80,d4
	bcc.s loc_2095c6
	move.w #$288,d4
loc_2095c6:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209518
loc_2095d6:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202598).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203a50
	addi.w #$18,$12(a0)
	bmi.s loc_209636
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209636
	jsr (sub_206dbc).l
	tst.w d1
	bpl.s loc_209636
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209636:
	tst.b ($ff1916).l
	beq.s loc_209672
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209672
	bra.w sub_203aa6
	.incbin 38480, 34
loc_209672:
	bra.w sub_203b52
dat_209676:
	.incbin 38518, 402
loc_209808:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209836(pc,d0.w),d0
	jsr dat_209836(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209834
	cmpi.w #$5a,($f786).w
	bcs.s loc_20982e
	btst.b #$0,($ff1505).l
	bne.s loc_209834
loc_20982e:
	jmp (sub_203aa6).l
loc_209834:
	rts
dat_209836:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209e10,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20986a
	move.b #$13,$1a(a0)
loc_20986a:
	rts
loc_20986c:
	tst.b ($ff0f01).l
	beq.s loc_20987a
	jmp (sub_203b52).l
loc_20987a:
	cmpi.b #$a,$28(a0)
	beq.w loc_209808
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20989e(pc,d0.w),d0
	jsr dat_20989e(pc,d0.w)
	jsr (sub_203aa6).l
	jmp (loc_2078a4).l
dat_20989e:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209e10,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2098ec
	tst.b $29(a0)
	bne.s loc_2098ec
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_2098ec:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_2099b8
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209914
	addq.b #$2,$1a(a0)
loc_209914:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209928
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209928:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20998e
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20995a
	tst.b $29(a0)
	beq.s loc_209952
	tst.b ($ff1956).l
	beq.s loc_20998e
	bra.s loc_20995a
loc_209952:
	tst.b ($ff1956).l
	bne.s loc_20998e
loc_20995a:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_2099b8
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209988
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209988:
	jsr (sub_205cc0).l
loc_20998e:
	rts
	.incbin 39312, 40

sub_2099b8:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2099f0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2099e8
	moveq #$0,d1
	bra.s loc_2099f0
loc_2099e8:
	cmpi.w #$3,d1
	bcs.s loc_2099f0
	moveq #$2,d1
loc_2099f0:
	add.w d1,d0
	rts

sub_2099f4:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a16
	tst.b ($ff1956).l
	beq.s loc_209a0e
	tst.b $29(a0)
	bne.s loc_209a16
	rts
loc_209a0e:
	tst.b $29(a0)
	beq.s loc_209a16
	rts
loc_209a16:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2087d8).l
	tst.b $28(a0)
	bne.s loc_209a38
	tst.b ($ff0f01).l
	beq.s loc_209a38
	jmp (loc_2078a4).l
loc_209a38:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20986c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a50(pc,d0.w),d1
	jmp dat_209a50(pc,d1.w)
dat_209a50:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209e10,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a9a
	tst.b $29(a0)
	bne.s loc_209a9a
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209a9a:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_2099b8
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209ac6
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209ac6:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209b20
	move.b $25(a0),d0
	beq.s loc_209b00
	bsr.w sub_2039ee
	jsr (sub_206dbc).l
	tst.w d1
	bpl.w loc_209b0e
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209b0e
loc_209b00:
	tst.b $1(a0)
	bpl.s loc_209b0e
	lea ($d000).w,a1
	bsr.w sub_2099f4
loc_209b0e:
	tst.w ($ff190e).l
	bne.s loc_209b20
	lea (dat_209d88).l,a1
	bsr.w sub_205d00
loc_209b20:
	bsr.w sub_203aa6
	jmp (loc_2078a4).l
	.incbin 39722, 606
dat_209d88:
	.incbin 40328, 586
loc_209fd2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fe6(pc,d0.w),d0
	jsr dat_209fe6(pc,d0.w)
	jmp (sub_203aa6).l
dat_209fe6:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20a026,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20a020
	jmp (sub_203b52).l
loc_20a020:
	subq.w #$2,$c(a0)
	rts
	.incbin 40998, 82
	tst.b $28(a0)
	bmi.w loc_209fd2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a08e(pc,d0.w),d0
	jmp dat_20a08e(pc,d0.w)
dat_20a08e:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a128,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a0be
	move.b #$3,$1a(a0)
	bra.s loc_20a0de
loc_20a0be:
	tst.w ($ff1588).l
	beq.s loc_20a0cc
	move.b #$2,$1a(a0)
loc_20a0cc:
	tst.b $28(a0)
	beq.s loc_20a0de
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a0de:
	tst.b $28(a0)
	bne.s loc_20a122
	tst.b $29(a0)
	beq.s loc_20a10e
	tst.w ($ff1512).l
	beq.s loc_20a0fa
	bclr.b #$5,$2(a0)
	bra.s loc_20a122
loc_20a0fa:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a122
	eori.b #$20,$2(a0)
	bra.s loc_20a122
loc_20a10e:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a122
	move.b #$2,$1a(a0)
loc_20a122:
	jmp (sub_203aa6).l
	.incbin 41256, 168

sub_20a1d0:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a1ec
	move.l d1,(a3)
loc_20a1ec:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a216
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cc0).l
loc_20a216:
	rts
loc_20a218:
	tst.w ($ff1588).l
	beq.s loc_20a26e
	bsr.w sub_20a46a
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
	lea (dat_20a5ca).l,a2
	moveq #$2,d6
	bsr.w sub_20a622
	bra.w loc_20a2c8
loc_20a26e:
	tst.b ($ff1511).l
	beq.s loc_20a292
	bpl.s loc_20a27c
	bsr.w sub_20a414
loc_20a27c:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a504
loc_20a292:
	tst.b ($ff150f).l
	beq.s loc_20a2c8
	bpl.s loc_20a2a0
	bsr.w sub_20a400
loc_20a2a0:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a2c4
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a2c4:
	bsr.w sub_20a4fa
loc_20a2c8:
	tst.w ($ff1588).l
	bne.w loc_20a374
	tst.b ($ff1510).l
	beq.w loc_20a374
	tst.w ($f63a).w
	bne.w loc_20a374
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a3d2
	tst.b ($f7cc).w
	bne.s loc_20a31e
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a31e
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a31e
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a31e
	move.b #$9,(a1)
loc_20a31e:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a610
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a61a
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a370
	move.w #$63,d1
loc_20a370:
	bsr.w sub_20a61a
loc_20a374:
	tst.b ($ff150e).l
	beq.s loc_20a386
	clr.b ($ff150e).l
	bsr.w sub_20a5f0
loc_20a386:
	tst.b ($f7d6).w
	beq.s loc_20a3d0
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a3a6
	move.l #$6d400001,d0
loc_20a3a6:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a488
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a3c6
	move.l #$6e800001,d0
loc_20a3c6:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a488
loc_20a3d0:
	rts
loc_20a3d2:
	btst.b #$7,($ff152e).l
	bne.s loc_20a3fe
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2072ea
	move.b #$1,($ff150c).l
loc_20a3fe:
	rts

sub_20a400:
	move.l #$73600002,($c00004).l
	lea dat_20a466(pc),a2
	move.w #$2,d2
	bra.s loc_20a430

sub_20a414:
	lea ($c00000).l,a6
	bsr.w sub_20a5f0
	move.l #$70600002,($c00004).l
	lea dat_20a45e(pc),a2
	move.w #$6,d2
loc_20a430:
	lea (dat_238442).l,a1
loc_20a436:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a452
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a446:
	move.l (a3)+,(a6)
	dbf d1,loc_20a446
loc_20a44c:
	dbf d2,loc_20a436
	rts
loc_20a452:
	move.l #$0,(a6)
	dbf d1,loc_20a452
	bra.s loc_20a44c
dat_20a45e:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a466:
	dc.b $ff,$ff,$00,$00

sub_20a46a:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a5e6
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a5e6

sub_20a488:
	lea (dat_20a5c2).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a498:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a49c:
	sub.l d3,d1
	bcs.s loc_20a4a4
	addq.w #$1,d2
	bra.s loc_20a49c
loc_20a4a4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a4ae
	move.w #$1,d4
loc_20a4ae:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a4ba
	tst.w d6
	bne.s loc_20a4ec
loc_20a4ba:
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
loc_20a4e0:
	addi.l #$400000,d0
	dbf d6,loc_20a498
	rts
loc_20a4ec:
	moveq #$f,d5
loc_20a4ee:
	move.l #$0,(a6)
	dbf d5,loc_20a4ee
	bra.s loc_20a4e0

sub_20a4fa:
	lea (dat_20a5ca).l,a2
	moveq #$2,d6
	bra.s loc_20a50c

sub_20a504:
	lea (dat_20a5be).l,a2
	moveq #$5,d6
loc_20a50c:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a514:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a518:
	sub.l d3,d1
	bcs.s loc_20a520
	addq.w #$1,d2
	bra.s loc_20a518
loc_20a520:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a52a
	move.w #$1,d4
loc_20a52a:
	tst.w d4
	beq.s loc_20a558
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
loc_20a558:
	addi.l #$400000,d0
	dbf d6,loc_20a514
	rts
	.incbin 42340, 90
dat_20a5be:
	dc.b $00,$01,$86,$a0
dat_20a5c2:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a5ca:
	dc.b $00,$00,$00,$64
dat_20a5ce:
	dc.b $00,$00,$00,$0a
dat_20a5d2:
	dc.b $00,$00,$00,$01
dat_20a5d6:
	.incbin 42454, 16

sub_20a5e6:
	moveq #$3,d6
	lea (dat_20a5d6).l,a2
	bra.s sub_20a622

sub_20a5f0:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a606
	moveq #$9,d1
loc_20a606:
	lea (dat_20a5d2).l,a2
	moveq #$0,d6
	bra.s sub_20a622

sub_20a610:
	lea (dat_20a5d2).l,a2
	moveq #$0,d6
	bra.s sub_20a622

sub_20a61a:
	lea (dat_20a5ce).l,a2
	moveq #$1,d6

sub_20a622:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a62a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a62e:
	sub.l d3,d1
	bcs.s loc_20a636
	addq.w #$1,d2
	bra.s loc_20a62e
loc_20a636:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a640
	move.w #$1,d4
loc_20a640:
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
	dbf d6,loc_20a62a
	rts
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a688(pc,d0.w),d1
	jmp dat_20a688(pc,d1.w)
dat_20a688:
	dc.b $00,$0c,$00,$6a,$00,$84,$01,$3a
	dc.b $01,$58,$01,$5c
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	move.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20a6d8
	addq.b #$8,$24(a0)
	andi.w #$7f,d0
	move.b d0,$32(a0)
	move.b d0,$33(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20a7e4
loc_20a6d8:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	jsr (sub_202386).l
	move.b d0,$26(a0)
	lea (dat_20a97c).l,a1
	jsr (sub_205d00).l
	cmpi.b #$6,$1a(a0)
	bne.s loc_20a70c
	move.b #$1,$2e(a0)
loc_20a70c:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a724
loc_20a716:
	move.b #$6,$24(a0)
	addq.b #$3,$1c(a0)
	bra.w loc_20a7c2
loc_20a724:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23fa02).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20a7ac
	bsr.w sub_20a942
	beq.s loc_20a7ac
	bsr.w sub_206140
	move.w #$ad,d0
	jsr (sub_202598).l
	clr.w $10(a6)
	clr.w $12(a6)
	clr.w $14(a6)
	move.b #$15,$1c(a6)
	move.w #$23,$3e(a6)
	move.b #$0,$3c(a6)
	bclr.b #$5,$22(a6)
	bclr.b #$4,$22(a6)
	btst.b #$2,$22(a6)
	beq.w loc_20a716
	bclr.b #$2,$22(a6)
	move.b #$13,$16(a6)
	move.b #$9,$17(a6)
	subq.w #$5,$c(a6)
	bra.w loc_20a716
loc_20a7ac:
	bsr.w sub_203a50
	tst.b $1(a0)
	bpl.s loc_20a7bc
	jmp (sub_203aa6).l
loc_20a7bc:
	jmp (sub_203b52).l
loc_20a7c2:
	lea (dat_20a97c).l,a1
	jsr (sub_205d00).l
	tst.b $1(a0)
	bpl.s loc_20a7da
	jmp (sub_203aa6).l
loc_20a7da:
	jmp (sub_203b52).l
	dc.b $60,$00,$93,$70
loc_20a7e4:
	tst.w $36(a0)
	bne.s loc_20a846
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcc.w loc_20a8f8
	tst.b $1(a0)
	bpl.w loc_20a8f8
	subq.w #$1,$38(a0)
	bpl.w loc_20a8ec
	move.w #$1,$36(a0)
loc_20a80c:
	jsr (sub_202386).l
	move.w d0,d1
	andi.w #$7,d0
	cmpi.w #$6,d0
	bcc.s loc_20a80c
	move.b d0,$34(a0)
	andi.w #$c,d1
	lea (dat_20a930).l,a1
	adda.w d1,a1
	move.l a1,$3c(a0)
	subq.b #$1,$32(a0)
	bpl.s loc_20a844
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20a844:
	bra.s loc_20a84e
loc_20a846:
	subq.w #$1,$38(a0)
	bpl.w loc_20a8ec
loc_20a84e:
	jsr (sub_202386).l
	andi.w #$1f,d0
	move.w d0,$38(a0)
	tst.b $1(a0)
	bpl.s loc_20a8d0
	bsr.w sub_20786e
	bne.s loc_20a8d0
	move.b #$20,$0(a1)
	move.w $8(a0),$8(a1)
	jsr (sub_202386).l
	andi.w #$f,d0
	subq.w #$8,d0
	add.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$0,d0
	move.b $34(a0),d0
	movea.l $3c(a0),a2
	move.b $0(a2,d0.w),$28(a1)
	btst.b #$7,$36(a0)
	beq.s loc_20a8d0
	jsr (sub_202386).l
	andi.w #$3,d0
	bne.s loc_20a8bc
	bset.b #$6,$36(a0)
	bne.s loc_20a8d0
	move.b #$2,$28(a1)
loc_20a8bc:
	tst.b $34(a0)
	bne.s loc_20a8d0
	bset.b #$6,$36(a0)
	bne.s loc_20a8d0
	move.b #$2,$28(a1)
loc_20a8d0:
	subq.b #$1,$34(a0)
	bpl.s loc_20a8ec
	jsr (sub_202386).l
	andi.w #$7f,d0
	addi.w #$80,d0
	add.w d0,$38(a0)
	clr.w $36(a0)
loc_20a8ec:
	lea (dat_20a97c).l,a1
	jsr (sub_205d00).l
loc_20a8f8:
	tst.b $1(a0)
	bmi.s loc_20a91c
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b52
loc_20a91c:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.w sub_203aa6
	bclr.b #$7,$1(a0)
	rts
dat_20a930:
	.incbin 43312, 18

sub_20a942:
	tst.b $2c(a6)
	bmi.s loc_20a978
	move.w $8(a6),d0
	move.w $8(a0),d1
	subi.w #$10,d1
	cmp.w d0,d1
	bcc.s loc_20a978
	addi.w #$20,d1
	cmp.w d0,d1
	bcs.s loc_20a978
	move.w $c(a6),d0
	move.w $c(a0),d1
	cmp.w d0,d1
	bcc.s loc_20a978
	addi.w #$10,d1
	cmp.w d0,d1
	bcs.s loc_20a978
	moveq #$1,d0
	rts
loc_20a978:
	moveq #$0,d0
	rts
dat_20a97c:
	.incbin 43388, 2674
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b3fc(pc,d0.w),d0
	jmp dat_20b3fc(pc,d0.w)
dat_20b3fc:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205cc0).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20b4d2,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20b458
	tst.b ($ff1508).l
	beq.s loc_20b460
	move.l #$20b4d6,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20b460
loc_20b458:
	tst.b ($ff1508).l
	bne.s loc_20b470
loc_20b460:
	bset.b #$7,($ff156b).l
	jsr (sub_20786e).l
	beq.s loc_20b476
loc_20b470:
	jmp (sub_203b52).l
loc_20b476:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20b4b8
	move.w #$6e,d0
	jmp (sub_205cc0).l
loc_20b4b8:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b4cc
	bge.s loc_20b4c8
	neg.w d0
loc_20b4c8:
	add.w d0,$8(a0)
loc_20b4cc:
	jmp (sub_203aa6).l
	.incbin 46290, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b518(pc,d0.w),d0
	jmp dat_20b518(pc,d0.w)
dat_20b518:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20bc16,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20bbd6).l,a2
loc_20b566:
	jsr (sub_20786e).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20bc16,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b5b8
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b5b8:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b566
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b5e0
	bge.s loc_20b5d6
	neg.w d0
loc_20b5d6:
	add.w d0,$a(a0)
	jmp (sub_203aa6).l
loc_20b5e0:
	addq.b #$4,$24(a0)
	jmp (sub_203aa6).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b604
	bge.s loc_20b5fa
	neg.w d0
loc_20b5fa:
	add.w d0,$8(a0)
	jmp (sub_203aa6).l
loc_20b604:
	addq.b #$4,$24(a0)
	jmp (sub_203aa6).l
	tst.b $1e(a0)
	beq.s loc_20b61e
	subq.b #$1,$1e(a0)
	jmp (sub_203aa6).l
loc_20b61e:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b638
	bge.s loc_20b62e
	neg.w d0
loc_20b62e:
	add.w d0,$a(a0)
	jmp (sub_203aa6).l
loc_20b638:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202762).l
	tst.b $1e(a0)
	beq.s loc_20b65a
	subq.b #$1,$1e(a0)
	jmp (sub_203aa6).l
loc_20b65a:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b674
	bge.s loc_20b66a
	neg.w d0
loc_20b66a:
	add.w d0,$8(a0)
	jmp (sub_203aa6).l
loc_20b674:
	jmp (sub_203b52).l
	tst.l ($f680).w
	bne.s loc_20b68e
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b52).l
loc_20b68e:
	rts
	.incbin 46736, 1350
dat_20bbd6:
	.incbin 48086, 320
dat_20bd16:
	.incbin 48406, 668

sub_20bfb2:
	rts
	.incbin 49076, 450

sub_20c176:
	movem.l d2-d3,-(a7)
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	movem.l (a7)+,d2-d3
	rts
	.incbin 49546, 196
loc_20c24e:
	tst.w $12(a0)
	bpl.s loc_20c258
	bsr.w sub_20c176
loc_20c258:
	move.l $c(a0),-(a7)
	moveq #$0,d0
	move.b $3a(a0),d0
	jsr (sub_200700).l
	move.w d0,d1
	asl.w d2,d0
	asl.w d3,d1
	add.w d1,d0
	asr.w #$8,d0
	addq.b #$1,$3a(a0)
	add.w $32(a0),d0
	move.w d0,$c(a0)
	swap d0
	sub.l (a7)+,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	tst.w $12(a0)
	bmi.s loc_20c292
	bsr.w sub_20c176
loc_20c292:
	rts
	.incbin 49812, 58
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c318,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),d0
	subi.w #$50,d0
	move.w d0,$32(a0)
	move.b #$20,$19(a0)
	move.b #$60,$16(a0)
	move.b #$40,$3a(a0)
	moveq #$6,d2
	moveq #$4,d3
	bra.w loc_20c24e
	.incbin 49944, 2120
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20cb70(pc,d0.w),d0
	jmp dat_20cb70(pc,d0.w)
dat_20cb70:
	.incbin 52080, 18

sub_20cb82:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2087d8).l
loc_20cb94:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20cbb2
	rts
loc_20cbb2:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cbd6
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cbd6:
	jmp (sub_203b52).l
	.incbin 52188, 898
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cf76(pc,d0.w),d0
	jsr dat_20cf76(pc,d0.w)
	jsr (sub_203aa6).l
	bra.w loc_20cb94
dat_20cf76:
	dc.b $00,$04,$00,$9a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20d042,$4(a0)
	move.b #$40,$19(a0)
	move.b #$40,$16(a0)
	tst.b $3d(a0)
	beq.s loc_20cfb8
	move.l #$20ccec,$4(a0)
	move.b #$10,$16(a0)
loc_20cfb8:
	tst.b $3c(a0)
	bne.s loc_20d008
	move.w $8(a0),$36(a0)
	jsr (sub_20786e).l
	bne.s loc_20d008
	move.b #$24,$0(a1)
	move.b #$4,$28(a1)
	move.b #$1,$3c(a1)
	move.b $3d(a0),$3d(a1)
	move.w $36(a0),$36(a1)
	move.w $36(a0),d0
	addi.w #$80,d0
	move.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	move.w $36(a0),d0
	subi.w #$80,d0
	move.w d0,$8(a0)
loc_20d008:
	move.w #$fe00,$10(a0)
	rts
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	bsr.w sub_20cb82
	move.w $36(a0),d0
	sub.w $8(a0),d0
	bcs.s loc_20d032
	cmpi.w #$100,d0
	bne.s loc_20d032
	bsr.s sub_20d034
loc_20d032:
	rts

sub_20d034:
	move.w $36(a0),d1
	addi.w #$100,d1
	move.w d1,$8(a0)
	rts
	.incbin 53314, 312
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d192(pc,d0.w),d0
	jsr dat_20d192(pc,d0.w)
	jsr (sub_203aa6).l
	bra.w loc_20cb94
dat_20d192:
	dc.b $00,$04,$00,$b4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20d284,$4(a0)
	move.b #$10,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20d210
	move.w $8(a0),d0
	move.w d0,$36(a0)
	moveq #$1,d1
	moveq #$2,d2
loc_20d1cc:
	jsr (sub_20786e).l
	bne.s loc_20d20a
	move.b #$24,$0(a1)
	move.b #$6,$28(a1)
	move.b d1,$3c(a1)
	move.w $36(a0),$36(a1)
	move.b d1,d0
	asl.b #$4,d0
	ext.w d0
	neg.w d0
	add.w $8(a0),d0
	move.w d0,$8(a1)
	moveq #$0,d0
	move.b d1,d0
	mulu.w #$20,d0
	add.w $c(a0),d0
	move.w d0,$c(a1)
loc_20d20a:
	addq.b #$1,d1
	dbf d2,loc_20d1cc
loc_20d210:
	moveq #$0,d0
	move.b $3c(a0),d0
	move.b d0,$1a(a0)
	addq.b #$1,d0
	move.b d0,$3b(a0)
	move.b $3c(a0),d0
	moveq #$0,d1
loc_20d226:
	addi.b #$10,d1
	dbf d0,loc_20d226
	move.b d1,$19(a0)
	andi.w #$ff,d1
	move.w $8(a0),d0
	add.w d1,d0
	move.w d0,$32(a0)
	move.b #$80,$3a(a0)
	move.w $8(a0),-(a7)
	moveq #$0,d0
	move.b $3a(a0),d0
	jsr (sub_200700).l
	moveq #$0,d2
	moveq #$0,d3
	move.b $3b(a0),d2
	beq.s loc_20d266
loc_20d260:
	add.w d0,d3
	subq.b #$1,d2
	bne.s loc_20d260
loc_20d266:
	asr.w #$4,d3
	move.w d3,d0
	add.w $32(a0),d0
	move.w d0,$8(a0)
	move.w (a7)+,d1
	sub.w d1,d0
	asl.w #$8,d0
	move.w d0,$10(a0)
	addq.b #$1,$3a(a0)
	bra.w sub_20cb82
	.incbin 53892, 64
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d2dc(pc,d0.w),d0
	jsr dat_20d2dc(pc,d0.w)
	jsr (sub_203aa6).l
	bra.w loc_20cb94
dat_20d2dc:
	dc.b $00,$04,$00,$ae
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20ccec,$4(a0)
	move.b #$40,$19(a0)
	move.b #$10,$16(a0)
	tst.b $3c(a0)
	bne.w loc_20d382
	move.w $8(a0),$36(a0)
	jsr (sub_20786e).l
	bne.s loc_20d344
	move.b #$24,$0(a1)
	move.b #$4,$28(a1)
	move.b #$8,$3d(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),d0
	subi.w #$60,d0
	move.w d0,$c(a1)
loc_20d344:
	jsr (sub_20786e).l
	bne.s loc_20d382
	move.b #$24,$0(a1)
	move.b #$8,$28(a1)
	move.b #$1,$3c(a1)
	move.w $36(a0),$36(a1)
	move.w $36(a0),d0
	subi.w #$80,d0
	move.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	move.w $36(a0),d0
	addi.w #$80,d0
	move.w d0,$8(a0)
loc_20d382:
	move.w #$200,$10(a0)
	rts
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	bsr.w sub_20cb82
	move.w $8(a0),d0
	sub.w $36(a0),d0
	bcs.s loc_20d3ac
	cmpi.w #$100,d0
	bne.s loc_20d3ac
	bsr.s sub_20d3ae
loc_20d3ac:
	rts

sub_20d3ae:
	move.w $36(a0),d1
	subi.w #$100,d1
	move.w d1,$8(a0)
	rts
	tst.b $24(a0)
	bne.w loc_20d406
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$50a,$2(a0)
	move.l #$20d522,$4(a0)
	move.b #$a,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20d406:
	move.w $34(a0),d0
	beq.s loc_20d436
	movea.w d0,a1
	move.w $8(a0),d1
	move.b $38(a0),d0
	ext.w d0
	add.w $8(a1),d0
	move.w d0,$8(a0)
	sub.w d1,d0
	asl.w #$8,d0
	move.w d0,$10(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w $c(a1),d0
	move.w d0,$c(a0)
loc_20d436:
	move.b $3f(a0),$3e(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	beq.s loc_20d454
	bsr.w sub_20d506
loc_20d454:
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20d464
	bclr.b #$7,(a4)
	bra.s loc_20d470
loc_20d464:
	bsr.w sub_20d506
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20d470:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20d4aa
	tst.b $1(a0)
	bpl.s loc_20d488
	move.w #$bf,d0
	jsr (sub_202598).l
loc_20d488:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d49c
	addq.b #$4,$39(a0)
	bra.s loc_20d4a0
loc_20d49c:
	addq.w #$4,$c(a0)
loc_20d4a0:
	move.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20d4aa:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20d4ce
	subq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d4c2
	subq.b #$4,$39(a0)
	bra.s loc_20d4c6
loc_20d4c2:
	subq.w #$4,$c(a0)
loc_20d4c6:
	clr.b $1a(a0)
	addq.b #$4,$16(a0)
loc_20d4ce:
	jsr (sub_203aa6).l
	move.w $34(a0),d0
	bne.s loc_20d4e0
	jmp (loc_2078a4).l
loc_20d4e0:
	movea.w d0,a1
	move.w $36(a1),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20d500
	rts
loc_20d500:
	jmp (loc_2078c6).l

sub_20d506:
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$1,d0
	move.w d0,$c(a1)
	rts
	.incbin 54562, 976
	jsr (sub_20fd2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d916(pc,d0.w),d0
	jsr dat_20d916(pc,d0.w)
	jsr (sub_203aa6).l
	move.w $3e(a0),d0
	jmp (loc_2078a8).l
dat_20d916:
	dc.b $00,$04,$00,$7e
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$2c,$20(a0)
	move.b #$1,$18(a0)
	move.b #$1c,$17(a0)
	move.b #$1c,$19(a0)
	move.b #$10,$16(a0)
	move.w #$2416,$2(a0)
	move.w $8(a0),$3e(a0)
	move.l $c(a0),$2a(a0)
	lea dat_20d9f0(pc),a1
	move.l #$ffff0000,d0
	move.w #$4,d1
	move.w #$100,d2
	tst.b $28(a0)
	beq.s loc_20d97e
	lea dat_20daae(pc),a1
	move.l #$ffff8000,d0
	move.w #$1,d1
	move.w #$200,d2
loc_20d97e:
	move.l a1,$4(a0)
	move.l d0,$30(a0)
	move.w d1,$34(a0)
	move.w d2,$38(a0)
	lsr.w #$1,d2
	move.w d2,$36(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $2e(a0),d0
	jsr (sub_200700).l
	swap d0
	clr.w d0
	asr.l #$4,d0
	add.l $2a(a0),d0
	move.l d0,$c(a0)
	move.w $34(a0),d0
	add.w d0,$2e(a0)
	addi.w #$ffff,$36(a0)
	bne.s loc_20d9da
	move.w $38(a0),$36(a0)
	neg.l $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20d9da:
	lea dat_20d9e4(pc),a1
	jmp (sub_205d00).l
dat_20d9e4:
	dc.b $00,$04,$00,$08,$02,$00,$01,$ff
	dc.b $04,$00,$02,$ff
dat_20d9f0:
	.incbin 55792, 190
dat_20daae:
	.incbin 55982, 994
	tst.b $28(a0)
	bpl.s loc_20de9a
	bra.w loc_20e228
loc_20de9a:
	jsr (sub_20fd2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20deba(pc,d0.w),d0
	jsr dat_20deba(pc,d0.w)
	jsr (sub_203aa6).l
	jmp (loc_2078a4).l
dat_20deba:
	dc.b $00,$0a,$01,$46,$02,$38,$02,$de
	dc.b $03,$0e
	move.w $8(a0),$38(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$23d0,$2(a0)
	move.b #$14,$17(a0)
	move.b #$14,$19(a0)
	move.b #$8,$16(a0)
	move.b #$2d,$20(a0)
	addq.b #$2,$24(a0)
	move.l #$20e1f4,$4(a0)
	move.l #$ffff0000,$2c(a0)
	move.w #$c8,$36(a0)
	tst.b $28(a0)
	beq.s loc_20df2c
	move.l #$20e20e,$4(a0)
	move.l #$ffff8000,$2c(a0)
	move.w #$190,$36(a0)
	rts
loc_20df2c:
	jsr (sub_20786e).l
	bne.w loc_20e2a0
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$30(a0)
	jsr (sub_20786e).l
	bne.w loc_20e2a0
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$32(a0)
	jsr (sub_20786e).l
	bne.w loc_20e2a0
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$34(a0)
	movea.w $30(a0),a6
	bsr.s sub_20dfce
	addq.w #$2,$8(a6)
	addi.w #$fff6,$c(a6)
	movea.w $32(a0),a6
	bsr.s sub_20dfce
	addi.w #$fffd,$8(a6)
	addi.w #$fff6,$c(a6)
	movea.w $34(a0),a6
	bsr.s sub_20dfce
	addi.w #$fff9,$8(a6)
	addi.w #$fff7,$c(a6)
	rts

sub_20dfce:
	move.w $8(a0),$8(a6)
	move.w $c(a0),$c(a6)
	ori.b #$4,$1(a6)
	move.w #$23d0,$2(a6)
	move.b #$3,$18(a6)
	move.b #$2,$17(a6)
	move.b #$2,$19(a6)
	move.b #$2,$16(a6)
	rts
	tst.b $28(a0)
	bne.s loc_20e012
	lea ($d000).w,a6
	bsr.w sub_20e0b8
	bcs.w loc_20e0e6
loc_20e012:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20e038
	movea.w $30(a0),a1
	add.l d0,$8(a1)
	movea.w $32(a0),a1
	add.l d0,$8(a1)
	movea.w $34(a0),a1
	add.l d0,$8(a1)
loc_20e038:
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20e0ae
	move.w $36(a0),$2a(a0)
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	tst.b $28(a0)
	bne.s loc_20e0ae
	movea.w $30(a0),a1
	movea.w $32(a0),a2
	movea.w $34(a0),a3
	move.w $8(a0),$8(a1)
	move.w $8(a0),$8(a2)
	move.w $8(a0),$8(a3)
	move.w #$fffe,d1
	move.w #$3,d2
	move.w #$7,d3
	btst.b #$0,$1(a0)
	beq.s loc_20e0a2
	neg.w d1
	neg.w d2
	neg.w d3
	addi.w #$fffd,d1
	addi.w #$fffd,d2
	addi.w #$fffd,d3
loc_20e0a2:
	add.w d1,$8(a1)
	add.w d2,$8(a2)
	add.w d3,$8(a3)
loc_20e0ae:
	lea dat_20e1ee(pc),a1
	jmp (sub_205d00).l

sub_20e0b8:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffc8,d0
	subi.w #$38,d0
	bcc.s loc_20e0e4
	move.w $8(a6),d0
	sub.w $8(a0),d0
	btst.b #$0,$1(a0)
	bne.s loc_20e0dc
	neg.w d0
loc_20e0dc:
	subi.w #$28,d0
	subi.w #$78,d0
loc_20e0e4:
	rts
loc_20e0e6:
	addq.b #$2,$24(a0)
	move.w #$3c,$2a(a0)
	rts
	.incbin 57586, 252
dat_20e1ee:
	.incbin 57838, 58
loc_20e228:
	movea.w $3e(a0),a1
	cmpi.b #$2d,$0(a1)
	bne.w loc_20e2a0
	move.b $23(a1),d0
	cmp.b $3d(a0),d0
	bne.w loc_20e2a0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e250(pc,d0.w),d0
	jmp dat_20e250(pc,d0.w)
dat_20e250:
	.incbin 57936, 80
loc_20e2a0:
	jmp (sub_203b52).l
	.incbin 58022, 1270
	jsr (sub_20fd74).l
	tst.b $24(a0)
	bmi.w loc_20e870
	bne.w loc_20e900
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20e9da(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e7f6
	addi.w #$2000,$2(a0)
loc_20e7f6:
	lea dat_20e98a(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20e806
	lea dat_20e9b2(pc),a1
loc_20e806:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20e854
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20e852
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20e852:
	rts
loc_20e854:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20e870:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20e882
	tst.b $3f(a1)
	beq.s loc_20e888
loc_20e882:
	jmp (sub_203b52).l
loc_20e888:
	move.b $32(a0),d0
	jsr (sub_200700).l
	swap d1
	swap d0
	asr.l #$3,d1
	asr.l #$4,d0
	addi.l #$8000,d1
	addi.l #$8000,d0
	swap d1
	swap d0
	add.w $38(a0),d1
	add.w $2e(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	move.l $30(a0),d0
	andi.l #$7fff,d0
	bne.s loc_20e8f0
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20e8ea
	move.b #$5,$18(a0)
	bra.s loc_20e8f0
loc_20e8ea:
	move.b #$3,$18(a0)
loc_20e8f0:
	lea dat_20e964(pc),a1
	jsr (sub_205d00).l
	jmp (sub_203aa6).l
loc_20e900:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.b $32(a0),d0
	jsr (sub_200700).l
	swap d0
	asr.l #$3,d0
	addi.l #$8000,d0
	swap d0
	add.w $2e(a0),d0
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	bmi.s loc_20e93a
	cmpi.l #$10000,$30(a0)
	blt.s loc_20e94e
loc_20e93a:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e94e:
	lea dat_20e964(pc),a1
	jsr (sub_205d00).l
	jsr (sub_203aa6).l
	jmp (loc_2078a4).l
dat_20e964:
	.incbin 59748, 38
dat_20e98a:
	.incbin 59786, 40
dat_20e9b2:
	.incbin 59826, 40
dat_20e9da:
	.incbin 59866, 598
	tst.b $24(a0)
	bne.s loc_20ec74
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20ec98,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20ec8a(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20ec74:
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	jsr (sub_203aa6).l
	jmp (loc_2078a4).l
dat_20ec8a:
	.incbin 60554, 1098
	tst.b $24(a0)
	bne.s loc_20f110
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$a9,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$370,$2(a0)
	move.l #$20f11c,$4(a0)
loc_20f110:
	jsr (sub_203aa6).l
	jmp (loc_2078a4).l
	dc.b $00,$02,$01,$f0,$0f,$00,$00,$f0
	tst.w $3e(a0)
	beq.s loc_20f13c
	movea.w $3e(a0),a1
	cmpi.b #$38,$0(a1)
	beq.s loc_20f13c
	jmp (sub_203b52).l
loc_20f13c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f14a(pc,d0.w),d0
	jmp dat_20f14a(pc,d0.w)
dat_20f14a:
	dc.b $00,$04,$01,$1e
	move.w $8(a0),$34(a0)
	jsr (sub_20786e).l
	beq.s loc_20f162
	jmp (sub_203b52).l
loc_20f162:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	lea (a1),a3
	jsr (sub_20786e).l
	beq.s loc_20f182
	jmp (sub_203b52).l
loc_20f182:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	lea (a1),a2
	jsr (sub_20786e).l
	beq.s loc_20f1a2
	jmp (sub_203b52).l
loc_20f1a2:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	move.w #$f800,d0
	tst.b $28(a0)
	bpl.s loc_20f1be
	neg.w d0
loc_20f1be:
	move.w d0,d1
	move.w d0,$2e(a1)
	add.w d0,d0
	move.w d0,$2e(a2)
	add.w d1,d0
	move.w d0,$2e(a3)
	move.w #$100,$30(a0)
	tst.b $28(a0)
	bpl.s loc_20f1e0
	neg.w $30(a0)
loc_20f1e0:
	move.b $28(a0),d0
	bpl.s loc_20f1e8
	neg.b d0
loc_20f1e8:
	andi.w #$7f,d0
	move.w d0,$32(a0)
	move.b #$1,$18(a0)
	move.b #$2,$18(a1)
	move.b #$3,$18(a2)
	move.b #$4,$18(a3)
	lea (a0),a6
	bsr.w sub_20f21c
	lea (a1),a6
	bsr.w sub_20f21c
	lea (a2),a6
	bsr.w sub_20f21c
	lea (a3),a6

sub_20f21c:
	ori.b #$4,$1(a6)
	move.b #$a9,$20(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$10,$16(a6)
	move.w #$370,$2(a6)
	move.l #$20f2a8,$4(a6)
	move.b #$2,$24(a6)
	move.w $8(a0),$2a(a6)
	move.w $c(a0),$2c(a6)
	move.w $30(a0),$30(a6)
	move.w $32(a0),$32(a6)
	rts
	move.w $30(a0),d0
	add.w d0,$2e(a0)
	move.w $2e(a0),d0
	asr.w #$8,d0
	jsr (sub_200700).l
	move.w $32(a0),d3
	asr.w d3,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	jsr (sub_203aa6).l
	tst.w $3e(a0)
	bne.s loc_20f2a6
	jmp (loc_2078a4).l
loc_20f2a6:
	rts
	.incbin 62120, 842
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f62a(pc,d0.w),d0
	jsr dat_20f62a(pc,d0.w)
	jsr (sub_203aa6).l
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20f624
	rts
loc_20f624:
	jmp (sub_203b52).l
dat_20f62a:
	dc.b $00,$34,$00,$fc

sub_20f62e:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jsr (sub_2087d2).l
	beq.s loc_20f65c
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$2,d0
	move.w d0,$c(a1)
loc_20f65c:
	rts
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$4340,$2(a0)
	cmpi.b #$2,($ff1507).l
	bne.s loc_20f67e
	move.w #$4400,$2(a0)
loc_20f67e:
	move.l #$20f7c8,$4(a0)
	move.b #$20,$19(a0)
	move.b #$8,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20f6d2
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$1,d1
	moveq #$7,d2
loc_20f6a8:
	jsr (sub_20786e).l
	bne.s loc_20f6cc
	move.b #$3e,$0(a1)
	move.b $28(a0),$28(a1)
	move.b d1,$3c(a1)
	move.w $36(a0),$36(a1)
	move.w $32(a0),$32(a1)
loc_20f6cc:
	addq.b #$1,d1
	dbf d2,loc_20f6a8
loc_20f6d2:
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	lea dat_20f714(pc,d0.w),a1
	move.b (a1)+,$3e(a0)
	move.b (a1)+,$1a(a0)
	move.b #$1,$18(a0)
	tst.b $1a(a0)
	beq.s loc_20f6fe
	move.b #$3,$18(a0)
	subi.w #$4000,$2(a0)
loc_20f6fe:
	move.w #$100,d0
	btst.b #$4,$28(a0)
	beq.s loc_20f70c
	neg.w d0
loc_20f70c:
	move.w d0,$30(a0)
	bra.w loc_20f726
dat_20f714:
	.incbin 63252, 18
loc_20f726:
	bsr.w sub_20f794
	move.w $30(a0),d0
	add.w d0,$3e(a0)
	moveq #$0,d0
	moveq #$0,d1
	move.b $3e(a0),d0
	jsr (sub_200700).l
	muls.w #$6,d0
	muls.w #$6,d1
	asr.w #$4,d0
	asr.w #$4,d1
	swap d0
	swap d1
	moveq #$0,d4
	moveq #$0,d5
	move.w $32(a0),d4
	move.w $36(a0),d5
	swap d4
	swap d5
	add.l d4,d0
	add.l d5,d1
	move.l $c(a0),d2
	move.l $8(a0),d3
	move.l d0,$c(a0)
	move.l d1,$8(a0)
	sub.l d2,d0
	sub.l d3,d1
	asl.l #$8,d0
	asl.l #$8,d1
	swap d0
	swap d1
	move.w d0,$12(a0)
	move.w d1,$10(a0)
	tst.b $1a(a0)
	bne.s loc_20f792
	bsr.w sub_20f62e
loc_20f792:
	rts

sub_20f794:
	btst.b #$7,$28(a0)
	bne.s loc_20f7c6
	move.b $28(a0),d0
	andi.w #$f,d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	beq.s loc_20f7c2
	tst.b $3d(a0)
	bne.s loc_20f7c6
	neg.w $30(a0)
	move.b #$1,$3d(a0)
	rts
loc_20f7c2:
	clr.b $3d(a0)
loc_20f7c6:
	rts
	.incbin 63432, 468
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f9aa(pc,d0.w),d0
	jmp dat_20f9aa(pc,d0.w)
dat_20f9aa:
	dc.b $00,$06,$00,$3c,$00,$d6
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	adda.w d0,a1
	tst.b (a1)
	bne.w loc_20fa9e
	move.l a1,$30(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.l #$20faa4,$4(a0)
	move.l #$40400340,$16(a0)
	movea.l $30(a0),a1
	tst.b (a1)
	bne.s loc_20fa04
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	jsr (sub_203aa6).l
	jmp (loc_2078a4).l
loc_20fa04:
	addq.b #$2,$24(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$80,$2a(a0)
	move.l #$ffff0000,$2c(a0)
	addq.b #$1,$1a(a0)
	subi.w #$30,$8(a0)
	move.w #$2,d6
	move.w $8(a0),d5
loc_20fa34:
	jsr (sub_207884).l
	bne.w loc_20fa9e
	movea.w a0,a2
	movea.w a1,a3
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
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	move.l (a2)+,(a3)+
	addi.w #$20,d5
	move.w d5,$8(a1)
	move.w d6,d0
	andi.w #$1,d0
	bne.s loc_20fa7a
	neg.l $2c(a1)
	addq.b #$1,$1a(a1)
loc_20fa7a:
	dbf d6,loc_20fa34
	bra.s loc_20fa8e
	dc.b $53,$68,$00,$2a,$6b,$18,$20,$28
	dc.b $00,$2c,$d1,$a8,$00,$0c
loc_20fa8e:
	lea ($d000).w,a1
	jsr (sub_2087d8).l
	jmp (sub_203aa6).l
loc_20fa9e:
	jmp (sub_203b52).l
	.incbin 64164, 648

sub_20fd2c:
	tst.b ($ff156a).l
	beq.s loc_20fd72
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fd44
	tst.b $28(a0)
	beq.s loc_20fd72
loc_20fd44:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b52).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fd70
	move.w #$9e,d0
	jsr (sub_202598).l
loc_20fd70:
	addq.l #$4,a7
loc_20fd72:
	rts

sub_20fd74:
	tst.b $28(a0)
	bmi.s loc_20fda4
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fd94
	tst.b ($ff156d).l
	bne.s loc_20fda4
	addq.l #$4,a7
	jmp (loc_2078a4).l
loc_20fd94:
	tst.b ($ff156a).l
	bne.s loc_20fda4
	addq.l #$4,a7
	jmp (sub_203b52).l
loc_20fda4:
	rts

sub_20fda6:
	jmp (loc_2067ac).l
dat_20fdac:
	.incbin 64940, 16
dat_20fdbc:
	.incbin 64956, 66116
dat_220000:
	.incbin 131072, 80422
dat_233a26:
	.incbin 211494, 18588
dat_2382c2:
	.incbin 230082, 384
dat_238442:
	.incbin 230466, 2624
dat_238e82:
	.incbin 233090, 2804
dat_239976:
	.incbin 235894, 256
dat_239a76:
	.incbin 236150, 4096
dat_23aa76:
	.incbin 240246, 4796
dat_23bd32:
	.incbin 245042, 15204
dat_23f896:
	.incbin 260246, 198
dat_23f95c:
	.incbin 260444, 166
dat_23fa02:
	.incbin 260610, 1534
