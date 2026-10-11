; R41D__.MMD
; disassembled from the disc; code only, data comes from data/R41D__.MMD at build time
	.file "R41D__.MMD", 262144

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
	bsr.w sub_207874
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
	lea (dat_20f460).l,a2
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
	bsr.w sub_202c9e
	bset.b #$2,($f754).w
	bsr.w sub_2035cc
	bsr.w sub_20357e
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
	jsr (sub_20f45a).l
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
	jsr (sub_205cd4).l
	bsr.w sub_207874
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
	jsr (sub_20788a).l
	jsr (sub_2039d2).l
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
	bsr.w sub_202c9e
loc_2018d8:
	bsr.w sub_201c40
	jsr (sub_203b7c).l
	tst.w ($ff190e).l
	bne.s loc_2018ee
	bsr.w sub_200184
loc_2018ee:
	jsr (sub_20c230).l
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
	jmp (sub_205cd4).l
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
	lea (dat_20bd1e).l,a2
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
	jmp (sub_205cd4).l
loc_201d8e:
	tst.b ($ff151f).l
	bne.s loc_201d84
	tst.b ($ff1520).l
	bne.s loc_201d84
	move.w #$90,d0
	jmp (sub_205cd4).l
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
	jmp (sub_205cd4).l
loc_201dca:
	tst.b ($ff151f).l
	bne.s loc_201dc0
	tst.b ($ff1520).l
	bne.s loc_201dc0
	move.w #$91,d0
	jmp (sub_205cd4).l
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
	bsr.w sub_205bf6
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
	jsr (sub_20f45a).l
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
	bsr.w sub_20325a
	bsr.w sub_202840
	jmp (loc_20a220).l
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
	bsr.w sub_20325a
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
	bsr.w sub_205bf6
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
	lea (dat_20f470).l,a1
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
	lea (dat_20f470).l,a1
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
	dc.b $05,$10,$00,$60
dat_202b9e:
	.incbin 11166, 32
loc_202bbe:
	tst.b ($ff1522).l
	beq.s loc_202bda
	jsr (sub_206b9c).l
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
	dc.b $00,$50,$00,$40
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
	lea ($a800).w,a2
	moveq #$e,d2
loc_202c96:
	clr.l (a2)+
	dbf d2,loc_202c96
	rts

sub_202c9e:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202caa
	rts
loc_202caa:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202ed0
	bsr.w sub_202f70
	bsr.w sub_203666
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
	bsr.w sub_2030c2
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
loc_202d26:
	move.w d0,(a1)+
	dbf d6,loc_202d26
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f700).w,d0
	neg.w d0
	move.w d0,d5
	swap d0
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$7f8,d0
	lsr.w #$2,d0
	lea $0(a2,d0.w),a2
	bra.w loc_202d52
loc_202d52:
	lea (dat_202dd0).l,a3
	lea (dat_23fb68).l,a4
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
loc_202d88:
	cmp.w ($f646).w,d1
	bge.s loc_202da8
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202da2
	moveq #$0,d2
	move.w (a2)+,d0
loc_202da2:
	dbf d6,loc_202d88
	rts
loc_202da8:
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
	bne.s loc_202dca
	moveq #$0,d2
	move.w (a2)+,d0
loc_202dca:
	dbf d6,loc_202da8
	rts
dat_202dd0:
	.incbin 11728, 256

sub_202ed0:
	move.w ($f700).w,d4
	bsr.s sub_202f04
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202f02
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202efc
	bset.b #$2,($f754).w
	rts
loc_202efc:
	bset.b #$3,($f754).w
loc_202f02:
	rts

sub_202f04:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202f16
	bcs.s loc_202f46
	bra.s loc_202f1c
loc_202f16:
	clr.w ($f73a).w
	rts
loc_202f1c:
	cmpi.w #$10,d0
	blt.s loc_202f26
	move.w #$10,d0
loc_202f26:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202f34
	move.w ($f72a).w,d0
loc_202f34:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202f46:
	cmpi.w #$fff0,d0
	bge.s loc_202f50
	move.w #$fff0,d0
loc_202f50:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202f34
	move.w ($f728).w,d0
	bra.s loc_202f34
	.incbin 12128, 16

sub_202f70:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202f84
	subq.w #$5,d0
loc_202f84:
	btst.b #$1,$22(a6)
	beq.s loc_202fa4
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ff0
	subi.w #$40,d0
	bcc.s loc_202ff0
	tst.b ($f75c).w
	bne.s loc_203002
	bra.s loc_202fb0
loc_202fa4:
	sub.w ($f73e).w,d0
	bne.s loc_202fb6
	tst.b ($f75c).w
	bne.s loc_203002
loc_202fb0:
	clr.w ($f73c).w
	rts
loc_202fb6:
	cmpi.w #$60,($f73e).w
	bne.s loc_202fde
	move.w $14(a6),d1
	bpl.s loc_202fc6
	neg.w d1
loc_202fc6:
	cmpi.w #$800,d1
	bcc.s loc_202ff0
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_203050
	cmpi.w #$fffa,d0
	blt.s loc_20301a
	bra.s loc_203008
loc_202fde:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_203050
	cmpi.w #$fffe,d0
	blt.s loc_20301a
	bra.s loc_203008
loc_202ff0:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_203050
	cmpi.w #$fff0,d0
	blt.s loc_20301a
	bra.s loc_203008
loc_203002:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_203008:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_20305a
	bra.w loc_203026
loc_20301a:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_203026:
	cmp.w ($f72c).w,d1
	bgt.s loc_20307e
	cmpi.w #$ff00,d1
	bgt.s loc_20304a
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_20307e
loc_20304a:
	move.w ($f72c).w,d1
	bra.s loc_20307e
loc_203050:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_20305a:
	cmp.w ($f72e).w,d1
	blt.s loc_20307e
	subi.w #$800,d1
	bcs.s loc_20307a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_20307e
loc_20307a:
	move.w ($f72e).w,d1
loc_20307e:
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
	bne.s loc_2030c0
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_2030ba
	bset.b #$0,($f754).w
	rts
loc_2030ba:
	bset.b #$1,($f754).w
loc_2030c0:
	rts

sub_2030c2:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030f6
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030f0
	bset.b #$2,($f756).w
	bra.s loc_2030f6
loc_2030f0:
	bset.b #$3,($f756).w
loc_2030f6:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_20312a
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_203124
	bset.b #$0,($f756).w
	rts
loc_203124:
	bset.b #$1,($f756).w
loc_20312a:
	rts
	.incbin 12588, 302

sub_20325a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2032b2
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203318
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_20331a
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2

sub_2032b2:
	tst.b (a2)
	beq.s loc_203316
	bclr.b #$0,(a2)
	beq.s loc_2032cc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331c
loc_2032cc:
	bclr.b #$1,(a2)
	beq.s loc_2032e6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20331c
loc_2032e6:
	bclr.b #$2,(a2)
	beq.s loc_2032fc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203372
loc_2032fc:
	bclr.b #$3,(a2)
	beq.s loc_203316
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203546
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203372
loc_203316:
	rts

sub_203318:
	rts

sub_20331a:
	rts

sub_20331c:
	moveq #$15,d6

sub_20331e:
	move.l #$800000,d7
	move.l d0,d1
loc_203326:
	movem.l d4-d5,-(a7)
	bsr.w sub_20341e
	move.l d1,d0
	bsr.w sub_2033a0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203326
	rts
	move.l #$800000,d7
	move.l d0,d1
loc_203350:
	movem.l d4-d5,-(a7)
	bsr.w sub_203420
	move.l d1,d0
	bsr.w sub_2033a0
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203350
	rts

sub_203372:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20337c:
	movem.l d4-d5,-(a7)
	bsr.w sub_20341e
	move.l d1,d0
	bsr.w sub_2033a0
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20337c
	rts

sub_2033a0:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033dc
	btst.b #$3,(a0)
	bne.s loc_2033bc
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2033bc:
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
loc_2033dc:
	btst.b #$3,(a0)
	bne.s loc_2033fe
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
loc_2033fe:
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

sub_20341e:
	add.w (a3),d5

sub_203420:
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
	beq.s loc_20346e
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
loc_20346e:
	rts
	.incbin 13424, 122
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_20354c
	bsr.w sub_2033a0
	movem.l (a7)+,d3-d5
	movea.l (a7)+,a0
	rts
	.incbin 13570, 68

sub_203546:
	add.w (a3),d5
	add.w $4(a3),d4

sub_20354c:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13666, 28

sub_20357e:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2035a4
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2

sub_2035a4:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2035a8:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203546
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20331e
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2035a8
	rts

sub_2035cc:
	moveq #$0,d0
	lea (dat_20f460).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202634
	movea.l (a2)+,a0
	bsr.w sub_203618
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20047e
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203616
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203616
	bsr.w sub_202762
loc_203616:
	rts

sub_203618:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203622:
	move.l d0,(a3)+
	dbf d1,loc_203622
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203638
	lea ($a040).w,a3
	moveq #$2,d1

sub_203638:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23bd32).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203652:
	move.w d1,d0
	movea.l a3,a0
loc_203656:
	move.b (a1)+,(a0)+
	dbf d0,loc_203656
	lea $80(a3),a3
	dbf d2,loc_203652
	rts

sub_203666:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036e0(pc,d0.w),d0
	jsr dat_2036e0(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_20368c
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_20368c:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2036ba
	bcc.s loc_2036bc
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2036b0
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2036b0:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2036ba:
	rts
loc_2036bc:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036d4
	btst.b #$1,($d022).w
	beq.s loc_2036d4
	add.w d1,d1
	add.w d1,d1
loc_2036d4:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036e0:
	.incbin 14048, 460
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2038be(pc,d0.w),d0
	jmp dat_2038be(pc,d0.w)
dat_2038be:
	dc.b $00,$06,$00,$0e,$00,$40
	move.w #$510,($f726).w
	rts
	.incbin 14540, 262

sub_2039d2:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039da:
	move.b (a0),d0
	beq.s loc_2039f0
	add.w d0,d0
	add.w d0,d0
	lea (dat_203df4).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039f0:
	lea $40(a0),a0
	dbf d7,loc_2039da
	rts

sub_2039fa:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a38
	bpl.s loc_203a2a
	btst.b #$1,$2c(a0)
	beq.s loc_203a2a
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a38
loc_203a2a:
	btst.b #$2,$2c(a0)
	bne.s loc_203a38
	addi.w #$38,$12(a0)
loc_203a38:
	tst.w $12(a0)
	bmi.s loc_203a4c
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a4c
	move.w #$1000,$12(a0)
loc_203a4c:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a5c:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a98
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a98
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a96
	neg.w d1
loc_203a96:
	add.w d1,d0
loc_203a98:
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

sub_203ab2:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b22
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b3e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b3e
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203afc
	cmpi.w #$800,d3
	bcs.s loc_203b0e
	subi.w #$800,d3
	bra.s loc_203b0e
loc_203afc:
	cmpi.w #$700,($f704).w
	bcs.s loc_203b0e
	cmpi.w #$100,d3
	bcc.s loc_203b0e
	addi.w #$800,d3
loc_203b0e:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b3e
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b3e
loc_203b22:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b3e
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b3e:
	rts
	dc.b $45,$f8,$ac,$00
loc_203b44:
	move.w $18(a1),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a2
	cmpi.w #$7e,(a2)
	bcc.s loc_203b5c
	addq.w #$2,(a2)
	adda.w (a2),a2
	move.w a1,(a2)
loc_203b5c:
	rts

sub_203b5e:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b64:
	move.l d1,(a1)+
	dbf d0,loc_203b64
	rts
dat_203b6c:
	.incbin 15212, 16

sub_203b7c:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b88:
	tst.w (a4)
	beq.w loc_203c48
	moveq #$2,d6
loc_203b90:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c40
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bf6
	movea.l dat_203b6c(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203bda
	cmpi.w #$800,d2
	bcs.s loc_203bec
	subi.w #$800,d2
	bra.s loc_203bec
loc_203bda:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203bec
	cmpi.w #$100,d2
	bcc.s loc_203bec
	addi.w #$800,d2
loc_203bec:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203c18
loc_203bf6:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203c18
	.incbin 15360, 24
loc_203c18:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c36
	move.b $1a(a0),d1
	add.w d1,d1

sub_203c2a:
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c3a
loc_203c36:
	bsr.w sub_203c6a
loc_203c3a:
	bset.b #$7,$1(a0)
loc_203c40:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b90
loc_203c48:
	lea $80(a4),a4
	dbf d7,loc_203b88
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c62
	move.l #$0,(a2)
	rts
loc_203c62:
	move.b #$0,-$5(a2)
	rts

sub_203c6a:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203cb0
	btst.l #$1,d4
	bne.w loc_203cfe
loc_203c7c:
	cmpi.b #$50,d5
	beq.s loc_203cae
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
	bne.s loc_203ca8
	addq.w #$1,d0
loc_203ca8:
	move.w d0,(a2)+
	dbf d1,loc_203c7c
loc_203cae:
	rts
loc_203cb0:
	btst.l #$1,d4
	bne.w loc_203d44
loc_203cb8:
	cmpi.b #$50,d5
	beq.s loc_203cfc
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
	bne.s loc_203cf6
	addq.w #$1,d0
loc_203cf6:
	move.w d0,(a2)+
	dbf d1,loc_203cb8
loc_203cfc:
	rts
loc_203cfe:
	cmpi.b #$50,d5
	beq.s loc_203d42
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
	bne.s loc_203d3c
	addq.w #$1,d0
loc_203d3c:
	move.w d0,(a2)+
	dbf d1,loc_203cfe
loc_203d42:
	rts
loc_203d44:
	cmpi.b #$50,d5
	beq.s loc_203d96
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
	bne.s loc_203d90
	addq.w #$1,d0
loc_203d90:
	move.w d0,(a2)+
	dbf d1,loc_203d44
loc_203d96:
	rts
	.incbin 15768, 92
dat_203df4:
	.incbin 15860, 334

sub_203f42:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f54
	move.w #$0,(a1)
	rts
loc_203f54:
	tst.w (a1)
	bne.s loc_203f5e
	move.b #$1,$1(a1)
loc_203f5e:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203fa8
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f9a
	neg.w $10(a0)
loc_203f9a:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205cd4
loc_203fa8:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203fc6
	cmpa.w #$d040,a0
	beq.s loc_203fc6
	tst.b ($ff1906).l
	beq.s loc_203fc6
	jmp (loc_2074c2).l
loc_203fc6:
	move.b $2a(a0),d0
	beq.s loc_203ff0
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203fe2
	cmpi.b #$2d,d0
	bcs.s loc_203fec
	move.b #$2d,d0
	bra.s loc_203fec
loc_203fe2:
	cmpi.b #$1e,d0
	bcs.s loc_203fec
	move.b #$1e,d0
loc_203fec:
	move.b d0,$2a(a0)
loc_203ff0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203ffe(pc,d0.w),d1
	jmp dat_203ffe(pc,d1.w)
dat_203ffe:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_204008:
	tst.b ($d300).w
	bne.s loc_204046
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_204046:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_20406e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_20406e:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_2040a2:
	tst.b ($ff1506).l
	bne.s loc_204108
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_204108
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_20410c
	cmpi.b #$2f,d1
	bne.s loc_20410a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_204108
	tst.b $2c(a0)
	beq.s loc_204108
	jsr (sub_207a86).l
	bne.s loc_204108
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_204100
	moveq #$0,d0
loc_204100:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_204108:
	rts
loc_20410a:
	rts

sub_20410c:
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

sub_204132:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_20413e
	neg.w d0
loc_20413e:
	btst.b #$1,$2c(a0)
	beq.s loc_20414e
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204176
loc_20414e:
	cmpi.w #$600,d0
	bcs.s loc_204176
	tst.w $14(a0)
	bpl.s loc_204168
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204184
	move.w #$e0,d1
	bra.s loc_204184
loc_204168:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204184
	move.w #$60,d1
	bra.s loc_204184
loc_204176:
	cmpi.w #$a0,d1
	beq.s loc_204184
	bcc.s loc_204182
	addq.w #$2,d1
	bra.s loc_204184
loc_204182:
	subq.w #$2,d1
loc_204184:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204132
	bsr.w sub_2040a2
	tst.w ($ff1588).l
	beq.s loc_2041aa
	btst.b #$4,($f605).w
	beq.s loc_2041aa
	move.b #$1,($ff1906).l
	rts
loc_2041aa:
	tst.b ($f7cc).w
	bne.s loc_2041b6
	move.w ($f604).w,($f602).w
loc_2041b6:
	btst.b #$0,$2c(a0)
	beq.s loc_2041da
	cmpi.b #$6,($ff1506).l
	bne.s loc_2041d4
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2041f2
loc_2041d4:
	bsr.w sub_2044bc
	bra.s loc_2041f2
loc_2041da:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204238(pc,d0.w),d1
	jsr dat_204238(pc,d1.w)
	jsr (sub_206ac8).l
loc_2041f2:
	bsr.s sub_204246
	bsr.w sub_204306
	bsr.w sub_204320
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_20421a
	tst.b $1c(a0)
	bne.s loc_20421a
	move.b $1d(a0),$1c(a0)
loc_20421a:
	bsr.w sub_2056c4
	tst.b $2c(a0)
	bmi.s loc_204232
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204232
	jsr (sub_20706c).l
loc_204232:
	bsr.w sub_20557a
	rts
dat_204238:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204246:
	cmpi.w #$d2,($f786).w
	bcc.s loc_20426a
	move.w $30(a0),d0
	beq.s loc_20425c
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_20426a
loc_20425c:
	btst.b #$6,$2c(a0)
	bne.s loc_20426a
	jsr (sub_203ab2).l
loc_20426a:
	tst.b ($ff151f).l
	beq.s loc_2042ae
	tst.w $32(a0)
	beq.s loc_2042ae
	subq.w #$1,$32(a0)
	bne.s loc_2042ae
	tst.b ($ff1520).l
	bne.s loc_2042a6
	tst.b ($ff1958).l
	bne.s loc_2042a6
	tst.b ($ff152e).l
	bne.s loc_2042a0
	move.w #$e,d0
	jsr (sub_205cd4).l
loc_2042a0:
	jsr (sub_2019ba).l
loc_2042a6:
	move.b #$0,($ff151f).l
loc_2042ae:
	tst.b ($ff1520).l
	beq.s loc_204304
	tst.w $34(a0)
	beq.s loc_204304
	subq.w #$1,$34(a0)
	bne.s loc_204304
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042fc
	tst.b ($ff1958).l
	bne.s loc_2042fc
	tst.b ($ff152e).l
	bne.s loc_2042f6
	move.w #$e,d0
	jsr (sub_205cd4).l
loc_2042f6:
	jsr (sub_2019ba).l
loc_2042fc:
	move.b #$0,($ff1520).l
loc_204304:
	rts

sub_204306:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204320:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20432c
loc_20432a:
	rts
loc_20432c:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20433e
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20432a
loc_20433e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204382
	bset.b #$6,$22(a0)
	bne.s loc_20432a
	bsr.w sub_206154
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20432a
	bra.s loc_2043ba
loc_204382:
	tst.w $12(a0)
	beq.s loc_20438a
	bpl.s loc_20432a
loc_20438a:
	bclr.b #$6,$22(a0)
	beq.s loc_20432a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20432a
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2043ba
	move.w #$f000,$12(a0)
loc_2043ba:
	jsr (sub_207a86).l
	bne.s loc_2043ce
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2043ce:
	rts

sub_2043d0:
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
	bcs.s loc_2044aa
	move.l #$50000,d0
loc_2044aa:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2044bc:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044e2
	tst.b ($ff152e).l
	beq.s loc_2044d8
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044e2
loc_2044d8:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204592
loc_2044e2:
	tst.b $2a(a0)
	bne.w loc_2045a0
	tst.b ($f784).w
	beq.w loc_2045a0
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204500
	neg.w d0
loc_204500:
	tst.w ($f786).w
	bne.s loc_20450c
	move.w #$1,($f786).w
loc_20450c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204522
	move.b #$1,($ff1502).l
	bra.w loc_205cd0
loc_204522:
	cmpi.w #$d2,d1
	bcs.s loc_204576
	cmpi.b #$2,($ff1522).l
	beq.s loc_204574
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20454c
	move.w #$82,d0
	jsr (sub_205cd4).l
	moveq #$0,d0
loc_20454c:
	add.b ($f784).w,d0
	bpl.s loc_204556
	moveq #$0,d0
	bra.s loc_20455e
loc_204556:
	cmpi.b #$3,d0
	bcs.s loc_20455e
	moveq #$2,d0
loc_20455e:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043d0
	move.b #$2,($ff1522).l
loc_204574:
	rts
loc_204576:
	cmpi.w #$5a,d1
	bcc.s loc_20458e
	cmp.w d2,d0
	bcc.w loc_204008
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20458e:
	cmp.w d2,d0
	bcc.s loc_2045a0
loc_204592:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2045a0:
	rts
	bsr.w sub_203f42
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045d2
	tst.b ($ff195b).l
	beq.s loc_2045c0
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045fc
	bra.s loc_2045c8
loc_2045c0:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045fc
loc_2045c8:
	bsr.w sub_204e64
	jmp (sub_2039fa).l
loc_2045d2:
	bsr.w sub_2046aa
	bsr.w sub_2044bc
	bsr.w sub_204f4e
	bsr.w sub_20507a
	bsr.w sub_20471e
	bsr.w sub_204ed0
	bsr.w sub_204e64
	jsr (sub_203a5c).l
	bsr.w sub_200b00
	bsr.w sub_2050f8
loc_2045fc:
	rts
	tst.b ($f7c7).w
	bne.s loc_204618
	cmpi.b #$15,$1c(a0)
	beq.s loc_204618
	tst.w $12(a0)
	bmi.s loc_204618
	move.b #$0,$1c(a0)
loc_204618:
	bsr.w sub_2046aa
	bsr.w sub_2044bc
	bsr.w sub_205038
	bsr.w sub_204d84
	bsr.w sub_204e64
	jsr (sub_2039fa).l
	btst.b #$6,$22(a0)
	beq.s loc_204640
	subi.w #$28,$12(a0)
loc_204640:
	bsr.w sub_205142
	bsr.w sub_205166
	rts
	bsr.w sub_2046aa
	bsr.w sub_2044bc
	bsr.w sub_204f4e
	bsr.w sub_2050b6
	bsr.w sub_204bbe
	bsr.w sub_204e64
	tst.b $2a(a0)
	bne.s loc_20466e
	jsr (sub_203a5c).l
loc_20466e:
	bsr.w sub_200b00
	bsr.w sub_2050f8
	rts
	bsr.w sub_2046aa
	bsr.w sub_2044bc
	bsr.w sub_205038
	bsr.w sub_204d84
	bsr.w sub_204e64
	jsr (sub_2039fa).l
	btst.b #$6,$22(a0)
	beq.s loc_2046a0
	subi.w #$28,$12(a0)
loc_2046a0:
	bsr.w sub_205142
	bsr.w sub_205166
	rts

sub_2046aa:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204716
	tst.w ($ff1506).l
	bne.s loc_204716
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204718).l,a2
loc_2046de:
	move.b (a2)+,d0
	bmi.s loc_2046ee
	cmp.b d0,d1
	bne.s loc_2046de
	bset.b #$1,$2c(a0)
	rts
loc_2046ee:
	bclr.b #$1,$2c(a0)
	beq.s loc_204716
	tst.w $12(a0)
	bpl.s loc_204716
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204716
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204716
	neg.w $10(a0)
loc_204716:
	rts
dat_204718:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20471e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a48
	tst.w $3e(a0)
	bne.w loc_2049f8
	btst.b #$2,($f602).w
	beq.s loc_204746
	bsr.w sub_204ad8
loc_204746:
	btst.b #$3,($f602).w
	beq.s loc_204752
	bsr.w sub_204b4e
loc_204752:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049f8
	tst.w $14(a0)
	beq.s loc_204772
	tst.b $2a(a0)
	beq.w loc_2049f8
	bra.s loc_20477e
loc_204772:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20477e:
	btst.b #$3,$22(a0)
	beq.s loc_2047d0
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204828
	cmpi.b #$1e,$0(a1)
	bne.s loc_2047b0
	move.b #$0,$1c(a0)
	bra.w loc_2049f8
loc_2047b0:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20480c
	cmp.w d2,d1
	bge.s loc_2047fa
	bra.s loc_204828
loc_2047d0:
	jsr (sub_206dd0).l
	cmpi.w #$c,d1
	blt.s loc_204828
	move.w #$ab,d0
	jsr (sub_202598).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204804
loc_2047fa:
	btst.b #$0,$22(a0)
	bne.s loc_204814
	bra.s loc_20481e
loc_204804:
	cmpi.b #$3,$37(a0)
	bne.s loc_204828
loc_20480c:
	btst.b #$0,$22(a0)
	bne.s loc_20481e
loc_204814:
	move.b #$32,$1c(a0)
	bra.w loc_2049f8
loc_20481e:
	move.b #$6,$1c(a0)
	bra.w loc_2049f8
loc_204828:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20483c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20483c:
	btst.b #$7,($f788).w
	bne.w loc_204940
	btst.b #$6,($f788).w
	bne.w loc_204960
	btst.b #$1,($f602).w
	bne.w loc_204960
	andi.b #$f,($f788).w
	beq.s loc_204874
	btst.b #$0,($f603).w
	beq.s loc_204888
	bset.b #$7,($f788).w
	bra.w loc_204a1c
loc_204874:
	btst.b #$0,($f603).w
	beq.w loc_204888
	move.b #$1,($f788).w
	bra.w loc_204a1c
loc_204888:
	btst.b #$0,($f602).w
	beq.s loc_204904
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048e6
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2048b8
	asr.w #$1,d2
	sub.w d2,d1
loc_2048b8:
	btst.b #$0,$22(a0)
	beq.s loc_2048c4
	neg.w d0
	neg.w d1
loc_2048c4:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048da
	cmp.w d0,d1
	ble.s loc_2048e0
	bra.s loc_2048de
loc_2048da:
	cmp.w d1,d0
	ble.s loc_2048e0
loc_2048de:
	move.w d1,d0
loc_2048e0:
	move.w d0,$14(a0)
	rts
loc_2048e6:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204900
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202598).l
loc_204900:
	bra.w loc_204a1c
loc_204904:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204924
	move.w #$ab,d0
	jsr (sub_202598).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204960
loc_204924:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202598).l
	bra.w loc_2049f8
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204940:
	btst.b #$0,($f602).w
	beq.s loc_204960
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204a1c
	addq.w #$2,($f73e).w
	bra.w loc_204a1c
loc_204960:
	btst.b #$6,($f788).w
	bne.w loc_2049dc
	andi.b #$f,($f788).w
	beq.s loc_204984
	btst.b #$1,($f603).w
	beq.s loc_204996
	bset.b #$6,($f788).w
	bra.w loc_204a1c
loc_204984:
	btst.b #$1,($f603).w
	beq.s loc_204996
	move.b #$1,($f788).w
	bra.w loc_204a1c
loc_204996:
	btst.b #$1,($f602).w
	beq.s loc_2049f8
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049da
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049da
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049cc
	neg.w $14(a0)
loc_2049cc:
	move.w #$9c,d0
	jsr (sub_202598).l
	bsr.w sub_204ef8
loc_2049da:
	bra.s loc_204a1c
loc_2049dc:
	btst.b #$1,($f602).w
	beq.s loc_2049f8
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204a1c
	subq.w #$2,($f73e).w
	bra.s loc_204a1c
loc_2049f8:
	cmpi.w #$60,($f73e).w
	bne.s loc_204a12
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204a1c
	move.b #$0,($f788).w
	bra.s loc_204a1c
loc_204a12:
	bcc.s loc_204a18
	addq.w #$4,($f73e).w
loc_204a18:
	subq.w #$2,($f73e).w
loc_204a1c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a48
	move.w $14(a0),d0
	beq.s loc_204a48
	bmi.s loc_204a3c
	sub.w d5,d0
	bcc.s loc_204a36
	move.w #$0,d0
loc_204a36:
	move.w d0,$14(a0)
	bra.s loc_204a48
loc_204a3c:
	add.w d5,d0
	bcc.s loc_204a44
	move.w #$0,d0
loc_204a44:
	move.w d0,$14(a0)
loc_204a48:
	move.b $26(a0),d0
	jsr (sub_200700).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a66:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204ad6
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204ad6
	bmi.s loc_204a7e
	neg.w d1
loc_204a7e:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c90
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204ad6
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204ad2
	cmpi.b #$40,d0
	beq.s loc_204ac0
	cmpi.b #$80,d0
	beq.s loc_204aba
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204aba:
	sub.w d1,$12(a0)
	rts
loc_204ac0:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ad2:
	add.w d1,$12(a0)
loc_204ad6:
	rts

sub_204ad8:
	tst.b $2a(a0)
	bne.s loc_204b4c
	move.w $14(a0),d0
	beq.s loc_204ae6
	bpl.s loc_204b16
loc_204ae6:
	bset.b #$0,$22(a0)
	bne.s loc_204afa
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204afa:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204b0a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204b0a
	move.w d1,d0
loc_204b0a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b16:
	sub.w d4,d0
	bcc.s loc_204b1e
	move.w #$ff80,d0
loc_204b1e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b4c
	cmpi.w #$400,d0
	blt.s loc_204b4c
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202598).l
loc_204b4c:
	rts

sub_204b4e:
	tst.b $2a(a0)
	bne.s loc_204bbc
	move.w $14(a0),d0
	bmi.s loc_204b86
	bclr.b #$0,$22(a0)
	beq.s loc_204b6e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b6e:
	cmp.w d6,d0
	bge.s loc_204b7a
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b7a
	move.w d6,d0
loc_204b7a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b86:
	add.w d4,d0
	bcc.s loc_204b8e
	move.w #$80,d0
loc_204b8e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204bbc
	cmpi.w #$fc00,d0
	bgt.s loc_204bbc
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202598).l
loc_204bbc:
	rts

sub_204bbe:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204d08
	tst.w $3e(a0)
	bne.s loc_204bf6
	btst.b #$2,($f602).w
	beq.s loc_204bea
	bsr.w sub_204d3e
loc_204bea:
	btst.b #$3,($f602).w
	beq.s loc_204bf6
	bsr.w sub_204d62
loc_204bf6:
	tst.b $2a(a0)
	beq.w loc_204ca0
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204c16
	asr.w #$1,d2
	sub.w d2,d1
loc_204c16:
	btst.b #$0,$22(a0)
	beq.s loc_204c22
	neg.w d0
	neg.w d1
loc_204c22:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204c38
	cmp.w d0,d1
	ble.s loc_204c3e
	bra.s loc_204c3c
loc_204c38:
	cmp.w d1,d0
	ble.s loc_204c3e
loc_204c3c:
	move.w d1,d0
loc_204c3e:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c72
	rts
loc_204c4c:
	move.w #$ab,d0
	jsr (sub_202598).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204cd2
loc_204c72:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c4c
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202598).l
	btst.b #$0,$22(a0)
	bne.s loc_204c98
	bsr.w sub_204d62
	bra.s loc_204ca0
loc_204c98:
	bsr.w sub_204d3e
	bra.s loc_204ca0
	dc.b $4e,$75
loc_204ca0:
	move.w $14(a0),d0
	beq.s loc_204cc2
	bmi.s loc_204cb6
	sub.w d5,d0
	bcc.s loc_204cb0
	move.w #$0,d0
loc_204cb0:
	move.w d0,$14(a0)
	bra.s loc_204cc2
loc_204cb6:
	add.w d5,d0
	bcc.s loc_204cbe
	move.w #$0,d0
loc_204cbe:
	move.w d0,$14(a0)
loc_204cc2:
	tst.w $14(a0)
	bne.s loc_204d08
	move.w #$ab,d0
	jsr (sub_202598).l
loc_204cd2:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cf2
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204d02
loc_204cf2:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204d02:
	move.b #$5,$1c(a0)
loc_204d08:
	move.b $26(a0),d0
	jsr (sub_200700).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d2c
	move.w #$1000,d1
loc_204d2c:
	cmpi.w #$f000,d1
	bge.s loc_204d36
	move.w #$f000,d1
loc_204d36:
	move.w d1,$10(a0)
	bra.w loc_204a66

sub_204d3e:
	move.w $14(a0),d0
	beq.s loc_204d46
	bpl.s loc_204d54
loc_204d46:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d54:
	sub.w d4,d0
	bcc.s loc_204d5c
	move.w #$ff80,d0
loc_204d5c:
	move.w d0,$14(a0)
	rts

sub_204d62:
	move.w $14(a0),d0
	bmi.s loc_204d76
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d76:
	add.w d4,d0
	bcc.s loc_204d7e
	move.w #$80,d0
loc_204d7e:
	move.w d0,$14(a0)
	rts

sub_204d84:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204dbe
	tst.w ($ff1506).l
	bne.s loc_204dbe
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204db6
	cmpi.w #$840,$8(a0)
	bcc.s loc_204db6
	rts
loc_204db6:
	btst.b #$1,$2c(a0)
	bne.s loc_204dee
loc_204dbe:
	btst.b #$2,($f602).w
	beq.s loc_204dd8
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204dd8
	move.w d1,d0
loc_204dd8:
	btst.b #$3,($f602).w
	beq.s loc_204dee
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204dee
	move.w d6,d0
loc_204dee:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204e04
	bcc.s loc_204e00
	addq.w #$4,($f73e).w
loc_204e00:
	subq.w #$2,($f73e).w
loc_204e04:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204e32
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204e32
	bmi.s loc_204e26
	sub.w d1,d0
	bcc.s loc_204e20
	move.w #$0,d0
loc_204e20:
	move.w d0,$10(a0)
	rts
loc_204e26:
	sub.w d1,d0
	bcs.s loc_204e2e
	move.w #$0,d0
loc_204e2e:
	move.w d0,$10(a0)
loc_204e32:
	rts
	.incbin 20020, 48

sub_204e64:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204eb8
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e92
	addi.w #$38,d0
loc_204e92:
	cmp.w d1,d0
	bls.s loc_204eb8
loc_204e96:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ea6
	rts
loc_204ea6:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2072fe
	move.b #$6,$24(a0)
	rts
loc_204eb8:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e96

sub_204ed0:
	tst.b ($f7ca).w
	bne.s loc_204ef6
	move.w $14(a0),d0
	bpl.s loc_204ede
	neg.w d0
loc_204ede:
	cmpi.w #$80,d0
	bcs.s loc_204ef6
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204ef6
	btst.b #$1,($f602).w
	bne.s sub_204ef8
loc_204ef6:
	rts

sub_204ef8:
	btst.b #$2,$22(a0)
	beq.s loc_204f02
	bra.s loc_204f32
loc_204f02:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f22
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f32
loc_204f22:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f32:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f4c
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f4c
	move.w #$200,$14(a0)
loc_204f4c:
	rts

sub_204f4e:
	tst.b $2a(a0)
	beq.s loc_204f56
	rts
loc_204f56:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f68
	tst.w $14(a0)
	beq.w loc_20502e
loc_204f68:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_20502e
	btst.b #$3,$22(a0)
	beq.s loc_204f84
	jsr (sub_205c5a).l
	beq.s loc_204fb4
loc_204f84:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206cfa
	cmpi.w #$6,d1
	blt.w loc_20502e
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204faa
	move.w #$380,d2
loc_204faa:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204fb4:
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
	bne.s loc_205030
	tst.b ($ff195b).l
	beq.s loc_205012
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_205022
loc_205012:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205022:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_20502e:
	rts
loc_205030:
	bset.b #$4,$22(a0)
	rts

sub_205038:
	tst.b $3c(a0)
	beq.s loc_20506a
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_20504e
	move.w #$fe00,d1
loc_20504e:
	cmp.w $12(a0),d1
	ble.s loc_205068
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205068
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205068:
	rts
loc_20506a:
	cmpi.w #$f040,$12(a0)
	bge.s loc_205078
	move.w #$f040,$12(a0)
loc_205078:
	rts

sub_20507a:
	tst.b $2a(a0)
	bne.s loc_2050b4
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050b4
	move.b $26(a0),d0
	jsr (sub_200700).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_2050b4
	bmi.s loc_2050b0
	tst.w d0
	beq.s loc_2050ae
	add.w d0,$14(a0)
loc_2050ae:
	rts
loc_2050b0:
	add.w d0,$14(a0)
loc_2050b4:
	rts

sub_2050b6:
	tst.b $2a(a0)
	bne.s loc_2050f6
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050f6
	move.b $26(a0),d0
	jsr (sub_200700).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050ec
	tst.w d0
	bpl.s loc_2050e6
	asr.l #$2,d0
loc_2050e6:
	add.w d0,$14(a0)
	rts
loc_2050ec:
	tst.w d0
	bmi.s loc_2050f2
	asr.l #$2,d0
loc_2050f2:
	add.w d0,$14(a0)
loc_2050f6:
	rts

sub_2050f8:
	nop
	tst.b $38(a0)
	bne.s loc_20513a
	tst.w $3e(a0)
	bne.s loc_20513c
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20513a
	move.w $14(a0),d0
	bpl.s loc_20511c
	neg.w d0
loc_20511c:
	cmpi.w #$280,d0
	bcc.s loc_20513a
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_20513a:
	rts
loc_20513c:
	subq.w #$1,$3e(a0)
	rts

sub_205142:
	btst.b #$1,$2c(a0)
	bne.s loc_205164
	move.b $26(a0),d0
	beq.s loc_205164
	bpl.s loc_20515a
	addq.b #$2,d0
	bcc.s loc_205158
	moveq #$0,d0
loc_205158:
	bra.s loc_205160
loc_20515a:
	subq.b #$2,d0
	bcc.s loc_205160
	moveq #$0,d0
loc_205160:
	move.b d0,$26(a0)
loc_205164:
	rts

sub_205166:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200998).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_20524a
	cmpi.b #$80,d0
	beq.w loc_2052ac
	cmpi.b #$c0,d0
	beq.w loc_205308
	bsr.w sub_207010
	tst.w d1
	bpl.s loc_2051b8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051b8:
	bsr.w sub_206e72
	tst.w d1
	bpl.s loc_2051ca
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051ca:
	bsr.w sub_206d22
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205248
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051e8
	cmp.b d2,d0
	blt.s loc_205248
loc_2051e8:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20536a
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205226
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_205218
	asr.w $12(a0)
	bra.s loc_20523a
loc_205218:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205226:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_20523a
	move.w #$fc0,$12(a0)
loc_20523a:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205248
	neg.w $14(a0)
loc_205248:
	rts
loc_20524a:
	bsr.w sub_207010
	tst.w d1
	bpl.s loc_205264
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205264:
	bsr.w sub_206eca
	tst.w d1
	bpl.s loc_20527e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20527c
	move.w #$0,$12(a0)
loc_20527c:
	rts
loc_20527e:
	tst.w $12(a0)
	bmi.s loc_2052aa
	bsr.w sub_206d22
	tst.w d1
	bpl.s loc_2052aa
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20536a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2052aa:
	rts
loc_2052ac:
	bsr.w sub_207010
	tst.w d1
	bpl.s loc_2052be
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052be:
	bsr.w sub_206e72
	tst.w d1
	bpl.s loc_2052d0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052d0:
	bsr.w sub_206eca
	tst.w d1
	bpl.s loc_205306
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052f0
	move.w #$0,$12(a0)
	rts
loc_2052f0:
	move.b d3,$26(a0)
	bsr.w sub_2053dc
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205306
	neg.w $14(a0)
loc_205306:
	rts
loc_205308:
	bsr.w sub_206e72
	tst.w d1
	bpl.s loc_205322
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205322:
	bsr.w sub_206eca
	tst.w d1
	bpl.s loc_20533c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20533a
	move.w #$0,$12(a0)
loc_20533a:
	rts
loc_20533c:
	tst.w $12(a0)
	bmi.s loc_205368
	bsr.w sub_206d22
	tst.w d1
	bpl.s loc_205368
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20536a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205368:
	rts

sub_20536a:
	btst.b #$4,$22(a0)
	beq.s loc_205374
	nop
loc_205374:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053ce
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2053ae
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2053be
loc_2053ae:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2053be:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202598).l
loc_2053ce:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053dc:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21500, 382

sub_20557a:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2055a2
	cmpi.b #$5,($ff1506).l
	beq.s loc_2055a2
	cmpi.b #$2,($ff1506).l
	beq.s loc_2055a2
	tst.b ($ff1506).l
	bne.w loc_205664
loc_2055a2:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055e0
	tst.b ($ff1506).l
	bne.w loc_205666
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205666
	bra.s loc_2055e8
loc_2055e0:
	cmp.b ($f7af).w,d1
	beq.w loc_205666
loc_2055e8:
	cmp.b ($f7ac).w,d1
	beq.s loc_205618
	cmp.b ($f7ad).w,d1
	beq.s loc_2055fc
	bclr.b #$6,$1(a0)
	rts
loc_2055fc:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20567e
	btst.b #$1,$22(a0)
	beq.s loc_205618
	bclr.b #$6,$1(a0)
	rts
loc_205618:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20562a
	bclr.b #$6,$1(a0)
	rts
loc_20562a:
	cmpi.b #$e0,d2
	bcs.s loc_205638
	bset.b #$6,$1(a0)
	rts
loc_205638:
	btst.b #$6,$1(a0)
	bne.s loc_205654
	move.b $26(a0),d1
	beq.s loc_205664
	cmpi.b #$80,d1
	bhi.s loc_205664
	bset.b #$6,$1(a0)
	rts
loc_205654:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205664
	bclr.b #$6,$1(a0)
loc_205664:
	rts
loc_205666:
	btst.b #$2,$22(a0)
	bne.s loc_205678
	move.w #$9c,d0
	jsr (sub_202598).l
loc_205678:
	jmp (sub_204ef8).l
loc_20567e:
	tst.w $12(a0)
	bmi.s loc_2056c2
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2056b6
	cmpi.w #$38,d1
	bcs.s loc_2056ae
	cmpi.w #$80,d1
	bcs.s loc_2056c2
loc_2056a6:
	bclr.b #$6,$1(a0)
	rts
loc_2056ae:
	bset.b #$6,$1(a0)
	rts
loc_2056b6:
	cmpi.w #$38,d1
	bcs.s loc_2056a6
	cmpi.w #$80,d1
	bcc.s loc_2056ae
loc_2056c2:
	rts

sub_2056c4:
	lea (dat_2059b4).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056e6
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056e6:
	bsr.w sub_205956
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20575e
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20572c
	move.b d0,$1e(a0)

sub_205710:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205724
	bpl.s loc_205724
	cmpi.b #$fd,d0
	bge.s loc_20572e
loc_205724:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20572c:
	rts
loc_20572e:
	addq.b #$1,d0
	bne.s loc_20573e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205724
loc_20573e:
	addq.b #$1,d0
	bne.s loc_205752
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205724
loc_205752:
	addq.b #$1,d0
	bne.s loc_20575c
	move.b $2(a1,d1.w),$1c(a0)
loc_20575c:
	rts
loc_20575e:
	subq.b #$1,$1e(a0)
	bpl.s loc_20572c
	addq.b #$1,d0
	bne.w loc_205818
	tst.b ($ff195b).l
	bne.w loc_2058e0
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205786
	not.b d0
loc_205786:
	btst.b #$1,$2c(a0)
	bne.s loc_205794
	addi.b #$10,d0
	bra.s loc_205796
loc_205794:
	addq.b #$8,d0
loc_205796:
	bpl.s loc_20579a
	moveq #$3,d1
loc_20579a:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20588c
	move.w $14(a0),d2
	bpl.s loc_2057b8
	neg.w d2
loc_2057b8:
	btst.b #$1,$2c(a0)
	beq.s loc_2057d0
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205bb6).l,a1
	bra.s loc_2057fa
loc_2057d0:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b90).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057fa
	lea (dat_205a34).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057fa
	lea (dat_205a2c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057fa:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205808
	moveq #$0,d2
loc_205808:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205710
	add.b d3,$1a(a0)
	rts
loc_205818:
	addq.b #$1,d0
	bne.s loc_205888
	move.w $14(a0),d2
	bpl.s loc_205824
	neg.w d2
loc_205824:
	lea (dat_205b12).l,a1
	tst.b ($ff195b).l
	bne.s loc_205862
	lea (dat_205a44).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205856
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205862
	lea (dat_205bbe).l,a1
	bra.s loc_205862
loc_205856:
	cmpi.w #$600,d2
	bcc.s loc_205862
	lea (dat_205a3c).l,a1
loc_205862:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20586c
	moveq #$0,d2
loc_20586c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205710
loc_205888:
	addq.b #$1,d0
	bne.s loc_2058cc
loc_20588c:
	move.w $14(a0),d2
	bmi.s loc_205894
	neg.w d2
loc_205894:
	addi.w #$800,d2
	bpl.s loc_20589c
	moveq #$0,d2
loc_20589c:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205b24).l,a1
	tst.b ($ff195b).l
	bne.s loc_2058b6
	lea (dat_205a4c).l,a1
loc_2058b6:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205710
loc_2058cc:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058e0:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058f2
	not.b d0
loc_2058f2:
	addi.b #$10,d0
	bpl.s loc_2058fa
	moveq #$0,d1
loc_2058fa:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205928
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205818
loc_205928:
	move.w $14(a0),d2
	bpl.s loc_205930
	neg.w d2
loc_205930:
	lea (dat_205b0c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205942
	lea (dat_205b06).l,a1
loc_205942:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20594c
	moveq #$0,d2
loc_20594c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205710

sub_205956:
	tst.b ($ff195b).l
	beq.s loc_205962
	move.b dat_205964(pc,d0.w),d0
loc_205962:
	rts
dat_205964:
	.incbin 22884, 80
dat_2059b4:
	.incbin 22964, 120
dat_205a2c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205a34:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205a3c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a44:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a4c:
	.incbin 23116, 186
dat_205b06:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205b0c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205b12:
	.incbin 23314, 18
dat_205b24:
	.incbin 23332, 108
dat_205b90:
	.incbin 23440, 38
dat_205bb6:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205bbe:
	.incbin 23486, 56

sub_205bf6:
	tst.b (a0)
	beq.w loc_205c58
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c58
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c58
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c2a:
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
loc_205c44:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c44
	dbf d1,loc_205c2a
loc_205c58:
	rts

sub_205c5a:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205cce
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
	bne.s loc_205cbc
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205cbc:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205cce:
	rts
loc_205cd0:
	move.w #$e,d0

sub_205cd4:
	cmpi.w #$67,d0
	bne.s loc_205ce2
	move.b #$1,($ff1958).l
loc_205ce2:
	move.w d0,($a12010).l
loc_205ce8:
	move.w ($a12020).l,d0
	beq.s loc_205ce8
	cmp.w ($a12020).l,d0
	bne.s loc_205ce8
	move.w #$0,($a12010).l
loc_205d00:
	move.w ($a12020).l,d0
	bne.s loc_205d00
	move.w ($a12020).l,d0
	bne.s loc_205d00
	rts
	dc.b $00,$00

sub_205d14:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d30
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d30:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d70
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d72
loc_205d4c:
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
loc_205d70:
	rts
loc_205d72:
	addq.b #$1,d0
	bne.s loc_205d82
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d4c
loc_205d82:
	addq.b #$1,d0
	bne.s loc_205d96
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d4c
loc_205d96:
	addq.b #$1,d0
	bne.s loc_205da0
	move.b $2(a1,d1.w),$1c(a0)
loc_205da0:
	addq.b #$1,d0
	bne.s loc_205da8
	addq.b #$2,$24(a0)
loc_205da8:
	addq.b #$1,d0
	bne.s loc_205db6
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205db6:
	addq.b #$1,d0
	bne.s loc_205dbe
	addq.b #$2,$25(a0)
loc_205dbe:
	rts
	.incbin 24000, 156
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e78(pc,d0.w),d0
	jsr dat_205e78(pc,d0.w)
	jsr (sub_203ab2).l
	jmp (loc_207abc).l
dat_205e78:
	.incbin 24184, 342
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fdc(pc,d0.w),d1
	jmp dat_205fdc(pc,d1.w)
dat_205fdc:
	.incbin 24540, 18
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_206036
	addq.b #$8,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$48a,$2(a0)
	andi.w #$7f,d0
	move.b d0,$33(a0)
	bra.w loc_20619a
loc_206036:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	lea (dat_20639c).l,a1
	jsr (sub_205d14).l
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_206070
	move.b #$6,$24(a0)
	addq.b #$7,$1c(a0)
	cmpi.b #$d,$1c(a0)
	beq.s loc_2060b4
	bra.s loc_2060b4
loc_206070:
	tst.b ($f7c7).w
	beq.s loc_20607a
	addq.w #$4,$30(a0)
loc_20607a:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23fb68).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	bsr.s sub_206108
	jsr (sub_203a5c).l
	tst.b $1(a0)
	bpl.s loc_2060ae
	jmp (sub_203ab2).l
loc_2060ae:
	jmp (sub_203b5e).l
loc_2060b4:
	bsr.s sub_206108
	lea (dat_20639c).l,a1
	jsr (sub_205d14).l
	jmp (sub_203ab2).l
	jmp (sub_203b5e).l
	.incbin 24782, 58

sub_206108:
	tst.w $38(a0)
	beq.s loc_206152
	subq.w #$1,$38(a0)
	bne.s loc_206152
	cmpi.b #$7,$1c(a0)
	bcc.s loc_206152
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
loc_206152:
	rts

sub_206154:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_20618c
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_206170
	move.w #$86,d0
loc_206170:
	tst.b ($ff151f).l
	beq.s loc_20617c
	move.w #$87,d0
loc_20617c:
	tst.b ($f7aa).w
	beq.s loc_206186
	move.w #$8c,d0
loc_206186:
	jsr (sub_202596).l
loc_20618c:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
loc_20619a:
	tst.w $2c(a0)
	bne.w loc_20628a
	cmpi.b #$6,($d024).w
	bcc.w loc_20639a
	btst.b #$6,($d022).w
	beq.w loc_20639a
	subq.w #$1,$38(a0)
	bpl.w loc_2062b0
	move.w #$3b,$38(a0)
	move.w #$1,$36(a0)
	jsr (sub_202386).l
	andi.w #$1,d0
	move.b d0,$34(a0)
	move.w ($ff150a).l,d0
	cmpi.w #$19,d0
	beq.s loc_20621c
	cmpi.w #$14,d0
	beq.s loc_20621c
	cmpi.w #$f,d0
	beq.s loc_20621c
	cmpi.w #$c,d0
	bhi.s loc_20621c
	btst.b #$5,($ff1505).l
	bne.s loc_20620a
	move.w #$df,d0
	jsr (sub_202598).l
loc_20620a:
	subq.b #$1,$32(a0)
	bpl.s loc_20621c
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20621c:
	subq.w #$1,($ff150a).l
	bcc.w loc_2062ae
	bsr.w sub_206154
	move.b #$81,($d02c).w
	move.w #$b6,d0
	jsr (sub_202598).l
	move.b #$a,$34(a0)
	move.w #$1,$36(a0)
	move.w #$78,$2c(a0)
	move.l a0,-(a7)
	lea ($d000).w,a0
	bsr.w sub_20536a
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
loc_20628a:
	subq.w #$1,$2c(a0)
	bne.s loc_206298
	move.b #$6,($d024).w
	rts
loc_206298:
	move.l a0,-(a7)
	lea ($d000).w,a0
	jsr (sub_203a5c).l
	addi.w #$10,$12(a0)
	movea.l (a7)+,a0
	bra.s loc_2062b0
loc_2062ae:
	bra.s loc_2062c0
loc_2062b0:
	tst.w $36(a0)
	beq.w loc_20639a
	subq.w #$1,$3a(a0)
	bpl.w loc_20639a
loc_2062c0:
	jsr (sub_202386).l
	andi.w #$f,d0
	move.w d0,$3a(a0)
	jsr (sub_207a86).l
	bne.w loc_20639a
	move.b #$21,$0(a1)
	move.w ($d008).w,$8(a1)
	moveq #$6,d0
	btst.b #$0,($d022).w
	beq.s loc_2062f6
	neg.w d0
	move.b #$40,$26(a1)
loc_2062f6:
	add.w d0,$8(a1)
	move.w ($d00c).w,$c(a1)
	move.b #$6,$28(a1)
	tst.w $2c(a0)
	beq.w loc_206344
	andi.w #$7,$3a(a0)
	addi.w #$0,$3a(a0)
	move.w ($d00c).w,d0
	subi.w #$c,d0
	move.w d0,$c(a1)
	jsr (sub_202386).l
	move.b d0,$26(a1)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	bne.s loc_206390
	move.b #$e,$28(a1)
	bra.s loc_206390
loc_206344:
	btst.b #$7,$36(a0)
	beq.s loc_206390
	move.w #$2000,$2(a1)
	move.w ($ff150a).l,d2
	lsr.w #$1,d2
	jsr (sub_202386).l
	andi.w #$3,d0
	bne.s loc_206378
	bset.b #$6,$36(a0)
	bne.s loc_206390
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_206378:
	tst.b $34(a0)
	bne.s loc_206390
	bset.b #$6,$36(a0)
	bne.s loc_206390
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_206390:
	subq.b #$1,$34(a0)
	bpl.s loc_20639a
	clr.w $36(a0)
loc_20639a:
	rts
dat_20639c:
	.incbin 25500, 154

sub_206436:
	tst.b $25(a0)
	bne.s loc_206466
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207a86).l
	bne.s loc_206466
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_206466:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206476(pc,d0.w),d0
	jmp dat_206476(pc,d0.w)
dat_206476:
	dc.b $00,$06,$00,$4a,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$680,$2(a0)
	move.l #$23fad6,$4(a0)
	bsr.s sub_206436
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_2064c0
	move.w #$100,$1c(a0)
loc_2064c0:
	lea (dat_23fac2).l,a1
	bsr.w sub_205d14
	jmp (sub_203ab2).l
	tst.b $25(a0)
	beq.s loc_2064dc
	jmp (sub_203b5e).l
loc_2064dc:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	.incbin 25834, 298
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206622(pc,d0.w),d0
	jmp dat_206622(pc,d0.w)
dat_206622:
	dc.b $00,$06,$00,$42,$00,$5c
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$23fa14,$4(a0)
	move.w #$298,$2(a0)
	move.b $28(a0),$1c(a0)
	moveq #$d,d0
	move.w #$a2,d0
	cmpi.b #$2,$28(a0)
	bcs.s loc_20665e
	move.w #$a1,d0
loc_20665e:
	jsr (sub_202598).l
	move.w ($f646).w,$c(a0)
	addq.w #$4,$c(a0)
	lea (dat_23f9fc).l,a1
	bsr.w sub_205d14
	jmp (sub_203ab2).l
	jmp (sub_203b5e).l
	.incbin 26244, 290
dat_2067a6:
	.incbin 26534, 26
loc_2067c0:
	bclr.b #$7,($ff156b).l
	beq.s loc_20680e
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206810(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2067e4:
	move.l (a1)+,(a2)+
	dbf d0,loc_2067e4
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20680e:
	rts
dat_206810:
	.incbin 26640, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206838(pc,d0.w),d0
	jsr dat_206838(pc,d0.w)
	jmp (sub_203ab2).l
dat_206838:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$2068c8,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_20686c
	moveq #$0,d1
loc_20686c:
	move.b d1,$2a(a0)
	move.b dat_206892(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_206894).l,a1

sub_20688c:
	jmp (sub_205d14).l
dat_206892:
	dc.b $a0,$60
dat_206894:
	.incbin 26772, 564

sub_206ac8:
	rts
loc_206aca:
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
	bne.s loc_206b84
	move.b ($ff1593).l,($ff195b).l
loc_206b84:
	tst.b ($ff1522).l
	bpl.s loc_206b9a
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b9a:
	rts

sub_206b9c:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206aca
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
	bne.s loc_206c56
	move.b ($ff1591).l,($ff195b).l
loc_206c56:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c78
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c78:
	tst.b ($ff1522).l
	bpl.s loc_206c8e
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c8e:
	rts

sub_206c90:
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
	bpl.s loc_206ccc
	move.b d1,d0
	bpl.s loc_206cc6
	subq.b #$1,d0
loc_206cc6:
	addi.b #$20,d0
	bra.s loc_206cd6
loc_206ccc:
	move.b d1,d0
	bpl.s loc_206cd2
	addq.b #$1,d0
loc_206cd2:
	addi.b #$1f,d0
loc_206cd6:
	andi.b #$c0,d0
	beq.w loc_206da6
	cmpi.b #$80,d0
	beq.w loc_206f42
	andi.b #$38,d1
	bne.s loc_206cee
	addq.w #$8,d2
loc_206cee:
	cmpi.b #$40,d0
	beq.w loc_207018
	bra.w loc_206e7a

sub_206cfa:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206fa0
	cmpi.b #$80,d0
	beq.w sub_206eca
	cmpi.b #$c0,d0
	beq.w loc_206e0a

sub_206d22:
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
loc_206d86:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d94
	move.b ($f768).w,d3
	exg d0,d1
loc_206d94:
	btst.l #$0,d3
	beq.s loc_206d9c
	move.b d2,d3
loc_206d9c:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206da6:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201056).l
	move.b #$0,d2
loc_206dc2:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206dce
	move.b d2,d3
loc_206dce:
	rts

sub_206dd0:
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
	beq.s loc_206e08
	move.b #$0,d3
loc_206e08:
	rts
loc_206e0a:
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
	bra.w loc_206d86

sub_206e72:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e7a:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011c6).l
	move.b #$c0,d2
	bra.w loc_206dc2
loc_206e9a:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2011c6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ec8
	move.b #$c0,d3
loc_206ec8:
	rts

sub_206eca:
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
	bra.w loc_206d86

sub_206f3a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f42:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201056).l
	move.b #$80,d2
	bra.w loc_206dc2
	.incbin 28518, 22
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201056).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206f9e
	move.b #$80,d3
loc_206f9e:
	rts
loc_206fa0:
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
	bra.w loc_206d86

sub_207010:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_207018:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011c6).l
	move.b #$40,d2
	bra.w loc_206dc2
loc_20703c:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2011c6).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20706a
	move.b #$40,d3
loc_20706a:
	rts

sub_20706c:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207090
	addi.w #$c,d3
	moveq #$a,d5
loc_207090:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_20709e:
	tst.b $1(a1)
	bpl.s loc_2070aa
	move.b $20(a1),d0
	bne.s loc_2070b6
loc_2070aa:
	lea $40(a1),a1
	dbf d6,loc_20709e
	moveq #$0,d0
	rts
loc_2070b6:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_207444).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070de
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070e4
	bra.w loc_2070aa
loc_2070de:
	cmp.w d4,d0
	bhi.w loc_2070aa
loc_2070e4:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2070fc
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207102
	bra.w loc_2070aa
loc_2070fc:
	cmp.w d5,d0
	bhi.w loc_2070aa
loc_207102:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207176
	cmpi.b #$c0,d1
	beq.w loc_207356
	tst.b d1
	bmi.w sub_207240
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_20713a
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207138
	addq.b #$2,$24(a1)
loc_207138:
	rts
loc_20713a:
	tst.w $12(a0)
	bpl.s loc_207164
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207174
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207174
	addq.b #$4,$25(a1)
	rts
loc_207164:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207174
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207174:
	rts

sub_207176:
	tst.b ($ff1521).l
	bne.s loc_207190
	tst.b ($ff151f).l
	bne.s loc_207190
	cmpi.b #$2,$1c(a0)
	bne.w sub_207240
loc_207190:
	tst.b $21(a1)
	beq.s loc_2071ba
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_2071b8
	bset.b #$7,$22(a1)
loc_2071b8:
	rts
loc_2071ba:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071d2
	moveq #$6,d0
loc_2071d2:
	move.w d0,$3e(a1)
	move.w dat_207232(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071ec
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071ec:
	bsr.w sub_20a1d8
	move.w #$96,d0
	jsr (sub_202598).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207222
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_20722a
	neg.w $12(a0)
	rts
loc_207222:
	addi.w #$100,$12(a0)
	rts
loc_20722a:
	subi.w #$100,$12(a0)
	rts
dat_207232:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207240:
	tst.b ($ff1521).l
	bne.s loc_207250
	tst.b ($ff151f).l
	beq.s loc_207254
loc_207250:
	moveq #$ffffffff,d0
	rts
loc_207254:
	nop
	tst.w $30(a0)
	bne.s loc_207250
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_20728a
	tst.w ($ff1512).l
	beq.w loc_2072f4
	jsr (sub_207a86).l
	bne.s loc_20728a
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20728a:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_2072a0
	move.b #$0,($ff156f).l
loc_2072a0:
	move.b #$4,$24(a0)
	bsr.w sub_20536a
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072d0
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072d0:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072de
	neg.w $10(a0)
loc_2072de:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072f4:
	tst.w ($ff1588).l
	bne.w loc_20728a

sub_2072fe:
	tst.w ($ff1906).l
	bne.s loc_207352
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20536a
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
loc_207352:
	moveq #$ffffffff,d0
	rts
loc_207356:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2073de
	cmpi.b #$23,d1
	beq.w loc_2073de
	cmpi.b #$33,d1
	beq.w loc_207436
	cmpi.b #$3a,d1
	beq.w loc_207436
	cmpi.b #$3b,d1
	beq.w loc_207436
	tst.b ($f7aa).w
	beq.w loc_2073dc
	cmpi.b #$1,($f7aa).w
	beq.s loc_2073a6
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073c8
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073d6
loc_2073a6:
	cmpi.b #$3c,d1
	blt.s loc_2073dc
	cmpi.b #$3f,d1
	bgt.s loc_2073dc
	bsr.w sub_207176
	tst.b $20(a1)
	bne.s loc_2073c0
	addq.b #$3,$21(a1)
loc_2073c0:
	clr.b $20(a1)
	bra.w loc_2073de
loc_2073c8:
	cmpi.b #$3f,d1
	beq.s loc_2073ea
	cmpi.b #$3e,d1
	beq.s loc_2073e4
	bra.s loc_2073dc
loc_2073d6:
	cmpi.b #$3d,d1
	beq.s loc_2073e4
loc_2073dc:
	rts
loc_2073de:
	addq.b #$1,$21(a1)
	rts
loc_2073e4:
	bsr.w sub_207240
	bra.s loc_2073de
loc_2073ea:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_207434
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_202598).l
	jsr (sub_206154).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_207434
	neg.w $10(a0)
loc_207434:
	rts
loc_207436:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207442
	addq.b #$1,$21(a1)
loc_207442:
	rts
dat_207444:
	.incbin 29764, 126
loc_2074c2:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074d8
	move.l #$4000,(dat_207652).l
	bra.s loc_2074f8
loc_2074d8:
	addi.l #$2000,(dat_207652).l
	cmpi.l #$80000,(dat_207652).l
	bls.s loc_2074f8
	move.l #$80000,(dat_207652).l
loc_2074f8:
	move.l (dat_207652).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20750a
	sub.l d0,$c(a0)
loc_20750a:
	btst.b #$1,($f604).w
	beq.s loc_207516
	add.l d0,$c(a0)
loc_207516:
	btst.b #$2,($f604).w
	beq.s loc_207522
	sub.l d0,$8(a0)
loc_207522:
	btst.b #$3,($f604).w
	beq.s loc_20752e
	add.l d0,$8(a0)
loc_20752e:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e6e).l
	move.w (a1),($ff194e).l
	lea (dat_207656).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207570
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_20756a
	move.b #$0,d1
loc_20756a:
	move.b d1,($ff1904).l
loc_207570:
	btst.b #$7,($f605).w
	beq.s loc_207590
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20758a
	add.b (a2),d1
loc_20758a:
	move.b d1,($ff1904).l
loc_207590:
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
	beq.s loc_20761c
	bsr.w sub_207a86
	bne.s loc_20761c
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
loc_20761c:
	btst.b #$4,($f605).w
	beq.s loc_20764c
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_20764c:
	jmp (sub_203ab2).l
dat_207652:
	dc.b $00,$00,$40,$00
dat_207656:
	.incbin 30294, 542

sub_207874:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207882:
	clr.l (a2)+
	dbf d0,loc_207882
	rts

sub_20788a:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207898(pc,d0.w),d0
	jmp dat_207898(pc,d0.w)
dat_207898:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207b38).l,a0
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
	bcc.s loc_2078d6
	moveq #$0,d6
loc_2078d6:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_2078de:
	cmp.w (a0),d6
	bls.s loc_2078f0
	tst.b $4(a0)
	bpl.s loc_2078ec
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2078ec:
	addq.w #$8,a0
	bra.s loc_2078de
loc_2078f0:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207910
loc_2078fe:
	cmp.w (a0),d6
	bls.s loc_207910
	tst.b $4(a0)
	bpl.s loc_20790c
	addq.b #$1,$1(a2)
loc_20790c:
	addq.w #$8,a0
	bra.s loc_2078fe
loc_207910:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2079fa
	bge.s loc_2079a0
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20797c
loc_20794a:
	cmp.w -$8(a0),d6
	bge.s loc_20797c
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207960
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207960:
	bsr.w sub_207a1e
	bne.s loc_20796a
	subq.w #$8,a0
	bra.s loc_20794a
loc_20796a:
	tst.b $4(a0)
	bpl.s loc_20797a
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20797a:
	addq.w #$8,a0
loc_20797c:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207988:
	cmp.w -$8(a0),d6
	bgt.s loc_20799a
	tst.b -$4(a0)
	bpl.s loc_207996
	subq.b #$1,(a2)
loc_207996:
	subq.w #$8,a0
	bra.s loc_207988
loc_20799a:
	move.l a0,($f770).w
	rts
loc_2079a0:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2079b4:
	cmp.w (a0),d6
	bls.s loc_2079d6
	tst.b $4(a0)
	bpl.s loc_2079c2
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2079c2:
	bsr.w sub_207a1e
	beq.s loc_2079b4
	tst.b $4(a0)
	bpl.s loc_2079d6
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079d6:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2079f6
loc_2079e4:
	cmp.w (a0),d6
	bls.s loc_2079f6
	tst.b $4(a0)
	bpl.s loc_2079f2
	addq.b #$1,$1(a2)
loc_2079f2:
	addq.w #$8,a0
	bra.s loc_2079e4
loc_2079f6:
	move.l a0,($f774).w
loc_2079fa:
	rts

sub_2079fc:
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

sub_207a1e:
	bsr.s sub_2079fc
	beq.s loc_207a30
	tst.b $4(a0)
	bpl.s loc_207a36
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207a36
loc_207a30:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207a36:
	bsr.w sub_207a86
	bne.s loc_207a84
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
	bpl.s loc_207a66
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207a66:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207a78
	nop
	nop
	nop
	nop
loc_207a78:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207a84:
	rts

sub_207a86:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207a8e:
	tst.b (a1)
	beq.s loc_207a9a
	lea $40(a1),a1
	dbf d0,loc_207a8e
loc_207a9a:
	rts

sub_207a9c:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207aba
loc_207aae:
	tst.b (a1)
	beq.s loc_207aba
	lea $40(a1),a1
	dbf d0,loc_207aae
loc_207aba:
	rts
loc_207abc:
	move.w $8(a0),d0
loc_207ac0:
	tst.b $1(a0)
	bmi.s loc_207b2a
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207b2a
loc_207ade:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207b20
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207b18
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207b10
	moveq #$0,d1
	bra.s loc_207b18
loc_207b10:
	cmpi.w #$3,d1
	bcs.s loc_207b18
	moveq #$2,d1
loc_207b18:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207b20:
	jsr (sub_203b5e).l
loc_207b26:
	moveq #$1,d0
	rts
loc_207b2a:
	btst.b #$7,($ff152e).l
	bne.s loc_207ade
	moveq #$0,d0
	rts
dat_207b38:
	.incbin 31544, 2906

sub_208692:
	btst.b #$3,$22(a0)
	beq.s loc_208702
	btst.b #$3,$22(a1)
	beq.s loc_208702
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208702
	tst.b $2a(a1)
	beq.s loc_2086c4
	move.w #$ab,d0
	jsr (sub_202598).l
loc_2086c4:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2086f0
	cmpi.b #$17,$1c(a1)
	beq.s loc_2086f0
	bclr.b #$0,$2c(a1)
loc_2086f0:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208702
	bclr.b #$1,$22(a1)
loc_208702:
	rts

sub_208704:
	cmpi.b #$4,$24(a1)
	bne.s loc_208716
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208716:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208776
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208738
	bclr.b #$3,$22(a0)
	bra.w sub_208692
loc_208738:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208776
	tst.b ($ff195b).l
	beq.s loc_208760
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208770
loc_208760:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208770:
	move.b #$0,$1c(a1)
loc_208776:
	bset.b #$3,$22(a1)
	beq.s loc_208798
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2087d0
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208798:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2087c4
	cmpi.b #$2,$24(a0)
	beq.s loc_2087ca
loc_2087c4:
	move.w $10(a1),$14(a1)
loc_2087ca:
	bclr.b #$1,$22(a1)
loc_2087d0:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_2087e0:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208a94
	btst.b #$6,$2c(a1)
	bne.w loc_208a94
	cmpi.b #$6,$24(a1)
	bcc.w loc_208a94
	tst.b $0(a1)
	beq.w loc_208a94
	tst.b $1(a0)
	bpl.w loc_208a94
	tst.b ($ff1906).l
	bne.w loc_208a94
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208a94
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208a94
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20884e
	btst.b #$3,$22(a0)
	bne.s loc_208860
	bra.w loc_208a94
loc_20884e:
	cmpi.b #$1,$25(a0)
	bne.s loc_208860
	tst.w $12(a1)
	beq.s loc_208860
	bmi.w loc_208a94
loc_208860:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208a94
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208a94
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208896
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208896:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2088a4
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2088a4:
	cmp.w d4,d5
	bcs.w loc_208938
	cmpi.b #$1,$25(a0)
	beq.w loc_208a94
	cmpi.b #$a,$0(a0)
	bne.s loc_2088c6
	btst.b #$1,$22(a1)
	bne.w loc_208a94
loc_2088c6:
	cmpi.b #$4,d5
	bls.w loc_208a94
	bsr.w sub_208ae4
	move.l d0,-(a7)
	bsr.w sub_208692
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_2088f0
	tst.w $10(a1)
	beq.s loc_208920
	bpl.s loc_2088f8
	bra.s loc_208920
loc_2088f0:
	tst.w $10(a1)
	beq.s loc_208920
	bpl.s loc_208920
loc_2088f8:
	bsr.w sub_208aa4
	btst.b #$1,$22(a1)
	bne.s loc_208916
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208916:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208920:
	bsr.w sub_208b5a
	bsr.w sub_208aa4
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208938:
	cmpi.b #$19,$0(a0)
	bne.s loc_20894a
	btst.b #$2,$22(a1)
	bne.w loc_208a94
loc_20894a:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208960
	bmi.w loc_208a30
loc_208960:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208972
	tst.w $12(a1)
	beq.s loc_208972
	bmi.w loc_208a94
loc_208972:
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
	beq.s loc_2089be
	bpl.s loc_20899e
	neg.b d0
loc_20899e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c90).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2089be
	tst.w $10(a0)
	bpl.s loc_2089ba
	neg.w d1
loc_2089ba:
	add.w d1,$8(a1)
loc_2089be:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208a28
	tst.w $12(a0)
	bmi.s loc_2089fc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d22).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2089fc
	add.w d1,$c(a1)
	bra.w loc_208a94
loc_2089fc:
	tst.w $12(a0)
	bpl.s loc_208a28
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f3a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a28
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072fe).l
	movem.l (a7)+,a0-a1
	bra.s loc_208a94
loc_208a28:
	bsr.w sub_208704
	moveq #$1,d0
	rts
loc_208a30:
	cmpi.b #$1,$25(a0)
	beq.s loc_208a94
	cmpi.b #$9,$0(a0)
	beq.s loc_208a94
	cmpi.b #$a,$0(a0)
	bne.s loc_208a5a
	cmpi.b #$2,$25(a0)
	beq.s loc_208a7a
	btst.b #$1,$1(a0)
	bne.s loc_208a7a
	bra.s loc_208a94
loc_208a5a:
	btst.b #$1,$22(a1)
	bne.s loc_208a7a
	tst.w $12(a0)
	beq.s loc_208a7a
	bmi.s loc_208a7a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072fe).l
	movem.l (a7)+,a0-a1
loc_208a7a:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208b5a
	bsr.w sub_208692
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208a94:
	bsr.w sub_208b5a
	bsr.w sub_208692
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208aa4:
	tst.w $10(a0)
	beq.s loc_208ae2
	cmpi.b #$a,$0(a0)
	beq.s loc_208ae2
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208abe
	neg.b d0
loc_208abe:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c90).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ae2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072fe).l
	movem.l (a7)+,a0-a1
loc_208ae2:
	rts

sub_208ae4:
	cmpi.b #$a,$0(a0)
	bne.s loc_208af4
	move.b #$0,$20(a1)
	rts
loc_208af4:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208b48
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208b58
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208b16
	tst.w $10(a2)
	beq.s loc_208b58
loc_208b16:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208b28
	cmp.w $8(a2),d1
	bcs.s loc_208b58
	bra.s loc_208b2e
loc_208b28:
	cmp.w $8(a2),d1
	bcc.s loc_208b58
loc_208b2e:
	cmpi.b #$15,$0(a0)
	beq.s loc_208b58
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072fe).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208b48:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208b58:
	rts

sub_208b5a:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208b74
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208b74
	move.b #$0,$20(a1)
loc_208b74:
	rts
	.incbin 35702, 374
loc_208cec:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208cfa(pc,d0.w),d0
	jmp dat_208cfa(pc,d0.w)
dat_208cfa:
	.incbin 36090, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208cec
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208d50
	tst.b $1(a0)
	bpl.s loc_208d58
loc_208d50:
	move.w dat_208daa(pc,d0.w),d1
	jsr dat_208daa(pc,d1.w)
loc_208d58:
	bsr.w sub_203ab2
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208d8a
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208d8a:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b5e
	rts
dat_208daa:
	.incbin 36266, 26
	addq.b #$2,$24(a0)
	move.l #$20912c,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208e1a
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209132,$4(a0)
	bra.s loc_208e5c
loc_208e1a:
	btst.l #$3,d0
	beq.s loc_208e48
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20917c,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c230).l
	move.l (a7)+,d0
	bra.s loc_208e5c
loc_208e48:
	btst.b #$1,$1(a0)
	beq.s loc_208e5c
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208e5c:
	btst.l #$1,d0
	beq.s loc_208e68
	bset.b #$5,$2(a0)
loc_208e68:
	andi.w #$2,d0
	move.w dat_208e74(pc,d0.w),$30(a0)
	rts
dat_208e74:
	.incbin 36468, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209218(pc,d0.w),d1
	jmp dat_209218(pc,d1.w)
dat_209218:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209222:
	.incbin 37410, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20927a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209272
	moveq #$0,d1
	bra.s loc_20927a
loc_209272:
	cmpi.w #$3,d1
	bcs.s loc_20927a
	moveq #$2,d1
loc_20927a:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209296
	moveq #$6,d1
loc_209296:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209222).l,a1
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
	beq.s loc_2092e6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2092de
	moveq #$0,d0
	bra.s loc_2092e6
loc_2092de:
	cmpi.w #$3,d0
	bcs.s loc_2092e6
	moveq #$2,d0
loc_2092e6:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2093b4
	dbf d0,loc_2092e6
	bclr.b #$7,(a2)
	bra.s loc_20933c
loc_2092f8:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209324
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20931c
	moveq #$0,d0
	bra.s loc_209324
loc_20931c:
	cmpi.w #$3,d0
	bcs.s loc_209324
	moveq #$2,d0
loc_209324:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2093b4
	dbf d0,loc_209324
	bclr.b #$7,(a2)
	bsr.w sub_207a9c
	bne.w loc_2093c0
loc_20933c:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209686,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209392
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209392
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209392:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2093b4:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2092f8
loc_2093c0:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2093e6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2093de
	moveq #$0,d0
	bra.s loc_2093e6
loc_2093de:
	cmpi.w #$3,d0
	bcs.s loc_2093e6
	moveq #$2,d0
loc_2093e6:
	lea $1(a2),a3
loc_2093ea:
	btst.b #$0,-(a3)
	bne.w sub_203b5e
	dbf d0,loc_2093ea
	tst.b $1(a0)
	bmi.s loc_20941a
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209494
loc_20941a:
	tst.w ($ff190e).l
	bne.s loc_20942a
	move.b ($ff1913).l,$1a(a0)
loc_20942a:
	bra.w sub_203ab2
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209498
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20947a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209472
	moveq #$0,d1
	bra.s loc_20947a
loc_209472:
	cmpi.w #$3,d1
	bcs.s loc_20947a
	moveq #$2,d1
loc_20947a:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20967e).l,a1
	bsr.w sub_205d14
	bra.w sub_203ab2
loc_209494:
	bra.w sub_203b5e

sub_209498:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_2094e8
	bset.b #$1,($ff150d).l
	beq.s loc_2094d2
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_2094e8
	bset.b #$2,($ff150d).l
	bne.s loc_2094e8
loc_2094d2:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cd4).l
loc_2094e8:
	jmp (sub_202598).l
	.incbin 38126, 50
loc_209520:
	bsr.w sub_207a86
	bne.w loc_2095de
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209686,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209586
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209586
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209586:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_2095ce
	move.w d4,d0
	jsr (sub_200700).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_2095ce
	subi.w #$80,d4
	bcc.s loc_2095ce
	move.w #$288,d4
loc_2095ce:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209520
loc_2095de:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202598).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203a5c
	addi.w #$18,$12(a0)
	bmi.s loc_20963e
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20963e
	jsr (sub_206dd0).l
	tst.w d1
	bpl.s loc_20963e
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20963e:
	tst.b ($ff1916).l
	beq.s loc_20967a
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20967a
	bra.w sub_203ab2
	.incbin 38488, 34
loc_20967a:
	bra.w sub_203b5e
dat_20967e:
	.incbin 38526, 402
loc_209810:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20983e(pc,d0.w),d0
	jsr dat_20983e(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20983c
	cmpi.w #$5a,($f786).w
	bcs.s loc_209836
	btst.b #$0,($ff1505).l
	bne.s loc_20983c
loc_209836:
	jmp (sub_203ab2).l
loc_20983c:
	rts
dat_20983e:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209e18,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209872
	move.b #$13,$1a(a0)
loc_209872:
	rts
loc_209874:
	tst.b ($ff0f01).l
	beq.s loc_209882
	jmp (sub_203b5e).l
loc_209882:
	cmpi.b #$a,$28(a0)
	beq.w loc_209810
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2098a6(pc,d0.w),d0
	jsr dat_2098a6(pc,d0.w)
	jsr (sub_203ab2).l
	jmp (loc_207abc).l
dat_2098a6:
	.incbin 39078, 282

sub_2099c0:
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
	rts

sub_2099fc:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a1e
	tst.b ($ff1956).l
	beq.s loc_209a16
	tst.b $29(a0)
	bne.s loc_209a1e
	rts
loc_209a16:
	tst.b $29(a0)
	beq.s loc_209a1e
	rts
loc_209a1e:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_2087e0).l
	tst.b $28(a0)
	bne.s loc_209a40
	tst.b ($ff0f01).l
	beq.s loc_209a40
	jmp (loc_207abc).l
loc_209a40:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209874
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209a58(pc,d0.w),d1
	jmp dat_209a58(pc,d1.w)
dat_209a58:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209e18,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209aa2
	tst.b $29(a0)
	bne.s loc_209aa2
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209aa2:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_2099c0
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209ace
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209ace:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209b28
	move.b $25(a0),d0
	beq.s loc_209b08
	bsr.w sub_2039fa
	jsr (sub_206dd0).l
	tst.w d1
	bpl.w loc_209b16
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209b16
loc_209b08:
	tst.b $1(a0)
	bpl.s loc_209b16
	lea ($d000).w,a1
	bsr.w sub_2099fc
loc_209b16:
	tst.w ($ff190e).l
	bne.s loc_209b28
	lea (dat_209d90).l,a1
	bsr.w sub_205d14
loc_209b28:
	bsr.w sub_203ab2
	jmp (loc_207abc).l
	move.w #$96,d0
	jsr (sub_202598).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_207a86
	bne.s loc_209b6a
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_209b6a:
	bsr.w sub_207a86
	bne.s loc_209b94
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_209b94:
	bsr.w sub_2099c0
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203ab2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209bba(pc,d0.w),d1
	jsr dat_209bba(pc,d1.w)
	bra.w sub_203ab2
dat_209bba:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_209bd6
	andi.b #$7f,$2(a0)
loc_209bd6:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$209e18,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_209c1e
	bsr.w sub_203a5c
	addi.w #$18,$12(a0)
	rts
loc_209c1e:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_209c44
loc_209c2e:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cd4).l
loc_209c44:
	cmpi.b #$1,d0
	bne.s loc_209c90
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209c86
	bset.b #$1,($ff150d).l
	beq.w loc_209c2e
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209c86
	bset.b #$2,($ff150d).l
	beq.w loc_209c2e
loc_209c86:
	move.w #$95,d0
	jmp (sub_202598).l
loc_209c90:
	cmpi.b #$2,d0
	bne.s loc_209cae

sub_209c96:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_202598).l
loc_209cae:
	cmpi.b #$3,d0
	bne.s loc_209d10

sub_209cb4:
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
	bne.s loc_209d04
	move.w #$82,d0
	jsr (sub_205cd4).l
loc_209d04:
	move.w #$6d,d0
	jmp (sub_205cd4).l
	dc.b $4e,$75
loc_209d10:
	cmpi.b #$4,d0
	bne.s loc_209d52
loc_209d16:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_209d48
	move.w #$82,d0
	jsr (sub_205cd4).l
loc_209d48:
	move.w #$6c,d0
	jmp (sub_205cd4).l
loc_209d52:
	cmpi.b #$5,d0
	bne.s loc_209d62
	move.w #$12c,($ff190e).l
	rts
loc_209d62:
	cmpi.b #$6,d0
	bne.s loc_209d7c
	move.w #$9d,d0
	jsr (sub_202598).l
	move.b #$1,($ff156f).l
	rts
loc_209d7c:
	bsr.w sub_209c96
	bsr.w sub_209cb4
	bra.s loc_209d16
	subq.w #$1,$1e(a0)
	bmi.w sub_203b5e
	rts
dat_209d90:
	.incbin 40336, 586
loc_209fda:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fee(pc,d0.w),d0
	jsr dat_209fee(pc,d0.w)
	jmp (sub_203ab2).l
dat_209fee:
	.incbin 40942, 146
	tst.b $28(a0)
	bmi.w loc_209fda
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a096(pc,d0.w),d0
	jmp dat_20a096(pc,d0.w)
dat_20a096:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a130,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a0c6
	move.b #$3,$1a(a0)
	bra.s loc_20a0e6
loc_20a0c6:
	tst.w ($ff1588).l
	beq.s loc_20a0d4
	move.b #$2,$1a(a0)
loc_20a0d4:
	tst.b $28(a0)
	beq.s loc_20a0e6
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a0e6:
	tst.b $28(a0)
	bne.s loc_20a12a
	tst.b $29(a0)
	beq.s loc_20a116
	tst.w ($ff1512).l
	beq.s loc_20a102
	bclr.b #$5,$2(a0)
	bra.s loc_20a12a
loc_20a102:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a12a
	eori.b #$20,$2(a0)
	bra.s loc_20a12a
loc_20a116:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a12a
	move.b #$2,$1a(a0)
loc_20a12a:
	jmp (sub_203ab2).l
	.incbin 41264, 168

sub_20a1d8:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a1f4
	move.l d1,(a3)
loc_20a1f4:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a21e
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cd4).l
loc_20a21e:
	rts
loc_20a220:
	tst.w ($ff1588).l
	beq.s loc_20a276
	bsr.w sub_20a472
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
	lea (dat_20a5d2).l,a2
	moveq #$2,d6
	bsr.w sub_20a62a
	bra.w loc_20a2d0
loc_20a276:
	tst.b ($ff1511).l
	beq.s loc_20a29a
	bpl.s loc_20a284
	bsr.w sub_20a41c
loc_20a284:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a50c
loc_20a29a:
	tst.b ($ff150f).l
	beq.s loc_20a2d0
	bpl.s loc_20a2a8
	bsr.w sub_20a408
loc_20a2a8:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a2cc
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a2cc:
	bsr.w sub_20a502
loc_20a2d0:
	tst.w ($ff1588).l
	bne.w loc_20a37c
	tst.b ($ff1510).l
	beq.w loc_20a37c
	tst.w ($f63a).w
	bne.w loc_20a37c
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a3da
	tst.b ($f7cc).w
	bne.s loc_20a326
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a326
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a326
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a326
	move.b #$9,(a1)
loc_20a326:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a618
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a622
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a378
	move.w #$63,d1
loc_20a378:
	bsr.w sub_20a622
loc_20a37c:
	tst.b ($ff150e).l
	beq.s loc_20a38e
	clr.b ($ff150e).l
	bsr.w sub_20a5f8
loc_20a38e:
	tst.b ($f7d6).w
	beq.s loc_20a3d8
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a3ae
	move.l #$6d400001,d0
loc_20a3ae:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a490
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a3ce
	move.l #$6e800001,d0
loc_20a3ce:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a490
loc_20a3d8:
	rts
loc_20a3da:
	btst.b #$7,($ff152e).l
	bne.s loc_20a406
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2072fe
	move.b #$1,($ff150c).l
loc_20a406:
	rts

sub_20a408:
	move.l #$73600002,($c00004).l
	lea dat_20a46e(pc),a2
	move.w #$2,d2
	bra.s loc_20a438

sub_20a41c:
	lea ($c00000).l,a6
	bsr.w sub_20a5f8
	move.l #$70600002,($c00004).l
	lea dat_20a466(pc),a2
	move.w #$6,d2
loc_20a438:
	lea (dat_238442).l,a1
loc_20a43e:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a45a
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a44e:
	move.l (a3)+,(a6)
	dbf d1,loc_20a44e
loc_20a454:
	dbf d2,loc_20a43e
	rts
loc_20a45a:
	move.l #$0,(a6)
	dbf d1,loc_20a45a
	bra.s loc_20a454
dat_20a466:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a46e:
	dc.b $ff,$ff,$00,$00

sub_20a472:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a5ee
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a5ee

sub_20a490:
	lea (dat_20a5ca).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a4a0:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a4a4:
	sub.l d3,d1
	bcs.s loc_20a4ac
	addq.w #$1,d2
	bra.s loc_20a4a4
loc_20a4ac:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a4b6
	move.w #$1,d4
loc_20a4b6:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a4c2
	tst.w d6
	bne.s loc_20a4f4
loc_20a4c2:
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
loc_20a4e8:
	addi.l #$400000,d0
	dbf d6,loc_20a4a0
	rts
loc_20a4f4:
	moveq #$f,d5
loc_20a4f6:
	move.l #$0,(a6)
	dbf d5,loc_20a4f6
	bra.s loc_20a4e8

sub_20a502:
	lea (dat_20a5d2).l,a2
	moveq #$2,d6
	bra.s loc_20a514

sub_20a50c:
	lea (dat_20a5c6).l,a2
	moveq #$5,d6
loc_20a514:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a51c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a520:
	sub.l d3,d1
	bcs.s loc_20a528
	addq.w #$1,d2
	bra.s loc_20a520
loc_20a528:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a532
	move.w #$1,d4
loc_20a532:
	tst.w d4
	beq.s loc_20a560
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
loc_20a560:
	addi.l #$400000,d0
	dbf d6,loc_20a51c
	rts
	.incbin 42348, 90
dat_20a5c6:
	dc.b $00,$01,$86,$a0
dat_20a5ca:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a5d2:
	dc.b $00,$00,$00,$64
dat_20a5d6:
	dc.b $00,$00,$00,$0a
dat_20a5da:
	dc.b $00,$00,$00,$01
dat_20a5de:
	.incbin 42462, 16

sub_20a5ee:
	moveq #$3,d6
	lea (dat_20a5de).l,a2
	bra.s sub_20a62a

sub_20a5f8:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a60e
	moveq #$9,d1
loc_20a60e:
	lea (dat_20a5da).l,a2
	moveq #$0,d6
	bra.s sub_20a62a

sub_20a618:
	lea (dat_20a5da).l,a2
	moveq #$0,d6
	bra.s sub_20a62a

sub_20a622:
	lea (dat_20a5d6).l,a2
	moveq #$1,d6

sub_20a62a:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a632:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a636:
	sub.l d3,d1
	bcs.s loc_20a63e
	addq.w #$1,d2
	bra.s loc_20a636
loc_20a63e:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a648
	move.w #$1,d4
loc_20a648:
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
	dbf d6,loc_20a632
	rts
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a690(pc,d0.w),d1
	jmp dat_20a690(pc,d1.w)
dat_20a690:
	dc.b $00,$0c,$00,$6a,$00,$84,$01,$3a
	dc.b $01,$58,$01,$5c
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	move.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20a6e0
	addq.b #$8,$24(a0)
	andi.w #$7f,d0
	move.b d0,$32(a0)
	move.b d0,$33(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20a7ec
loc_20a6e0:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	jsr (sub_202386).l
	move.b d0,$26(a0)
	lea (dat_20a984).l,a1
	jsr (sub_205d14).l
	cmpi.b #$6,$1a(a0)
	bne.s loc_20a714
	move.b #$1,$2e(a0)
loc_20a714:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a72c
loc_20a71e:
	move.b #$6,$24(a0)
	addq.b #$3,$1c(a0)
	bra.w loc_20a7ca
loc_20a72c:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23fb68).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20a7b4
	bsr.w sub_20a94a
	beq.s loc_20a7b4
	bsr.w sub_206154
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
	beq.w loc_20a71e
	bclr.b #$2,$22(a6)
	move.b #$13,$16(a6)
	move.b #$9,$17(a6)
	subq.w #$5,$c(a6)
	bra.w loc_20a71e
loc_20a7b4:
	bsr.w sub_203a5c
	tst.b $1(a0)
	bpl.s loc_20a7c4
	jmp (sub_203ab2).l
loc_20a7c4:
	jmp (sub_203b5e).l
loc_20a7ca:
	lea (dat_20a984).l,a1
	jsr (sub_205d14).l
	tst.b $1(a0)
	bpl.s loc_20a7e2
	jmp (sub_203ab2).l
loc_20a7e2:
	jmp (sub_203b5e).l
	bra.w sub_203b5e
loc_20a7ec:
	tst.w $36(a0)
	bne.s loc_20a84e
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcc.w loc_20a900
	tst.b $1(a0)
	bpl.w loc_20a900
	subq.w #$1,$38(a0)
	bpl.w loc_20a8f4
	move.w #$1,$36(a0)
loc_20a814:
	jsr (sub_202386).l
	move.w d0,d1
	andi.w #$7,d0
	cmpi.w #$6,d0
	bcc.s loc_20a814
	move.b d0,$34(a0)
	andi.w #$c,d1
	lea (dat_20a938).l,a1
	adda.w d1,a1
	move.l a1,$3c(a0)
	subq.b #$1,$32(a0)
	bpl.s loc_20a84c
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20a84c:
	bra.s loc_20a856
loc_20a84e:
	subq.w #$1,$38(a0)
	bpl.w loc_20a8f4
loc_20a856:
	jsr (sub_202386).l
	andi.w #$1f,d0
	move.w d0,$38(a0)
	tst.b $1(a0)
	bpl.s loc_20a8d8
	bsr.w sub_207a86
	bne.s loc_20a8d8
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
	beq.s loc_20a8d8
	jsr (sub_202386).l
	andi.w #$3,d0
	bne.s loc_20a8c4
	bset.b #$6,$36(a0)
	bne.s loc_20a8d8
	move.b #$2,$28(a1)
loc_20a8c4:
	tst.b $34(a0)
	bne.s loc_20a8d8
	bset.b #$6,$36(a0)
	bne.s loc_20a8d8
	move.b #$2,$28(a1)
loc_20a8d8:
	subq.b #$1,$34(a0)
	bpl.s loc_20a8f4
	jsr (sub_202386).l
	andi.w #$7f,d0
	addi.w #$80,d0
	add.w d0,$38(a0)
	clr.w $36(a0)
loc_20a8f4:
	lea (dat_20a984).l,a1
	jsr (sub_205d14).l
loc_20a900:
	tst.b $1(a0)
	bmi.s loc_20a924
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b5e
loc_20a924:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.w sub_203ab2
	bclr.b #$7,$1(a0)
	rts
dat_20a938:
	.incbin 43320, 18

sub_20a94a:
	tst.b $2c(a6)
	bmi.s loc_20a980
	move.w $8(a6),d0
	move.w $8(a0),d1
	subi.w #$10,d1
	cmp.w d0,d1
	bcc.s loc_20a980
	addi.w #$20,d1
	cmp.w d0,d1
	bcs.s loc_20a980
	move.w $c(a6),d0
	move.w $c(a0),d1
	cmp.w d0,d1
	bcc.s loc_20a980
	addi.w #$10,d1
	cmp.w d0,d1
	bcs.s loc_20a980
	moveq #$1,d0
	rts
loc_20a980:
	moveq #$0,d0
	rts
dat_20a984:
	.incbin 43396, 48
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a9e0(pc,d0.w),d0
	jsr dat_20a9e0(pc,d0.w)
	tst.b $24(a0)
	beq.s loc_20a9de
	cmpi.b #$a,$24(a0)
	beq.s loc_20a9d8
	cmpi.b #$6,$24(a0)
	bcc.s loc_20a9de
loc_20a9d8:
	jmp (sub_203ab2).l
loc_20a9de:
	rts
dat_20a9e0:
	.incbin 43488, 524
	rts
	.incbin 44014, 2340
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b520(pc,d0.w),d0
	jmp dat_20b520(pc,d0.w)
dat_20b520:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20bc1e,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20bbde).l,a2
loc_20b56e:
	jsr (sub_207a86).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20bc1e,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b5c0
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b5c0:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b56e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b5e8
	bge.s loc_20b5de
	neg.w d0
loc_20b5de:
	add.w d0,$a(a0)
	jmp (sub_203ab2).l
loc_20b5e8:
	addq.b #$4,$24(a0)
	jmp (sub_203ab2).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b60c
	bge.s loc_20b602
	neg.w d0
loc_20b602:
	add.w d0,$8(a0)
	jmp (sub_203ab2).l
loc_20b60c:
	addq.b #$4,$24(a0)
	jmp (sub_203ab2).l
	tst.b $1e(a0)
	beq.s loc_20b626
	subq.b #$1,$1e(a0)
	jmp (sub_203ab2).l
loc_20b626:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b640
	bge.s loc_20b636
	neg.w d0
loc_20b636:
	add.w d0,$a(a0)
	jmp (sub_203ab2).l
loc_20b640:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202762).l
	tst.b $1e(a0)
	beq.s loc_20b662
	subq.b #$1,$1e(a0)
	jmp (sub_203ab2).l
loc_20b662:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b67c
	bge.s loc_20b672
	neg.w d0
loc_20b672:
	add.w d0,$8(a0)
	jmp (sub_203ab2).l
loc_20b67c:
	jmp (sub_203b5e).l
	tst.l ($f680).w
	bne.s loc_20b696
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b5e).l
loc_20b696:
	rts
	.incbin 46744, 1350
dat_20bbde:
	.incbin 48094, 320
dat_20bd1e:
	.incbin 48414, 1298

sub_20c230:
	rts
	.incbin 49714, 408
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c3da(pc,d0.w),d0
	jmp dat_20c3da(pc,d0.w)
dat_20c3da:
	.incbin 50138, 26

sub_20c3f4:
	movem.l d2-d3,-(a7)
	lea ($d000).w,a1
	jsr (sub_2087e0).l
	movem.l (a7)+,d2-d3
	rts
	.incbin 50184, 196
loc_20c4cc:
	tst.w $12(a0)
	bpl.s loc_20c4d6
	bsr.w sub_20c3f4
loc_20c4d6:
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
	bmi.s loc_20c510
	bsr.w sub_20c3f4
loc_20c510:
	rts
	.incbin 50450, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c548(pc,d0.w),d0
	jsr dat_20c548(pc,d0.w)
	jsr (sub_203ab2).l
	move.w $36(a0),d0
	jmp (loc_207ac0).l
dat_20c548:
	dc.b $00,$04,$00,$46
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c596,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),d0
	subi.w #$50,d0
	move.w d0,$32(a0)
	move.b #$20,$19(a0)
	move.b #$60,$16(a0)
	move.b #$40,$3a(a0)
	moveq #$6,d2
	moveq #$4,d3
	bra.w loc_20c4cc
	.incbin 50582, 2172
loc_20ce12:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20ce30
	rts
loc_20ce30:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20ce54
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20ce54:
	jmp (sub_203b5e).l
	.incbin 52826, 1130
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d2dc(pc,d0.w),d0
	jsr dat_20d2dc(pc,d0.w)
	jsr (sub_203ab2).l
	bra.w loc_20ce12
dat_20d2dc:
	.incbin 53980, 862
	tst.b $24(a0)
	bne.w loc_20d684
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$50a,$2(a0)
	move.l #$20d7a0,$4(a0)
	move.b #$a,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20d684:
	move.w $34(a0),d0
	beq.s loc_20d6b4
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
loc_20d6b4:
	move.b $3f(a0),$3e(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_2087e0).l
	beq.s loc_20d6d2
	bsr.w sub_20d784
loc_20d6d2:
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20d6e2
	bclr.b #$7,(a4)
	bra.s loc_20d6ee
loc_20d6e2:
	bsr.w sub_20d784
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20d6ee:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20d728
	tst.b $1(a0)
	bpl.s loc_20d706
	move.w #$bf,d0
	jsr (sub_202598).l
loc_20d706:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d71a
	addq.b #$4,$39(a0)
	bra.s loc_20d71e
loc_20d71a:
	addq.w #$4,$c(a0)
loc_20d71e:
	move.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20d728:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20d74c
	subq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20d740
	subq.b #$4,$39(a0)
	bra.s loc_20d744
loc_20d740:
	subq.w #$4,$c(a0)
loc_20d744:
	clr.b $1a(a0)
	addq.b #$4,$16(a0)
loc_20d74c:
	jsr (sub_203ab2).l
	move.w $34(a0),d0
	bne.s loc_20d75e
	jmp (loc_207abc).l
loc_20d75e:
	movea.w d0,a1
	move.w $36(a1),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20d77e
	rts
loc_20d77e:
	jmp (loc_207ade).l

sub_20d784:
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
	.incbin 55200, 1216
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dc92
	move.w $8(a6),d0
	sub.w $8(a0),d0
	smi d1
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dc92
	btst.b #$0,$1(a0)
	seq d0
	eor.b d1,d0
	bne.s loc_20dc92
	ori.b #$1,ccr
loc_20dc92:
	rts
	.incbin 56468, 1180
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	move.l $32(a0),d0
	add.l d0,$2a(a0)
	move.l $36(a0),d0
	add.l d0,$2e(a0)
	lea ($d000).w,a1
	move.w $c(a0),d0
	sub.w $c(a1),d0
	cmpi.w #$e0,d0
	bge.s loc_20e168
	jmp (sub_203ab2).l
loc_20e168:
	jmp (sub_203b5e).l
	dc.b $00,$02,$01,$00,$00,$00,$1b,$00
	tst.b $28(a0)
	beq.s loc_20e180
	bra.w loc_20e3ea
loc_20e180:
	jsr (sub_20f2a8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e194(pc,d0.w),d0
	jmp dat_20e194(pc,d0.w)
dat_20e194:
	.incbin 57748, 598
loc_20e3ea:
	jsr (sub_20f2a8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e3fe(pc,d0.w),d0
	jmp dat_20e3fe(pc,d0.w)
dat_20e3fe:
	.incbin 58366, 18
	move.w $8(a0),$3e(a0)
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$2f,$20(a0)
	move.b #$1,$18(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.w #$23f0,$2(a0)
	move.l #$20e63a,$4(a0)
	addi.l #$10000,$c(a0)
	jsr (sub_206dd0).l
	cmpi.w #$5,d1
	bmi.s loc_20e476
loc_20e45a:
	lea (dat_20e634).l,a1
	jsr (sub_205d14).l
	jsr (sub_203ab2).l
	move.w $3e(a0),d0
	jmp (loc_207ac0).l
loc_20e476:
	addq.b #$2,$24(a0)
	subq.w #$5,d1
	add.w d1,$c(a0)
	move.l #$500000,$2a(a0)
	move.l #$ffffc000,$2e(a0)
	bra.s loc_20e45a
	addi.l #$ffffc000,$2a(a0)
	bmi.s loc_20e4f2
	move.l $2e(a0),d0
	add.l d0,$8(a0)
	jsr (sub_206dd0).l
	subq.w #$5,d1
	add.w d1,$c(a0)
	moveq #$0,d3
	move.b $17(a0),d3
	lea (loc_206e9a).l,a1
	btst.b #$0,$1(a0)
	bne.s loc_20e4ca
	lea (loc_20703c).l,a1
loc_20e4ca:
	jsr (a1)
	cmpi.w #$5,d1
	bmi.s loc_20e4f2
	move.w $8(a0),d0
	sub.w ($d008).w,d0
	btst.b #$0,$1(a0)
	beq.s loc_20e4e4
	neg.w d0
loc_20e4e4:
	subi.w #$10,d0
	subi.w #$40,d0
	bcs.s loc_20e500
	bra.w loc_20e45a
loc_20e4f2:
	addq.b #$2,$24(a0)
	move.w #$1f,$32(a0)
	bra.w loc_20e45a
loc_20e500:
	addq.b #$6,$24(a0)
	move.w #$7,$32(a0)
	bra.w loc_20e45a
	addi.w #$ffff,$32(a0)
	beq.s loc_20e51a
	bra.w loc_20e45a
loc_20e51a:
	addq.b #$2,$24(a0)
	move.w #$1f,$32(a0)
	move.l #$500000,$2a(a0)
	neg.l $2e(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.w loc_20e45a
	addi.w #$ffff,$32(a0)
	beq.s loc_20e54c
	bra.w loc_20e45a
loc_20e54c:
	addi.b #$fc,$24(a0)
	bra.w loc_20e45a
	addi.w #$ffff,$32(a0)
	beq.s loc_20e562
	bra.w loc_20e45a
loc_20e562:
	addq.b #$2,$24(a0)
	move.w #$1f,$32(a0)
	bra.w loc_20e45a
	addi.l #$2800,$c(a0)
	addi.w #$ffff,$32(a0)
	beq.s loc_20e584
	bra.w loc_20e45a
loc_20e584:
	addq.b #$2,$24(a0)
	move.l #$ffff0000,$38(a0)
	btst.b #$0,$1(a0)
	beq.s loc_20e59c
	neg.l $38(a0)
loc_20e59c:
	move.l #$fffe8000,$34(a0)
	bra.w loc_20e45a
	move.l $38(a0),d0
	add.l d0,$8(a0)
	moveq #$0,d3
	move.b $17(a0),d3
	lea (loc_206e9a).l,a1
	btst.b #$0,$1(a0)
	bne.s loc_20e5ca
	lea (loc_20703c).l,a1
loc_20e5ca:
	jsr (a1)
	tst.w d1
	bmi.s loc_20e5f4
	move.l $34(a0),d0
	add.l d0,$c(a0)
	addi.l #$1000,$34(a0)
	bmi.w loc_20e45a
	jsr (sub_206dd0).l
	cmpi.w #$5,d1
	bmi.s loc_20e5fc
	bra.w loc_20e45a
loc_20e5f4:
	addq.b #$2,$24(a0)
	bra.w loc_20e45a
loc_20e5fc:
	move.b #$4,$24(a0)
	bra.w loc_20e45a
	.incbin 58886, 46
dat_20e634:
	.incbin 58932, 48
	jsr (sub_20f2f0).l
	tst.b $24(a0)
	bmi.w loc_20e738
	bne.w loc_20e7c8
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20e8a2(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e6be
	addi.w #$2000,$2(a0)
loc_20e6be:
	lea dat_20e852(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20e6ce
	lea dat_20e87a(pc),a1
loc_20e6ce:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20e71c
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20e71a
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20e71a:
	rts
loc_20e71c:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20e738:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20e74a
	tst.b $3f(a1)
	beq.s loc_20e750
loc_20e74a:
	jmp (sub_203b5e).l
loc_20e750:
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
	bne.s loc_20e7b8
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20e7b2
	move.b #$5,$18(a0)
	bra.s loc_20e7b8
loc_20e7b2:
	move.b #$3,$18(a0)
loc_20e7b8:
	lea dat_20e82c(pc),a1
	jsr (sub_205d14).l
	jmp (sub_203ab2).l
loc_20e7c8:
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
	bmi.s loc_20e802
	cmpi.l #$10000,$30(a0)
	blt.s loc_20e816
loc_20e802:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e816:
	lea dat_20e82c(pc),a1
	jsr (sub_205d14).l
	jsr (sub_203ab2).l
	jmp (loc_207abc).l
dat_20e82c:
	.incbin 59436, 38
dat_20e852:
	.incbin 59474, 40
dat_20e87a:
	.incbin 59514, 40
dat_20e8a2:
	.incbin 59554, 22
	tst.b $24(a0)
	bne.s loc_20e8fc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20e920,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e912(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e8fc:
	lea ($d000).w,a1
	jsr (sub_2087e0).l
	jsr (sub_203ab2).l
	jmp (loc_207abc).l
dat_20e912:
	.incbin 59666, 126
	tst.b $24(a0)
	bne.s loc_20ea08
	movea.w $2a(a0),a1
	move.b $0(a1),$2c(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4380,$2(a0)
	move.b $28(a0),d6
	bpl.s loc_20e9c0
	addq.b #$1,$1a(a0)
loc_20e9c0:
	lea dat_20ea44(pc),a1
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	btst.l #$1,d6
	beq.s loc_20e9e6
	lea dat_20ea5e(pc),a1
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
loc_20e9e6:
	move.l a1,$4(a0)
	btst.l #$0,d6
	beq.s loc_20ea08
	bset.b #$0,$1(a0)
	bset.b #$1,$1(a0)
	bset.b #$0,$22(a0)
	bset.b #$1,$22(a0)
loc_20ea08:
	movea.w $2a(a0),a1
	move.b $2c(a0),d0
	cmp.b $0(a1),d0
	bne.s loc_20ea3e
	move.b $29(a0),d0
	bmi.s loc_20ea38
	tst.b $3e(a0)
	bne.s loc_20ea38
	lea ($f7e0).w,a1
	ext.w d0
	tst.b $0(a1,d0.w)
	beq.s loc_20ea38
	st $3e(a0)
	eori.b #$1,$1a(a0)
loc_20ea38:
	jmp (sub_203ab2).l
loc_20ea3e:
	jmp (sub_203b5e).l
dat_20ea44:
	.incbin 59972, 26
dat_20ea5e:
	.incbin 59998, 26
	tst.w $3e(a0)
	beq.s loc_20ea90
	movea.w $3e(a0),a1
	cmpi.b #$38,$0(a1)
	beq.s loc_20ea90
	jmp (sub_203b5e).l
loc_20ea90:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ea9e(pc,d0.w),d0
	jmp dat_20ea9e(pc,d0.w)
dat_20ea9e:
	dc.b $00,$04,$01,$1e
	move.w $8(a0),$34(a0)
	jsr (sub_207a86).l
	beq.s loc_20eab6
	jmp (sub_203b5e).l
loc_20eab6:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	lea (a1),a3
	jsr (sub_207a86).l
	beq.s loc_20ead6
	jmp (sub_203b5e).l
loc_20ead6:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	lea (a1),a2
	jsr (sub_207a86).l
	beq.s loc_20eaf6
	jmp (sub_203b5e).l
loc_20eaf6:
	move.b $0(a0),$0(a1)
	move.b #$2,$24(a1)
	move.w a0,$3e(a1)
	move.w #$f800,d0
	tst.b $28(a0)
	bpl.s loc_20eb12
	neg.w d0
loc_20eb12:
	move.w d0,d1
	move.w d0,$2e(a1)
	add.w d0,d0
	move.w d0,$2e(a2)
	add.w d1,d0
	move.w d0,$2e(a3)
	move.w #$100,$30(a0)
	tst.b $28(a0)
	bpl.s loc_20eb34
	neg.w $30(a0)
loc_20eb34:
	move.b $28(a0),d0
	bpl.s loc_20eb3c
	neg.b d0
loc_20eb3c:
	andi.w #$7f,d0
	move.w d0,$32(a0)
	move.b #$1,$18(a0)
	move.b #$2,$18(a1)
	move.b #$3,$18(a2)
	move.b #$4,$18(a3)
	lea (a0),a6
	bsr.w sub_20eb70
	lea (a1),a6
	bsr.w sub_20eb70
	lea (a2),a6
	bsr.w sub_20eb70
	lea (a3),a6

sub_20eb70:
	ori.b #$4,$1(a6)
	move.b #$a9,$20(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$10,$16(a6)
	move.w #$370,$2(a6)
	move.l #$20ebfc,$4(a6)
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
	jsr (sub_203ab2).l
	tst.w $3e(a0)
	bne.s loc_20ebfa
	jmp (loc_207abc).l
loc_20ebfa:
	rts
	.incbin 60412, 1708

sub_20f2a8:
	tst.b ($ff156a).l
	beq.s loc_20f2ee
	cmpi.b #$1,($ff152e).l
	bne.s loc_20f2c0
	tst.b $28(a0)
	beq.s loc_20f2ee
loc_20f2c0:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203b5e).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20f2ec
	move.w #$9e,d0
	jsr (sub_202598).l
loc_20f2ec:
	addq.l #$4,a7
loc_20f2ee:
	rts

sub_20f2f0:
	tst.b $28(a0)
	bmi.s loc_20f320
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f310
	tst.b ($ff156d).l
	bne.s loc_20f320
	addq.l #$4,a7
	jmp (loc_207abc).l
loc_20f310:
	tst.b ($ff156a).l
	bne.s loc_20f320
	addq.l #$4,a7
	jmp (sub_203b5e).l
loc_20f320:
	rts
	.incbin 62242, 312

sub_20f45a:
	jmp (loc_2067c0).l
dat_20f460:
	.incbin 62560, 16
dat_20f470:
	.incbin 62576, 880
	tst.b $28(a0)
	bmi.s loc_20f810
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f800
	tst.b ($ff156d).l
	bne.s loc_20f810
	addq.l #$4,a7
	jmp (loc_207b26).l
loc_20f800:
	tst.b ($ff156a).l
	bne.s loc_20f810
	addq.l #$4,a7
	jmp (loc_203b44).l
loc_20f810:
	rts
	jmp (dat_2067a6).l
	.incbin 63512, 982
	tst.b ($ff156a).l
	beq.s loc_20fc34
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fc06
	tst.b $28(a0)
	beq.s loc_20fc34
loc_20fc06:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203c2a).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fc32
	move.w #$9e,d0
	jsr ($20262a).l
loc_20fc32:
	addq.l #$4,a7
loc_20fc34:
	rts
	tst.b $28(a0)
	bmi.s loc_20fc66
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fc56
	tst.b ($ff156d).l
	bne.s loc_20fc66
	addq.l #$4,a7
	jmp ($207990).l
loc_20fc56:
	tst.b ($ff156a).l
	bne.s loc_20fc66
	addq.l #$4,a7
	jmp (sub_203c2a).l
loc_20fc66:
	rts
	tst.b ($f63a).w
	bne.w loc_20fd2e
	jsr (sub_20688c).l
	cmpi.w #$280,($f700).w
	bcc.w loc_20fd2e
	cmpi.w #$160,($f704).w
	bcc.w loc_20fd2e
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fd82).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fcc6
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4500,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcc6:
	lea (dat_20fdd4).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fcfa
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4700,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fcfa:
	lea (dat_20fe26).l,a1
	move.w #$7f,d6
	bsr.w sub_20fd30
	bne.s loc_20fd2e
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4900,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fd2e:
	rts

sub_20fd30:
	subq.b #$1,(a2)
	bpl.s loc_20fd76
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b (a1),d0
	bcs.s loc_20fd40
	moveq #$0,d0
loc_20fd40:
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
loc_20fd64:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fd64
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fd76:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fd82:
	.incbin 64898, 82
dat_20fdd4:
	.incbin 64980, 82
dat_20fe26:
	.incbin 65062, 66010
dat_220000:
	.incbin 131072, 80422
dat_233a26:
	.incbin 211494, 18588
dat_2382c2:
	.incbin 230082, 384
dat_238442:
	.incbin 230466, 5428
dat_239976:
	.incbin 235894, 256
dat_239a76:
	.incbin 236150, 4096
dat_23aa76:
	.incbin 240246, 4796
dat_23bd32:
	.incbin 245042, 15562
dat_23f9fc:
	.incbin 260604, 198
dat_23fac2:
	.incbin 260802, 166
dat_23fb68:
	.incbin 260968, 1176
