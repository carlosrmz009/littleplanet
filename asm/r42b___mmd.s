; R42B__.MMD
; disassembled from the disc; code only, data comes from data/R42B__.MMD at build time
	.file "R42B__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18
	jmp (loc_2022a4).l
	jmp (loc_201dbe).l
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
	bsr.w sub_2023e0
	bsr.w sub_202388
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_201380

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
	dc.b $0c,$c0,$0e,$e0,$0e,$e4

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
	bsr.w sub_2006cc
	bsr.s sub_200254
	bsr.w sub_2027a6
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
	bsr.w sub_2006cc
	bsr.s sub_2002e4
	bsr.w sub_2027a6
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
	bsr.w sub_2006cc
	bsr.s sub_20037c
	bsr.w sub_2027a6
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
	bsr.w sub_2006cc
	bsr.s sub_200410
	bsr.w sub_2027a6
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
	.incbin 1258, 482

sub_2006cc:
	move.w #$2300,sr
loc_2006d0:
	tst.b ($f62a).w
	bne.s loc_2006d0
	rts

sub_2006d8:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2006f0(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2006f0(pc,d0.w),d0
	rts
dat_2006f0:
	.incbin 1776, 640

sub_200970:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_2009cc
	move.w d2,d4
	tst.w d3
	bpl.w loc_20098a
	neg.w d3
loc_20098a:
	tst.w d4
	bpl.w loc_200992
	neg.w d4
loc_200992:
	cmp.w d3,d4
	bcc.w loc_2009a4
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_2009d6(pc,d4.w),d0
	bra.s loc_2009ae
loc_2009a4:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_2009d6(pc,d3.w),d0
loc_2009ae:
	tst.w d1
	bpl.w loc_2009ba
	neg.w d0
	addi.w #$80,d0
loc_2009ba:
	tst.w d2
	bpl.w loc_2009c6
	neg.w d0
	addi.w #$100,d0
loc_2009c6:
	movem.l (a7)+,d3-d4
	rts
loc_2009cc:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_2009d6:
	.incbin 2518, 258

sub_200ad8:
	btst.b #$3,$22(a0)
	beq.s loc_200aec
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200aec:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b0e
	move.b $26(a0),d0
	bpl.s loc_200b08
	subq.b #$1,d0
loc_200b08:
	addi.b #$20,d0
	bra.s loc_200b1a
loc_200b0e:
	move.b $26(a0),d0
	bpl.s loc_200b16
	addq.b #$1,d0
loc_200b16:
	addi.b #$1f,d0
loc_200b1a:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200da4
	cmpi.b #$80,d0
	beq.w loc_200d02
	cmpi.b #$c0,d0
	beq.w loc_200c66
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
	bsr.w sub_20102e
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
	bsr.w sub_20102e
	move.w (a7)+,d0
	bsr.w sub_200c3a
	tst.w d1
	beq.s loc_200ba8
	bpl.s loc_200baa
	cmpi.w #$fff2,d1
	blt.s loc_200bd0
	add.w d1,$c(a0)
loc_200ba8:
	rts
loc_200baa:
	cmpi.w #$e,d1
	bgt.s loc_200bb6
loc_200bb0:
	add.w d1,$c(a0)
	rts
loc_200bb6:
	tst.b $38(a0)
	bne.s loc_200bb0
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200bd0:
	rts
	.incbin 3026, 34
loc_200bf4:
	rts
	.incbin 3062, 68

sub_200c3a:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200c48
	move.b ($f768).w,d2
	move.w d0,d1
loc_200c48:
	btst.l #$0,d2
	bne.s loc_200c54
	move.b d2,$26(a0)
	rts
loc_200c54:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200c66:
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
	bsr.w sub_20119e
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
	bsr.w sub_20119e
	move.w (a7)+,d0
	bsr.w sub_200c3a
	tst.w d1
	beq.s loc_200cda
	bpl.s loc_200cdc
	cmpi.w #$fff2,d1
	blt.w loc_200bf4
	add.w d1,$8(a0)
loc_200cda:
	rts
loc_200cdc:
	cmpi.w #$e,d1
	bgt.s loc_200ce8
loc_200ce2:
	add.w d1,$8(a0)
	rts
loc_200ce8:
	tst.b $38(a0)
	bne.s loc_200ce2
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d02:
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
	bsr.w sub_20102e
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
	bsr.w sub_20102e
	move.w (a7)+,d0
	bsr.w sub_200c3a
	tst.w d1
	beq.s loc_200d7c
	bpl.s loc_200d7e
	cmpi.w #$fff2,d1
	blt.w loc_200bd0
	sub.w d1,$c(a0)
loc_200d7c:
	rts
loc_200d7e:
	cmpi.w #$e,d1
	bgt.s loc_200d8a
loc_200d84:
	sub.w d1,$c(a0)
	rts
loc_200d8a:
	tst.b $38(a0)
	bne.s loc_200d84
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200da4:
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
	bsr.w sub_20119e
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
	bsr.w sub_20119e
	move.w (a7)+,d0
	bsr.w sub_200c3a
	tst.w d1
	beq.s loc_200e1e
	bpl.s loc_200e20
	cmpi.w #$fff2,d1
	blt.w loc_200bf4
	sub.w d1,$8(a0)
loc_200e1e:
	rts
loc_200e20:
	cmpi.w #$e,d1
	bgt.s loc_200e2c
loc_200e26:
	sub.w d1,$8(a0)
	rts
loc_200e2c:
	tst.b $38(a0)
	bne.s loc_200e26
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200e46:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200e5c
	andi.w #$380,d0
loc_200e5c:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200ebc
	bmi.s loc_200ec0
	cmpi.b #$5,($ff1506).l
	beq.s loc_200e8c
	cmpi.b #$6,($ff1506).l
	bne.s loc_200e92
loc_200e8c:
	andi.w #$7fff,$2(a0)
loc_200e92:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200ea2
	bclr.b #$6,$1(a0)
loc_200ea2:
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
loc_200ebc:
	movea.l d1,a1
	rts
loc_200ec0:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f28
	btst.b #$6,$1(a0)
	bne.s loc_200eee
	cmpi.b #$14,d1
	bne.w loc_201012
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201012
loc_200eee:
	cmpi.b #$15,d1
	bne.s loc_200efc
	move.w #$60,d1
	bra.w loc_201012
loc_200efc:
	cmpi.b #$1e,d1
	bne.s loc_200f0a
	move.w #$61,d1
	bra.w loc_201012
loc_200f0a:
	cmpi.b #$1f,d1
	bne.s loc_200f18
	move.w #$62,d1
	bra.w loc_201012
loc_200f18:
	cmpi.b #$32,d1
	bne.w loc_201012
	move.w #$63,d1
	bra.w loc_201012
loc_200f28:
	cmpi.b #$5,($ff1506).l
	bne.w loc_200f8e
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200f78
	cmpi.b #$6,d1
	beq.s loc_200f78
	tst.b ($ff1956).l
	beq.w loc_201012
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_200f88
	cmpi.b #$3c,d1
	beq.s loc_200f88
	cmpi.b #$37,d1
	beq.s loc_200f88
	cmpi.b #$2f,d1
	beq.s loc_200f88
	cmpi.b #$16,d1
	beq.s loc_200f88
	bra.w loc_201012
loc_200f78:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201012
loc_200f88:
	addq.b #$1,d1
	bra.w loc_201012
loc_200f8e:
	cmpi.b #$6,($ff1506).l
	bne.s loc_200ffe
	cmpi.b #$3,$0(a0)
	bcc.w loc_201012
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201012
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_200fc2
	move.w #$6a,d1
	bra.s loc_201012
loc_200fc2:
	cmpi.b #$48,d1
	bne.s loc_200fce
	move.w #$6b,d1
	bra.s loc_201012
loc_200fce:
	cmpi.b #$4a,d1
	bne.s loc_200fda
	move.w #$6c,d1
	bra.s loc_201012
loc_200fda:
	cmpi.b #$10,d1
	bne.s loc_200fe6
	move.w #$6d,d1
	bra.s loc_201012
loc_200fe6:
	cmpi.b #$63,d1
	bne.s loc_200ff2
	move.w #$6e,d1
	bra.s loc_201012
loc_200ff2:
	cmpi.b #$43,d1
	bne.s loc_201012
	move.w #$6f,d1
	bra.s loc_201012
loc_200ffe:
	btst.b #$6,$1(a0)
	beq.s loc_201012
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201012
	move.w #$51,d1
loc_201012:
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

sub_20102e:
	bsr.w sub_200e46
	cmpi.l #$210000,d1
	beq.s loc_201048
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201048
	btst.l d5,d4
	bne.s loc_201056
loc_201048:
	add.w a3,d2
	bsr.w sub_2010ee
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201056:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201048
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20107c
	not.w d1
	neg.b (a4)
loc_20107c:
	btst.l #$c,d4
	beq.s loc_20108c
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20108c:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239a76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2010a8
	neg.w d0
loc_2010a8:
	tst.w d0
	beq.s loc_201048
	bmi.s loc_2010c4
	cmpi.b #$10,d0
	beq.s loc_2010e0
loc_2010b4:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2010c4:
	cmpa.w #$10,a3
	bne.s loc_2010d4
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2010b4
loc_2010d4:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201048
loc_2010e0:
	sub.w a3,d2
	bsr.w sub_2010ee
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2010ee:
	bsr.w sub_200e46
	cmpi.l #$210000,d1
	beq.s loc_201108
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201108
	btst.l d5,d4
	bne.s loc_201116
loc_201108:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201116:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201108
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20113c
	not.w d1
	neg.b (a4)
loc_20113c:
	btst.l #$c,d4
	beq.s loc_20114c
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20114c:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239a76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201168
	neg.w d0
loc_201168:
	tst.w d0
	beq.s loc_201108
	bmi.s loc_20117e
loc_20116e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_20117e:
	cmpa.w #$10,a3
	bne.s loc_20118e
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_20116e
loc_20118e:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201108
	not.w d1
	rts

sub_20119e:
	bsr.w sub_200e46
	cmpi.l #$210000,d1
	beq.s loc_2011b8
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011b8
	btst.l d5,d4
	bne.s loc_2011c6
loc_2011b8:
	add.w a3,d3
	bsr.w sub_20124e
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2011c6:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011b8
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2011f4
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011f4:
	btst.l #$b,d4
	beq.s loc_2011fc
	neg.b (a4)
loc_2011fc:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23aa76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201218
	neg.w d0
loc_201218:
	tst.w d0
	beq.s loc_2011b8
	bmi.s loc_201234
	cmpi.b #$10,d0
	beq.s loc_201240
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201234:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011b8
loc_201240:
	sub.w a3,d3
	bsr.w sub_20124e
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_20124e:
	bsr.w sub_200e46
	cmpi.l #$210000,d1
	beq.s loc_201268
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201268
	btst.l d5,d4
	bne.s loc_201276
loc_201268:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201276:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201268
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012a4
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012a4:
	btst.l #$b,d4
	beq.s loc_2012ac
	neg.b (a4)
loc_2012ac:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23aa76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012c8
	neg.w d0
loc_2012c8:
	tst.w d0
	beq.s loc_201268
	bmi.s loc_2012de
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012de:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201268
	not.w d1
	rts

sub_2012ee:
	rts
	.incbin 4848, 144
loc_201380:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2013a0
	tst.b ($ff0f01).l
	bne.s loc_2013a0
	move.b #$1,($ff156a).l
loc_2013a0:
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_201408
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20791a
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201408
	move.b #$1,($ff1508).l
loc_201408:
	bset.b #$7,($f600).w
	bsr.w sub_202798
	tst.b ($ff156e).l
	bne.s loc_20142e
	btst.b #$7,($ff152e).l
	beq.s loc_201452
	bset.b #$0,($ff151d).l
	beq.s loc_20143a
loc_20142e:
	bsr.w sub_2003f0
	bclr.b #$0,($ff151d).l
loc_20143a:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2014c2
	move.w #$0,($ff1502).l
	rts
loc_201452:
	bset.b #$0,($ff151d).l
	beq.s loc_201460
	bsr.w sub_2002c4
loc_201460:
	cmpi.w #$2,($ff1502).l
	bne.s loc_20147c
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2014a4
loc_20147c:
	tst.b ($ff1508).l
	bne.s loc_2014c2
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2014a4:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2014ac:
	move.l #$0,(a1)+
	dbf d6,loc_2014ac
	move.b #$c,($f62a).w
	bsr.w sub_2006cc
	rts
loc_2014c2:
	cmpi.w #$800,($f78e).w
	bne.s loc_2014e0
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2014e0:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2014f6
	btst.b #$7,($ff152e).l
	beq.s loc_2014fc
loc_2014f6:
	move.l #$eee0eee,d0
loc_2014fc:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201504:
	move.l d0,(a1)+
	dbf d6,loc_201504
loc_20150a:
	move.b #$c,($f62a).w
	bsr.w sub_2006cc
	bsr.w sub_2027a6
	bne.s loc_20150a
	tst.l ($f680).w
	bne.s loc_20150a
	bsr.w sub_201992
	moveq #$0,d0
	lea (dat_20fc1e).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201536
	bsr.w sub_2028ac
loc_201536:
	moveq #$1,d0
	bsr.w sub_2028ac
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_201552:
	move.l d0,(a1)+
	dbf d1,loc_201552
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_201564:
	move.l d0,(a1)+
	dbf d1,loc_201564
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_201574:
	move.l d0,(a1)+
	dbf d1,loc_201574
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_201584:
	move.l d0,(a1)+
	dbf d1,loc_201584
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_201594:
	move.l d0,(a1)+
	dbf d1,loc_201594
	move.w #$2700,sr
	move.l #$213600,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202482
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
	bne.s loc_201628
	move.w #$8014,(a6)
	moveq #$0,d0
	move.b ($ff1507).l,d0
	lsl.w #$3,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	add.w d1,d1
	add.w d1,d0
	lea (dat_201aa8).l,a1
	move.w $0(a1,d0.w),d0
	move.w d0,($f646).w
	move.w d0,($f648).w
	move.w d0,($f64a).w
	clr.b ($f64d).w
	clr.b ($f64e).w
	move.b #$1,($f64c).w
loc_201628:
	move.w #$1e,($ff150a).l
	move.w #$2300,sr
	moveq #$3,d0
	bsr.w sub_20049a
	moveq #$3,d0
	bsr.w sub_20047e
	bsr.w sub_202b0e
	bsr.w sub_202c6a
	bset.b #$2,($f754).w
	bsr.w sub_203598
	bsr.w sub_20354a
	jsr (sub_2012ee).l
	bsr.w sub_2018f4
loc_201660:
	move.b #$c,($f62a).w
	bsr.w sub_2006cc
	bsr.w sub_2027a6
	bne.s loc_201660
	tst.l ($f680).w
	bne.s loc_201660
	bsr.w sub_2018d8
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_2019e2
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2016c4
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2016c4:
	move.b #$4,($d800).w
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201704
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201704:
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
	jsr (sub_20fc18).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201794
loc_20178e:
	bsr.w sub_200342
	bra.s loc_2017a2
loc_201794:
	bclr.b #$0,($ff0f22).l
	bne.s loc_20178e
	bsr.w sub_200222
loc_2017a2:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2017b2
	moveq #$0,d0
	bsr.w sub_2004b2
loc_2017b2:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2017c0:
	move.b #$8,($f62a).w
	bsr.w sub_2006cc
	tst.b ($f7cc).w
	bne.s loc_2017de
	btst.b #$7,($f605).w
	beq.s loc_2017de
	eori.b #$1,($f63a).w
loc_2017de:
	btst.b #$0,($f63a).w
	beq.w loc_201864
	bsr.w sub_201d3c
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201842
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2017c0
	subq.b #$1,($ff1508).l
	bpl.s loc_201810
	clr.b ($ff1508).l
loc_201810:
	move.w #$e,d0
	jsr (sub_205cae).l
	bsr.w sub_20791a
	clr.b ($ff1522).l
	jsr (sub_202508).l
	move.b #$1,($a01c3e).l
	jsr (sub_202524).l
	move.w #$1,($ff1502).l
	bra.s loc_201850
loc_201842:
	andi.b #$70,d0
	beq.w loc_2017c0
	clr.b ($ff1508).l
loc_201850:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_201380
loc_201864:
	bsr.w sub_201d82
	addq.w #$1,($ff1504).l
	jsr (sub_207930).l
	jsr (sub_2039ac).l
	cmpi.w #$800,($f78e).w
	beq.w loc_201380
	tst.w ($ff1502).l
	bne.w loc_201380
	tst.w ($ff1906).l
	bne.s loc_2018ac
	cmpi.b #$6,($d024).w
	bcs.s loc_2018ac
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018b0
loc_2018ac:
	bsr.w sub_202c6a
loc_2018b0:
	bsr.w sub_201c18
	jsr (sub_203b56).l
	tst.w ($ff190e).l
	bne.s loc_2018c6
	bsr.w sub_200184
loc_2018c6:
	jsr (sub_20c174).l
	bsr.w sub_2027a6
	bsr.w sub_2018fe
	bra.w loc_2017c0

sub_2018d8:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2018f0
	move.w #$78,$30(a1)
loc_2018f0:
	rts
	dc.b $4e,$75

sub_2018f4:
	move.l #$23ba76,($f796).w
	rts

sub_2018fe:
	subq.b #$1,($ff1910).l
	bpl.s loc_20191c
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_20191c:
	subq.b #$1,($ff1912).l
	bpl.s loc_20193a
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_20193a:
	subq.b #$1,($ff1914).l
	bpl.s loc_201962
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201962
	move.b #$0,($ff1915).l
loc_201962:
	tst.b ($ff1916).l
	beq.s loc_201990
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201990:
	rts

sub_201992:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_2019b4
	cmpi.b #$2,d0
	bne.s loc_2019b4
	add.b ($ff156a).l,d0
loc_2019b4:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_2019cc(pc,d1.w),d0
	jmp (sub_205cae).l
dat_2019cc:
	.incbin 6604, 22

sub_2019e2:
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

sub_201a46:
	tst.b ($f63a).w
	bne.s loc_201aa6
	cmpi.b #$6,($d024).w
	bcc.s loc_201a58
	bsr.w sub_201ac0
loc_201a58:
	move.b #$0,($f64e).w
	moveq #$0,d0
	addq.b #$2,($ff1955).l
	move.b ($ff1955).l,d0
	jsr (sub_2006d8).l
	lsr.w #$6,d0
	ext.w d0
	add.w ($f648).w,d0
	move.w d0,($f646).w
	move.w ($f646).w,d0
	sub.w ($f704).w,d0
	bcc.s loc_201a98
	tst.w d0
	bpl.s loc_201a98
	move.b #$df,($f625).w
	move.b #$1,($f64e).w
loc_201a98:
	cmpi.w #$df,d0
	bcs.s loc_201aa2
	move.w #$df,d0
loc_201aa2:
	move.b d0,($f625).w
loc_201aa6:
	rts
dat_201aa8:
	.incbin 6824, 24

sub_201ac0:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_201aec(pc,d0.w),d0
	jsr dat_201aec(pc,d0.w)
	moveq #$0,d1
	move.b ($f64c).w,d1
	move.w ($f64a).w,d0
	sub.w ($f648).w,d0
	beq.s loc_201aea
	bcc.s loc_201ae6
	neg.w d1
loc_201ae6:
	add.w d1,($f648).w
loc_201aea:
	rts
dat_201aec:
	dc.b $00,$06,$00,$56,$00,$fa
	move.w ($d008).w,d2
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201b08
	rts
loc_201b08:
	cmpi.b #$1,d0
	bne.s loc_201b1e
	move.w #$280,d1
	cmpi.w #$5e0,d2
	bcs.s loc_201b3c
	move.w #$260,d1
	bra.s loc_201b3c
loc_201b1e:
	move.w #$1d0,d1
	cmpi.w #$920,d2
	bcs.s loc_201b3c
	move.w #$110,d1
	cmpi.w #$1980,d2
	bcs.s loc_201b3c
	move.w #$240,d1
	move.b #$3,($f64c).w
loc_201b3c:
	move.w d1,($f64a).w
	rts
	move.w ($d008).w,d2
	move.w ($f704).w,d1
	addi.w #$e8,d1
	cmpi.w #$200,d2
	bcs.s loc_201b6a
	cmpi.w #$600,($d00c).w
	bcs.s loc_201b70
	cmpi.w #$6c0,($d00c).w
	bcc.s loc_201b70
	cmpi.w #$2a0,d2
	bcc.s loc_201b70
loc_201b6a:
	move.w d1,($f648).w
	bra.s loc_201be0
loc_201b70:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201b86
	move.w #$5b0,d1
	bra.s loc_201b6a
loc_201b86:
	cmpi.b #$1,d0
	bne.s loc_201bbe
	move.w #$530,d1
	cmpi.w #$c00,d2
	bcs.s loc_201be0
	move.w #$780,d1
	cmpi.w #$dc0,d2
	bcs.s loc_201be0
	move.w #$500,d1
	cmpi.w #$1380,d2
	bcc.s loc_201be0
	cmpi.w #$400,($d00c).w
	bcc.s loc_201bbc
	move.w #$3c0,d1
	cmpi.w #$1100,d2
	bcc.s loc_201be0
loc_201bbc:
	rts
loc_201bbe:
	move.w #$510,d1
	cmpi.w #$400,d2
	bcs.s loc_201be0
	move.w #$390,d1
	cmpi.w #$1600,d2
	bcs.s loc_201be0
	move.w #$410,d1
	cmpi.w #$1900,d2
	bcs.s loc_201be0
	move.w #$500,d1
loc_201be0:
	move.w d1,($f64a).w
	rts
	.incbin 7142, 50

sub_201c18:
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_201d38
	btst.b #$0,$2c(a1)
	bne.w loc_201d38
	tst.b (a1)
	beq.w loc_201d38
	tst.w ($ff1906).l
	bne.w loc_201d38
	moveq #$0,d0
	move.b ($ff1507).l,d0
	cmpi.b #$2,d0
	bcc.w loc_201d38
	lea (dat_20bfd4).l,a2
loc_201c56:
	move.w $8(a1),d0
	cmp.w (a2),d0
	bcs.w loc_201d1e
	cmp.w $4(a2),d0
	bcc.w loc_201d1e
	move.w $c(a1),d2
	cmp.w $2(a2),d2
	bcs.w loc_201d1e
	cmp.w $6(a2),d2
	bcc.w loc_201d1e
	move.b ($ff190d).l,d0
	andi.b #$3f,d0
	bne.s loc_201c8c
	move.w #$d0,d0
loc_201c8c:
	lea ($f7e0).w,a3
	moveq #$0,d0
	move.b $d(a2),d0
	cmpi.b #$1,$c(a2)
	bne.s loc_201ca8
	btst.b #$6,$0(a3,d0.w)
	beq.w loc_201d38
loc_201ca8:
	cmpi.b #$4,$24(a1)
	bcc.w loc_201d34
	move.b #$1,($f7c7).w
	clr.b $3c(a1)
	move.w $8(a2),$10(a1)
	move.w $a(a2),$12(a1)
	move.b #$f,$1c(a1)
	bset.b #$1,$22(a1)
	cmpi.b #$2,$c(a2)
	bne.s loc_201cec
	btst.b #$5,$0(a3,d0.w)
	beq.s loc_201cec
	neg.w $10(a1)
	neg.w $12(a1)
loc_201cec:
	btst.b #$0,($f602).w
	beq.s loc_201cf8
	subq.w #$1,$c(a1)
loc_201cf8:
	btst.b #$1,($f602).w
	beq.s loc_201d04
	addq.w #$1,$c(a1)
loc_201d04:
	btst.b #$2,($f602).w
	beq.s loc_201d10
	subq.w #$1,$8(a1)
loc_201d10:
	btst.b #$3,($f602).w
	beq.s loc_201d1c
	addq.w #$1,$8(a1)
loc_201d1c:
	rts
loc_201d1e:
	adda.w #$e,a2
	tst.b (a2)
	bpl.w loc_201c56
	tst.b ($f7c7).w
	beq.s loc_201d38
	move.b #$0,$1c(a1)
loc_201d34:
	clr.b ($f7c7).w
loc_201d38:
	rts
	dc.b $4e,$75

sub_201d3c:
	move.w #$ab,d0
	jsr (sub_202570).l
	bset.b #$7,($f63a).w
	bne.s loc_201d80
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201d66
loc_201d5c:
	move.w #$d5,d0
	jmp (sub_205cae).l
loc_201d66:
	tst.b ($ff151f).l
	bne.s loc_201d5c
	tst.b ($ff1520).l
	bne.s loc_201d5c
	move.w #$90,d0
	jmp (sub_205cae).l
loc_201d80:
	rts

sub_201d82:
	bclr.b #$7,($f63a).w
	beq.s loc_201dbc
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201da2
loc_201d98:
	move.w #$d6,d0
	jmp (sub_205cae).l
loc_201da2:
	tst.b ($ff151f).l
	bne.s loc_201d98
	tst.b ($ff1520).l
	bne.s loc_201d98
	move.w #$91,d0
	jmp (sub_205cae).l
loc_201dbc:
	rts
loc_201dbe:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201e44
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201dfa
	move.w #$700,d0
loc_201df6:
	dbf d0,loc_201df6
loc_201dfa:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201e2a(pc,d0.w),d0
	jsr dat_201e2a(pc,d0.w)
loc_201e10:
	tst.b ($f63a).w
	bne.s loc_201e1e
	bsr.w sub_202348
	bsr.w sub_202336
loc_201e1e:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201e2a:
	.incbin 7722, 26
loc_201e44:
	tst.b ($ff1957).l
	beq.s loc_201e10
	cmpi.b #$2,($ff1506).l
	bne.w loc_201e10
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201e70
	move.w #$700,d0
loc_201e6c:
	dbf d0,loc_201e6c
loc_201e70:
	move.w #$1,($f6fc).w
	jsr (sub_202508).l
	jsr (sub_201a46).l
	tst.b ($f64e).w
	bne.s loc_201eae
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201ed2
loc_201eae:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201ed2:
	move.w ($f624).w,(a5)
	jsr (sub_202524).l
	bra.w loc_201e10
	.incbin 7904, 60
	jsr (sub_202594).l
	jsr (sub_202508).l
	bsr.w sub_2023a4
	jsr (sub_201a46).l
	tst.b ($f64e).w
	bne.s loc_201f5e
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f82
loc_201f5e:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201f82:
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
	bsr.w sub_205bd0
	tst.b ($f767).w
	beq.s loc_20200c
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_20200c:
	tst.w ($ff190e).l
	bne.s loc_20201a
	jsr (sub_20fc18).l
loc_20201a:
	jsr (sub_202524).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	cmpi.b #$60,($f625).w
	bcc.s sub_202050
	move.b #$1,($f64f).w
	addq.l #$4,a7
	bra.w loc_201e10

sub_202050:
	bsr.w sub_203226
	bsr.w sub_202818
	jmp (loc_20a4d6).l
	dc.b $4e,$75
	jsr (sub_202508).l
	bsr.w sub_2023a4
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
	jsr (sub_202524).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203226
	bra.w loc_2027fc
	.incbin 8448, 16
	bsr.w sub_2021fc
	cmpi.b #$1,($ff1903).l
	bne.s loc_202132
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_202132:
	move.w ($f624).w,(a5)
	bra.w loc_2027fc
	.incbin 8506, 194

sub_2021fc:
	jsr (sub_202508).l
	bsr.w sub_2023a4
	tst.b ($f64e).w
	bne.s loc_202232
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202256
loc_202232:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202256:
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
	jmp (sub_202524).l
loc_2022a4:
	move.w #$2700,sr
	tst.w ($f6fc).w
	beq.s loc_202322
	move.w #$0,($f6fc).w
	cmpi.b #$df,($f625).w
	beq.s loc_202322
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
	bne.s loc_202324
loc_202322:
	rte
loc_202324:
	clr.b ($f64f).w
	movem.l d0-d7/a0-a6,-(a7)
	bsr.w sub_202050
	movem.l (a7)+,d0-d7/a0-a6
	rte

sub_202336:
	tst.b ($d02a).w
	bne.s loc_202346
	tst.w ($f786).w
	beq.s loc_202346
	addq.w #$1,($f786).w
loc_202346:
	rts

sub_202348:
	tst.w ($f780).w
	beq.s loc_202352
	addq.w #$1,($f780).w
loc_202352:
	tst.w ($f782).w
	beq.s loc_20235c
	addq.w #$1,($f782).w
loc_20235c:
	rts

sub_20235e:
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_20236c
	move.l #$2a6d365a,d1
loc_20236c:
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

sub_202388:
	bsr.w sub_202508
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_202524

sub_2023a4:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_2023b2
	addq.w #$2,a1

sub_2023b2:
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

sub_2023e0:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_20245c).l,a2
	moveq #$12,d7
loc_2023f4:
	move.w (a2)+,(a0)
	dbf d7,loc_2023f4
	move.w (dat_20245e).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_20241a:
	move.w d0,(a1)
	dbf d7,loc_20241a
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_20244c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20244c
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_20245c:
	dc.b $80,$04
dat_20245e:
	.incbin 9310, 36

sub_202482:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2024a4:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2024a4
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2024d2:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2024d2
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2024f0:
	move.l d0,(a1)+
	dbf d1,loc_2024f0
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202500:
	move.l d0,(a1)+
	dbf d1,loc_202500
	rts

sub_202508:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_202518:
	btst.b #$0,($a11100).l
	bne.s loc_202518
	rts

sub_202524:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9522, 60

sub_20256e:
	rts

sub_202570:
	tst.b ($f00a).w
	bne.s loc_20257c
	move.b d0,($f00a).w
	rts
loc_20257c:
	tst.b ($f00b).w
	bne.s loc_202588
	move.b d0,($f00b).w
	rts
loc_202588:
	tst.b ($f00c).w
	bne.s loc_202592
	move.b d0,($f00c).w
loc_202592:
	rts

sub_202594:
	jsr (sub_202508).l
	tst.b ($f00a).w
	beq.s loc_2025ae
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_2025ae:
	tst.b ($f00b).w
	beq.s loc_2025c2
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_2025c2:
	tst.b ($f00c).w
	beq.s loc_2025d6
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2025d6:
	bra.w sub_202524
	.incbin 9690, 32

sub_2025fa:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_2026bc).l,a3
	lea ($c00000).l,a4
	bra.s loc_202616

sub_20260c:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2026d2).l,a3
loc_202616:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_202624
	adda.w #$a,a3
loc_202624:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2026e8
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_202644
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_202644:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202690
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_20266c
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20266c:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_20267a:
	lsr.w #$4,d0
loc_20267c:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_20268a
	jmp (a3)

sub_202686:
	moveq #$0,d4
	moveq #$8,d3
loc_20268a:
	dbf d0,loc_20267c
	bra.s sub_202644
loc_202690:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_20269e
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_20269e:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_20267a
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_20267a
loc_2026bc:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202686
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202686
	rts
dat_2026d2:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202686
	rts

sub_2026e8:
	move.b (a0)+,d0
loc_2026ea:
	cmpi.b #$ff,d0
	bne.s loc_2026f2
	rts
loc_2026f2:
	move.w d0,d7
loc_2026f4:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2026ea
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
	bne.s loc_202722
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2026f4
loc_202722:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_20272e:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_20272e
	bra.s loc_2026f4

sub_20273a:
	movem.l a1-a2,-(a7)
	lea (dat_20fc2e).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202752:
	tst.l (a2)
	beq.s loc_20275a
	addq.w #$6,a2
	bra.s loc_202752
loc_20275a:
	move.w (a1)+,d0
	bmi.s loc_202766
loc_20275e:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20275e
loc_202766:
	movem.l (a7)+,a1-a2
	rts
loc_20276c:
	movem.l a1-a2,-(a7)
	lea (dat_20fc2e).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202798
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202792
loc_20278a:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_20278a
loc_202792:
	movem.l (a7)+,a1-a2
	rts

sub_202798:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_20279e:
	clr.l (a2)+
	dbf d0,loc_20279e
	rts

sub_2027a6:
	tst.l ($f680).w
	beq.s loc_2027fa
	tst.w ($f6f8).w
	bne.s loc_2027fa
	movea.l ($f680).w,a0
	lea (loc_2026bc).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_2027c8
	adda.w #$a,a3
loc_2027c8:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2026e8
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
loc_2027fa:
	rts
loc_2027fc:
	tst.w ($f6f8).w
	beq.w loc_20289a
loc_202804:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_202836

sub_202818:
	tst.w ($f6f8).w
	beq.s loc_20289a
	tst.b ($f744).w
	bne.s loc_202804
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_202836:
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
loc_20286a:
	movea.w #$8,a5
	bsr.w sub_202686
	subq.w #$1,($f6f8).w
	beq.s loc_20289c
	subq.w #$1,($f6fa).w
	bne.s loc_20286a
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_20289a:
	rts
loc_20289c:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2028a2:
	move.l $6(a0),(a0)+
	dbf d0,loc_2028a2
	rts

sub_2028ac:
	lea (dat_20fc2e).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_2028be:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2025fa
	dbf d1,loc_2028be
	rts
	.incbin 10462, 560

sub_202b0e:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202b6a).l,a0
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
	bra.w loc_202b96
dat_202b6a:
	dc.b $00,$04,$00,$00,$1c,$97,$00,$00
	dc.b $08,$00,$00,$60
dat_202b76:
	.incbin 11126, 32
loc_202b96:
	tst.b ($ff1522).l
	beq.s loc_202bb2
	jsr (sub_206b76).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bra.s loc_202bee
loc_202bb2:
	lea (dat_202c2a).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202bd4
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202b76).l,a1
	adda.w d0,a1
	bra.s loc_202bde
loc_202bd4:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202bde:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202bee:
	subi.w #$a0,d1
	bcc.s loc_202bf6
	moveq #$0,d1
loc_202bf6:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202c00
	move.w d2,d1
loc_202c00:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202c0c
	moveq #$0,d0
loc_202c0c:
	cmp.w ($f72e).w,d0
	blt.s loc_202c16
	move.w ($f72e).w,d0
loc_202c16:
	move.w d0,($f704).w
	bsr.w sub_202c32
	lea (dat_202c2e).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202c2a:
	dc.b $00,$50,$04,$ec
dat_202c2e:
	dc.b $7f,$7f,$7f,$7f

sub_202c32:
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

sub_202c6a:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202c76
	rts
loc_202c76:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202e9c
	bsr.w sub_202f3c
	bsr.w sub_203640
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
	bsr.w sub_20308e
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
loc_202cf2:
	move.w d0,(a1)+
	dbf d6,loc_202cf2
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
	bra.w loc_202d1e
loc_202d1e:
	lea (dat_202d9c).l,a3
	lea (dat_23f760).l,a4
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
loc_202d54:
	cmp.w ($f646).w,d1
	bge.s loc_202d74
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202d6e
	moveq #$0,d2
	move.w (a2)+,d0
loc_202d6e:
	dbf d6,loc_202d54
	rts
loc_202d74:
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
	bne.s loc_202d96
	moveq #$0,d2
	move.w (a2)+,d0
loc_202d96:
	dbf d6,loc_202d74
	rts
dat_202d9c:
	.incbin 11676, 256

sub_202e9c:
	move.w ($f700).w,d4
	bsr.s sub_202ed0
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202ece
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202ec8
	bset.b #$2,($f754).w
	rts
loc_202ec8:
	bset.b #$3,($f754).w
loc_202ece:
	rts

sub_202ed0:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202ee2
	bcs.s loc_202f12
	bra.s loc_202ee8
loc_202ee2:
	clr.w ($f73a).w
	rts
loc_202ee8:
	cmpi.w #$10,d0
	blt.s loc_202ef2
	move.w #$10,d0
loc_202ef2:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202f00
	move.w ($f72a).w,d0
loc_202f00:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202f12:
	cmpi.w #$fff0,d0
	bge.s loc_202f1c
	move.w #$fff0,d0
loc_202f1c:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202f00
	move.w ($f728).w,d0
	bra.s loc_202f00
	.incbin 12076, 16

sub_202f3c:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202f50
	subq.w #$5,d0
loc_202f50:
	btst.b #$1,$22(a6)
	beq.s loc_202f70
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202fbc
	subi.w #$40,d0
	bcc.s loc_202fbc
	tst.b ($f75c).w
	bne.s loc_202fce
	bra.s loc_202f7c
loc_202f70:
	sub.w ($f73e).w,d0
	bne.s loc_202f82
	tst.b ($f75c).w
	bne.s loc_202fce
loc_202f7c:
	clr.w ($f73c).w
	rts
loc_202f82:
	cmpi.w #$60,($f73e).w
	bne.s loc_202faa
	move.w $14(a6),d1
	bpl.s loc_202f92
	neg.w d1
loc_202f92:
	cmpi.w #$800,d1
	bcc.s loc_202fbc
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_20301c
	cmpi.w #$fffa,d0
	blt.s loc_202fe6
	bra.s loc_202fd4
loc_202faa:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_20301c
	cmpi.w #$fffe,d0
	blt.s loc_202fe6
	bra.s loc_202fd4
loc_202fbc:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_20301c
	cmpi.w #$fff0,d0
	blt.s loc_202fe6
	bra.s loc_202fd4
loc_202fce:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202fd4:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_203026
	bra.w loc_202ff2
loc_202fe6:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ff2:
	cmp.w ($f72c).w,d1
	bgt.s loc_20304a
	cmpi.w #$0,d1
	bgt.s loc_203016
	addi.w #$800,d1
	addi.w #$800,$c(a6)
	addi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_20304a
loc_203016:
	move.w ($f72c).w,d1
	bra.s loc_20304a
loc_20301c:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_203026:
	cmp.w ($f72e).w,d1
	blt.s loc_20304a
	subi.w #$800,d1
	bcs.s loc_203046
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_20304a
loc_203046:
	move.w ($f72e).w,d1
loc_20304a:
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
	bne.s loc_20308c
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_203086
	bset.b #$0,($f754).w
	rts
loc_203086:
	bset.b #$1,($f754).w
loc_20308c:
	rts

sub_20308e:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030c2
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030bc
	bset.b #$2,($f756).w
	bra.s loc_2030c2
loc_2030bc:
	bset.b #$3,($f756).w
loc_2030c2:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_2030f6
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_2030f0
	bset.b #$0,($f756).w
	rts
loc_2030f0:
	bset.b #$1,($f756).w
loc_2030f6:
	rts
	.incbin 12536, 302

sub_203226:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20327e
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2032e4
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2032e6
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2

sub_20327e:
	tst.b (a2)
	beq.s loc_2032e2
	bclr.b #$0,(a2)
	beq.s loc_203298
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203512
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032e8
loc_203298:
	bclr.b #$1,(a2)
	beq.s loc_2032b2
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203512
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032e8
loc_2032b2:
	bclr.b #$2,(a2)
	beq.s loc_2032c8
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203512
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20333e
loc_2032c8:
	bclr.b #$3,(a2)
	beq.s loc_2032e2
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203512
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20333e
loc_2032e2:
	rts

sub_2032e4:
	rts

sub_2032e6:
	rts

sub_2032e8:
	moveq #$15,d6

sub_2032ea:
	move.l #$800000,d7
	move.l d0,d1
loc_2032f2:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033ea
	move.l d1,d0
	bsr.w sub_20336c
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2032f2
	rts
	.incbin 13076, 42

sub_20333e:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203348:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033ea
	move.l d1,d0
	bsr.w sub_20336c
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203348
	rts

sub_20336c:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033a8
	btst.b #$3,(a0)
	bne.s loc_203388
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203388:
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
loc_2033a8:
	btst.b #$3,(a0)
	bne.s loc_2033ca
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
loc_2033ca:
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

sub_2033ea:
	add.w (a3),d5
	add.w $4(a3),d4

sub_2033f0:
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
	beq.s loc_20343a
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
loc_20343a:
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
	dc.b $2f,$08,$49,$f8,$a0,$00
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2033f0
	bne.s loc_2034a0
	movem.l (a7)+,d3-d5
	bra.s loc_2034ca
loc_2034a0:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_2034ce
	bne.s loc_2034ca
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_203518
	bsr.w sub_20336c
	movem.l (a7)+,d3-d5
loc_2034ca:
	movea.l (a7)+,a0
	rts

sub_2034ce:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_20350e
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_20350e
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_20350e
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_20350e
	moveq #$0,d0
	rts
loc_20350e:
	moveq #$1,d0
	rts

sub_203512:
	add.w (a3),d5
	add.w $4(a3),d4

sub_203518:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13614, 28

sub_20354a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203570
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2

sub_203570:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203574:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203512
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2032ea
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203574
	rts

sub_203598:
	moveq #$0,d0
	lea (dat_20fc1e).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20260c
	movea.l (a2)+,a0
	bsr.w sub_2035f2
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20047e
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2035dc
	jmp (loc_20c150).l
loc_2035dc:
	btst.b #$1,($ff151c).l
	beq.s loc_2035f0
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035f0
	bsr.w sub_20273a
loc_2035f0:
	rts

sub_2035f2:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2035fc:
	move.l d0,(a3)+
	dbf d1,loc_2035fc
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203612
	lea ($a040).w,a3
	moveq #$2,d1

sub_203612:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23bd32).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20362c:
	move.w d1,d0
	movea.l a3,a0
loc_203630:
	move.b (a1)+,(a0)+
	dbf d0,loc_203630
	lea $80(a3),a3
	dbf d2,loc_20362c
	rts

sub_203640:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036ba(pc,d0.w),d0
	jsr dat_2036ba(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203666
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203666:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203694
	bcc.s loc_203696
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_20368a
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_20368a:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203694:
	rts
loc_203696:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036ae
	btst.b #$1,($d022).w
	beq.s loc_2036ae
	add.w d1,d1
	add.w d1,d1
loc_2036ae:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036ba:
	.incbin 14010, 460
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203898(pc,d0.w),d0
	jmp dat_203898(pc,d0.w)
dat_203898:
	dc.b $00,$06,$00,$0e,$00,$40,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	cmpi.b #$2b,($d01c).w
	beq.s loc_2038ca
	cmpi.b #$6,($d024).w
	bcc.s loc_2038ca
	move.w #$800,($f72e).w
	move.w #$800,($f726).w
	cmpi.w #$200,($f700).w
	bcs.s loc_2038d6
loc_2038ca:
	move.w #$710,($f72e).w
	move.w #$710,($f726).w
loc_2038d6:
	rts
	.incbin 14552, 212

sub_2039ac:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039b4:
	move.b (a0),d0
	beq.s loc_2039ca
	add.w d0,d0
	add.w d0,d0
	lea (dat_203dce).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039ca:
	lea $40(a0),a0
	dbf d7,loc_2039b4
	rts

sub_2039d4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a12
	bpl.s loc_203a04
	btst.b #$1,$2c(a0)
	beq.s loc_203a04
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a12
loc_203a04:
	btst.b #$2,$2c(a0)
	bne.s loc_203a12
	addi.w #$38,$12(a0)
loc_203a12:
	tst.w $12(a0)
	bmi.s loc_203a26
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a26
	move.w #$1000,$12(a0)
loc_203a26:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a36:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a72
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a72
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a70
	neg.w d1
loc_203a70:
	add.w d1,d0
loc_203a72:
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

sub_203a8c:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203afc
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b18
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b18
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203ad6
	cmpi.w #$800,d3
	bcs.s loc_203ae8
	subi.w #$800,d3
	bra.s loc_203ae8
loc_203ad6:
	cmpi.w #$700,($f704).w
	bcs.s loc_203ae8
	cmpi.w #$100,d3
	bcc.s loc_203ae8
	addi.w #$800,d3
loc_203ae8:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b18
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b18
loc_203afc:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b18
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b18:
	rts
	.incbin 15130, 30

sub_203b38:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b3e:
	move.l d1,(a1)+
	dbf d0,loc_203b3e
	rts
dat_203b46:
	.incbin 15174, 16

sub_203b56:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b62:
	tst.w (a4)
	beq.w loc_203c22
	moveq #$2,d6
loc_203b6a:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c1a
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bd0
	movea.l dat_203b46(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203bb4
	cmpi.w #$800,d2
	bcs.s loc_203bc6
	subi.w #$800,d2
	bra.s loc_203bc6
loc_203bb4:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203bc6
	cmpi.w #$100,d2
	bcc.s loc_203bc6
	addi.w #$800,d2
loc_203bc6:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203bf2
loc_203bd0:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203bf2
	.incbin 15322, 24
loc_203bf2:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c10
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c14
loc_203c10:
	bsr.w sub_203c44
loc_203c14:
	bset.b #$7,$1(a0)
loc_203c1a:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203b6a
loc_203c22:
	lea $80(a4),a4
	dbf d7,loc_203b62
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c3c
	move.l #$0,(a2)
	rts
loc_203c3c:
	move.b #$0,-$5(a2)
	rts

sub_203c44:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c8a
	btst.l #$1,d4
	bne.w loc_203cd8
loc_203c56:
	cmpi.b #$50,d5
	beq.s loc_203c88
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
	bne.s loc_203c82
	addq.w #$1,d0
loc_203c82:
	move.w d0,(a2)+
	dbf d1,loc_203c56
loc_203c88:
	rts
loc_203c8a:
	btst.l #$1,d4
	bne.w loc_203d1e
loc_203c92:
	cmpi.b #$50,d5
	beq.s loc_203cd6
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
	bne.s loc_203cd0
	addq.w #$1,d0
loc_203cd0:
	move.w d0,(a2)+
	dbf d1,loc_203c92
loc_203cd6:
	rts
loc_203cd8:
	cmpi.b #$50,d5
	beq.s loc_203d1c
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
	bne.s loc_203d16
	addq.w #$1,d0
loc_203d16:
	move.w d0,(a2)+
	dbf d1,loc_203cd8
loc_203d1c:
	rts
loc_203d1e:
	cmpi.b #$50,d5
	beq.s loc_203d70
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
	bne.s loc_203d6a
	addq.w #$1,d0
loc_203d6a:
	move.w d0,(a2)+
	dbf d1,loc_203d1e
loc_203d70:
	rts
	.incbin 15730, 92
dat_203dce:
	.incbin 15822, 334

sub_203f1c:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f2e
	move.w #$0,(a1)
	rts
loc_203f2e:
	tst.w (a1)
	bne.s loc_203f38
	move.b #$1,$1(a1)
loc_203f38:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f82
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f74
	neg.w $10(a0)
loc_203f74:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205cae
loc_203f82:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203fa0
	cmpa.w #$d040,a0
	beq.s loc_203fa0
	tst.b ($ff1906).l
	beq.s loc_203fa0
	jmp (loc_20749c).l
loc_203fa0:
	move.b $2a(a0),d0
	beq.s loc_203fca
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203fbc
	cmpi.b #$2d,d0
	bcs.s loc_203fc6
	move.b #$2d,d0
	bra.s loc_203fc6
loc_203fbc:
	cmpi.b #$1e,d0
	bcs.s loc_203fc6
	move.b #$1e,d0
loc_203fc6:
	move.b d0,$2a(a0)
loc_203fca:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203fd8(pc,d0.w),d1
	jmp dat_203fd8(pc,d1.w)
dat_203fd8:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203fe2:
	tst.b ($d300).w
	bne.s loc_204020
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_204020:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204048
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204048:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_20407c:
	tst.b ($ff1506).l
	bne.s loc_2040e2
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2040e2
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2040e6
	cmpi.b #$2f,d1
	bne.s loc_2040e4
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2040e2
	tst.b $2c(a0)
	beq.s loc_2040e2
	jsr (sub_207b2c).l
	bne.s loc_2040e2
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2040da
	moveq #$0,d0
loc_2040da:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2040e2:
	rts
loc_2040e4:
	rts

sub_2040e6:
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

sub_20410c:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204118
	neg.w d0
loc_204118:
	btst.b #$1,$2c(a0)
	beq.s loc_204128
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_204150
loc_204128:
	cmpi.w #$600,d0
	bcs.s loc_204150
	tst.w $14(a0)
	bpl.s loc_204142
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_20415e
	move.w #$e0,d1
	bra.s loc_20415e
loc_204142:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_20415e
	move.w #$60,d1
	bra.s loc_20415e
loc_204150:
	cmpi.w #$a0,d1
	beq.s loc_20415e
	bcc.s loc_20415c
	addq.w #$2,d1
	bra.s loc_20415e
loc_20415c:
	subq.w #$2,d1
loc_20415e:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_20410c
	bsr.w sub_20407c
	tst.w ($ff1588).l
	beq.s loc_204184
	btst.b #$4,($f605).w
	beq.s loc_204184
	move.b #$1,($ff1906).l
	rts
loc_204184:
	tst.b ($f7cc).w
	bne.s loc_204190
	move.w ($f604).w,($f602).w
loc_204190:
	btst.b #$0,$2c(a0)
	beq.s loc_2041b4
	cmpi.b #$6,($ff1506).l
	bne.s loc_2041ae
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2041cc
loc_2041ae:
	bsr.w sub_204496
	bra.s loc_2041cc
loc_2041b4:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_204212(pc,d0.w),d1
	jsr dat_204212(pc,d1.w)
	jsr (sub_206aa2).l
loc_2041cc:
	bsr.s sub_204220
	bsr.w sub_2042e0
	bsr.w sub_2042fa
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2041f4
	tst.b $1c(a0)
	bne.s loc_2041f4
	move.b $1d(a0),$1c(a0)
loc_2041f4:
	bsr.w sub_20569e
	tst.b $2c(a0)
	bmi.s loc_20420c
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20420c
	jsr (sub_207046).l
loc_20420c:
	bsr.w sub_205554
	rts
dat_204212:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_204220:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204244
	move.w $30(a0),d0
	beq.s loc_204236
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204244
loc_204236:
	btst.b #$6,$2c(a0)
	bne.s loc_204244
	jsr (sub_203a8c).l
loc_204244:
	tst.b ($ff151f).l
	beq.s loc_204288
	tst.w $32(a0)
	beq.s loc_204288
	subq.w #$1,$32(a0)
	bne.s loc_204288
	tst.b ($ff1520).l
	bne.s loc_204280
	tst.b ($ff1958).l
	bne.s loc_204280
	tst.b ($ff152e).l
	bne.s loc_20427a
	move.w #$e,d0
	jsr (sub_205cae).l
loc_20427a:
	jsr (sub_201992).l
loc_204280:
	move.b #$0,($ff151f).l
loc_204288:
	tst.b ($ff1520).l
	beq.s loc_2042de
	tst.w $34(a0)
	beq.s loc_2042de
	subq.w #$1,$34(a0)
	bne.s loc_2042de
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042d6
	tst.b ($ff1958).l
	bne.s loc_2042d6
	tst.b ($ff152e).l
	bne.s loc_2042d0
	move.w #$e,d0
	jsr (sub_205cae).l
loc_2042d0:
	jsr (sub_201992).l
loc_2042d6:
	move.b #$0,($ff1520).l
loc_2042de:
	rts

sub_2042e0:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2042fa:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204306
loc_204304:
	rts
loc_204306:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204318
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204304
loc_204318:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_20435c
	bset.b #$6,$22(a0)
	bne.s loc_204304
	bsr.w sub_20612e
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204304
	bra.s loc_204394
loc_20435c:
	tst.w $12(a0)
	beq.s loc_204364
	bpl.s loc_204304
loc_204364:
	bclr.b #$6,$22(a0)
	beq.s loc_204304
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204304
	cmpi.w #$f000,$12(a0)
	bgt.s loc_204394
	move.w #$f000,$12(a0)
loc_204394:
	jsr (sub_207b2c).l
	bne.s loc_2043a8
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2043a8:
	rts

sub_2043aa:
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
	bcs.s loc_204484
	move.l #$50000,d0
loc_204484:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204496:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044bc
	tst.b ($ff152e).l
	beq.s loc_2044b2
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044bc
loc_2044b2:
	cmpi.w #$900,$8(a0)
	bcs.w loc_20456c
loc_2044bc:
	tst.b $2a(a0)
	bne.w loc_20457a
	tst.b ($f784).w
	beq.w loc_20457a
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044da
	neg.w d0
loc_2044da:
	tst.w ($f786).w
	bne.s loc_2044e6
	move.w #$1,($f786).w
loc_2044e6:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2044fc
	move.b #$1,($ff1502).l
	bra.w loc_205caa
loc_2044fc:
	cmpi.w #$d2,d1
	bcs.s loc_204550
	cmpi.b #$2,($ff1522).l
	beq.s loc_20454e
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204526
	move.w #$82,d0
	jsr (sub_205cae).l
	moveq #$0,d0
loc_204526:
	add.b ($f784).w,d0
	bpl.s loc_204530
	moveq #$0,d0
	bra.s loc_204538
loc_204530:
	cmpi.b #$3,d0
	bcs.s loc_204538
	moveq #$2,d0
loc_204538:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043aa
	move.b #$2,($ff1522).l
loc_20454e:
	rts
loc_204550:
	cmpi.w #$5a,d1
	bcc.s loc_204568
	cmp.w d2,d0
	bcc.w loc_203fe2
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204568:
	cmp.w d2,d0
	bcc.s loc_20457a
loc_20456c:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_20457a:
	rts
	bsr.w sub_203f1c
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045ac
	tst.b ($ff195b).l
	beq.s loc_20459a
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045d6
	bra.s loc_2045a2
loc_20459a:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045d6
loc_2045a2:
	bsr.w sub_204e3e
	jmp (sub_2039d4).l
loc_2045ac:
	bsr.w sub_204684
	bsr.w sub_204496
	bsr.w sub_204f28
	bsr.w sub_205054
	bsr.w sub_2046f8
	bsr.w sub_204eaa
	bsr.w sub_204e3e
	jsr (sub_203a36).l
	bsr.w sub_200ad8
	bsr.w sub_2050d2
loc_2045d6:
	rts
	.incbin 17880, 76
	bsr.w sub_204684
	bsr.w sub_204496
	bsr.w sub_204f28
	bsr.w sub_205090
	bsr.w sub_204b98
	bsr.w sub_204e3e
	tst.b $2a(a0)
	bne.s loc_204648
	jsr (sub_203a36).l
loc_204648:
	bsr.w sub_200ad8
	bsr.w sub_2050d2
	rts
	bsr.w sub_204684
	bsr.w sub_204496
	bsr.w sub_205012
	bsr.w sub_204d5e
	bsr.w sub_204e3e
	jsr (sub_2039d4).l
	btst.b #$6,$22(a0)
	beq.s loc_20467a
	subi.w #$28,$12(a0)
loc_20467a:
	bsr.w sub_20511c
	bsr.w sub_205140
	rts

sub_204684:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2046f0
	tst.w ($ff1506).l
	bne.s loc_2046f0
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2046f2).l,a2
loc_2046b8:
	move.b (a2)+,d0
	bmi.s loc_2046c8
	cmp.b d0,d1
	bne.s loc_2046b8
	bset.b #$1,$2c(a0)
	rts
loc_2046c8:
	bclr.b #$1,$2c(a0)
	beq.s loc_2046f0
	tst.w $12(a0)
	bpl.s loc_2046f0
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2046f0
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2046f0
	neg.w $10(a0)
loc_2046f0:
	rts
dat_2046f2:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2046f8:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a22
	tst.w $3e(a0)
	bne.w loc_2049d2
	btst.b #$2,($f602).w
	beq.s loc_204720
	bsr.w sub_204ab2
loc_204720:
	btst.b #$3,($f602).w
	beq.s loc_20472c
	bsr.w sub_204b28
loc_20472c:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049d2
	tst.w $14(a0)
	beq.s loc_20474c
	tst.b $2a(a0)
	beq.w loc_2049d2
	bra.s loc_204758
loc_20474c:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204758:
	btst.b #$3,$22(a0)
	beq.s loc_2047aa
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204802
	cmpi.b #$1e,$0(a1)
	bne.s loc_20478a
	move.b #$0,$1c(a0)
	bra.w loc_2049d2
loc_20478a:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2047e6
	cmp.w d2,d1
	bge.s loc_2047d4
	bra.s loc_204802
loc_2047aa:
	jsr (sub_206daa).l
	cmpi.w #$c,d1
	blt.s loc_204802
	move.w #$ab,d0
	jsr (sub_202570).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2047de
loc_2047d4:
	btst.b #$0,$22(a0)
	bne.s loc_2047ee
	bra.s loc_2047f8
loc_2047de:
	cmpi.b #$3,$37(a0)
	bne.s loc_204802
loc_2047e6:
	btst.b #$0,$22(a0)
	bne.s loc_2047f8
loc_2047ee:
	move.b #$32,$1c(a0)
	bra.w loc_2049d2
loc_2047f8:
	move.b #$6,$1c(a0)
	bra.w loc_2049d2
loc_204802:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204816
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204816:
	btst.b #$7,($f788).w
	bne.w loc_20491a
	btst.b #$6,($f788).w
	bne.w loc_20493a
	btst.b #$1,($f602).w
	bne.w loc_20493a
	andi.b #$f,($f788).w
	beq.s loc_20484e
	btst.b #$0,($f603).w
	beq.s loc_204862
	bset.b #$7,($f788).w
	bra.w loc_2049f6
loc_20484e:
	btst.b #$0,($f603).w
	beq.w loc_204862
	move.b #$1,($f788).w
	bra.w loc_2049f6
loc_204862:
	btst.b #$0,($f602).w
	beq.s loc_2048de
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048c0
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204892
	asr.w #$1,d2
	sub.w d2,d1
loc_204892:
	btst.b #$0,$22(a0)
	beq.s loc_20489e
	neg.w d0
	neg.w d1
loc_20489e:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048b4
	cmp.w d0,d1
	ble.s loc_2048ba
	bra.s loc_2048b8
loc_2048b4:
	cmp.w d1,d0
	ble.s loc_2048ba
loc_2048b8:
	move.w d1,d0
loc_2048ba:
	move.w d0,$14(a0)
	rts
loc_2048c0:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048da
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202570).l
loc_2048da:
	bra.w loc_2049f6
loc_2048de:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2048fe
	move.w #$ab,d0
	jsr (sub_202570).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_20493a
loc_2048fe:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202570).l
	bra.w loc_2049d2
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_20491a:
	btst.b #$0,($f602).w
	beq.s loc_20493a
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2049f6
	addq.w #$2,($f73e).w
	bra.w loc_2049f6
loc_20493a:
	btst.b #$6,($f788).w
	bne.w loc_2049b6
	andi.b #$f,($f788).w
	beq.s loc_20495e
	btst.b #$1,($f603).w
	beq.s loc_204970
	bset.b #$6,($f788).w
	bra.w loc_2049f6
loc_20495e:
	btst.b #$1,($f603).w
	beq.s loc_204970
	move.b #$1,($f788).w
	bra.w loc_2049f6
loc_204970:
	btst.b #$1,($f602).w
	beq.s loc_2049d2
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049b4
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049b4
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049a6
	neg.w $14(a0)
loc_2049a6:
	move.w #$9c,d0
	jsr (sub_202570).l
	bsr.w sub_204ed2
loc_2049b4:
	bra.s loc_2049f6
loc_2049b6:
	btst.b #$1,($f602).w
	beq.s loc_2049d2
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2049f6
	subq.w #$2,($f73e).w
	bra.s loc_2049f6
loc_2049d2:
	cmpi.w #$60,($f73e).w
	bne.s loc_2049ec
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2049f6
	move.b #$0,($f788).w
	bra.s loc_2049f6
loc_2049ec:
	bcc.s loc_2049f2
	addq.w #$4,($f73e).w
loc_2049f2:
	subq.w #$2,($f73e).w
loc_2049f6:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a22
	move.w $14(a0),d0
	beq.s loc_204a22
	bmi.s loc_204a16
	sub.w d5,d0
	bcc.s loc_204a10
	move.w #$0,d0
loc_204a10:
	move.w d0,$14(a0)
	bra.s loc_204a22
loc_204a16:
	add.w d5,d0
	bcc.s loc_204a1e
	move.w #$0,d0
loc_204a1e:
	move.w d0,$14(a0)
loc_204a22:
	move.b $26(a0),d0
	jsr (sub_2006d8).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a40:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204ab0
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204ab0
	bmi.s loc_204a58
	neg.w d1
loc_204a58:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c6a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204ab0
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204aac
	cmpi.b #$40,d0
	beq.s loc_204a9a
	cmpi.b #$80,d0
	beq.s loc_204a94
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204a94:
	sub.w d1,$12(a0)
	rts
loc_204a9a:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204aac:
	add.w d1,$12(a0)
loc_204ab0:
	rts

sub_204ab2:
	tst.b $2a(a0)
	bne.s loc_204b26
	move.w $14(a0),d0
	beq.s loc_204ac0
	bpl.s loc_204af0
loc_204ac0:
	bset.b #$0,$22(a0)
	bne.s loc_204ad4
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204ad4:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204ae4
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204ae4
	move.w d1,d0
loc_204ae4:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204af0:
	sub.w d4,d0
	bcc.s loc_204af8
	move.w #$ff80,d0
loc_204af8:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b26
	cmpi.w #$400,d0
	blt.s loc_204b26
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202570).l
loc_204b26:
	rts

sub_204b28:
	tst.b $2a(a0)
	bne.s loc_204b96
	move.w $14(a0),d0
	bmi.s loc_204b60
	bclr.b #$0,$22(a0)
	beq.s loc_204b48
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b48:
	cmp.w d6,d0
	bge.s loc_204b54
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b54
	move.w d6,d0
loc_204b54:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b60:
	add.w d4,d0
	bcc.s loc_204b68
	move.w #$80,d0
loc_204b68:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b96
	cmpi.w #$fc00,d0
	bgt.s loc_204b96
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202570).l
loc_204b96:
	rts

sub_204b98:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204ce2
	tst.w $3e(a0)
	bne.s loc_204bd0
	btst.b #$2,($f602).w
	beq.s loc_204bc4
	bsr.w sub_204d18
loc_204bc4:
	btst.b #$3,($f602).w
	beq.s loc_204bd0
	bsr.w sub_204d3c
loc_204bd0:
	tst.b $2a(a0)
	beq.w loc_204c7a
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204bf0
	asr.w #$1,d2
	sub.w d2,d1
loc_204bf0:
	btst.b #$0,$22(a0)
	beq.s loc_204bfc
	neg.w d0
	neg.w d1
loc_204bfc:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204c12
	cmp.w d0,d1
	ble.s loc_204c18
	bra.s loc_204c16
loc_204c12:
	cmp.w d1,d0
	ble.s loc_204c18
loc_204c16:
	move.w d1,d0
loc_204c18:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c4c
	rts
loc_204c26:
	move.w #$ab,d0
	jsr (sub_202570).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204cac
loc_204c4c:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c26
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202570).l
	btst.b #$0,$22(a0)
	bne.s loc_204c72
	bsr.w sub_204d3c
	bra.s loc_204c7a
loc_204c72:
	bsr.w sub_204d18
	bra.s loc_204c7a
	dc.b $4e,$75
loc_204c7a:
	move.w $14(a0),d0
	beq.s loc_204c9c
	bmi.s loc_204c90
	sub.w d5,d0
	bcc.s loc_204c8a
	move.w #$0,d0
loc_204c8a:
	move.w d0,$14(a0)
	bra.s loc_204c9c
loc_204c90:
	add.w d5,d0
	bcc.s loc_204c98
	move.w #$0,d0
loc_204c98:
	move.w d0,$14(a0)
loc_204c9c:
	tst.w $14(a0)
	bne.s loc_204ce2
	move.w #$ab,d0
	jsr (sub_202570).l
loc_204cac:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204ccc
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204cdc
loc_204ccc:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204cdc:
	move.b #$5,$1c(a0)
loc_204ce2:
	move.b $26(a0),d0
	jsr (sub_2006d8).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d06
	move.w #$1000,d1
loc_204d06:
	cmpi.w #$f000,d1
	bge.s loc_204d10
	move.w #$f000,d1
loc_204d10:
	move.w d1,$10(a0)
	bra.w loc_204a40

sub_204d18:
	move.w $14(a0),d0
	beq.s loc_204d20
	bpl.s loc_204d2e
loc_204d20:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d2e:
	sub.w d4,d0
	bcc.s loc_204d36
	move.w #$ff80,d0
loc_204d36:
	move.w d0,$14(a0)
	rts

sub_204d3c:
	move.w $14(a0),d0
	bmi.s loc_204d50
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d50:
	add.w d4,d0
	bcc.s loc_204d58
	move.w #$80,d0
loc_204d58:
	move.w d0,$14(a0)
	rts

sub_204d5e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204d98
	tst.w ($ff1506).l
	bne.s loc_204d98
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204d90
	cmpi.w #$840,$8(a0)
	bcc.s loc_204d90
	rts
loc_204d90:
	btst.b #$1,$2c(a0)
	bne.s loc_204dc8
loc_204d98:
	btst.b #$2,($f602).w
	beq.s loc_204db2
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204db2
	move.w d1,d0
loc_204db2:
	btst.b #$3,($f602).w
	beq.s loc_204dc8
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204dc8
	move.w d6,d0
loc_204dc8:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204dde
	bcc.s loc_204dda
	addq.w #$4,($f73e).w
loc_204dda:
	subq.w #$2,($f73e).w
loc_204dde:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204e0c
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204e0c
	bmi.s loc_204e00
	sub.w d1,d0
	bcc.s loc_204dfa
	move.w #$0,d0
loc_204dfa:
	move.w d0,$10(a0)
	rts
loc_204e00:
	sub.w d1,d0
	bcs.s loc_204e08
	move.w #$0,d0
loc_204e08:
	move.w d0,$10(a0)
loc_204e0c:
	rts
	.incbin 19982, 48

sub_204e3e:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e92
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e6c
	addi.w #$38,d0
loc_204e6c:
	cmp.w d1,d0
	bls.s loc_204e92
loc_204e70:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e80
	rts
loc_204e80:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2072d8
	move.b #$6,$24(a0)
	rts
loc_204e92:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e70

sub_204eaa:
	tst.b ($f7ca).w
	bne.s loc_204ed0
	move.w $14(a0),d0
	bpl.s loc_204eb8
	neg.w d0
loc_204eb8:
	cmpi.w #$80,d0
	bcs.s loc_204ed0
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204ed0
	btst.b #$1,($f602).w
	bne.s sub_204ed2
loc_204ed0:
	rts

sub_204ed2:
	btst.b #$2,$22(a0)
	beq.s loc_204edc
	bra.s loc_204f0c
loc_204edc:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204efc
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f0c
loc_204efc:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f0c:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f26
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f26
	move.w #$200,$14(a0)
loc_204f26:
	rts

sub_204f28:
	tst.b $2a(a0)
	beq.s loc_204f30
	rts
loc_204f30:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f42
	tst.w $14(a0)
	beq.w loc_205008
loc_204f42:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205008
	btst.b #$3,$22(a0)
	beq.s loc_204f5e
	jsr (sub_205c34).l
	beq.s loc_204f8e
loc_204f5e:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206cd4
	cmpi.w #$6,d1
	blt.w loc_205008
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f84
	move.w #$380,d2
loc_204f84:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f8e:
	jsr (sub_2006d8).l
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
	jsr (sub_202570).l
	btst.b #$2,$22(a0)
	bne.s loc_20500a
	tst.b ($ff195b).l
	beq.s loc_204fec
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204ffc
loc_204fec:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204ffc:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205008:
	rts
loc_20500a:
	bset.b #$4,$22(a0)
	rts

sub_205012:
	tst.b $3c(a0)
	beq.s loc_205044
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205028
	move.w #$fe00,d1
loc_205028:
	cmp.w $12(a0),d1
	ble.s loc_205042
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_205042
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_205042:
	rts
loc_205044:
	cmpi.w #$f040,$12(a0)
	bge.s loc_205052
	move.w #$f040,$12(a0)
loc_205052:
	rts

sub_205054:
	tst.b $2a(a0)
	bne.s loc_20508e
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20508e
	move.b $26(a0),d0
	jsr (sub_2006d8).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_20508e
	bmi.s loc_20508a
	tst.w d0
	beq.s loc_205088
	add.w d0,$14(a0)
loc_205088:
	rts
loc_20508a:
	add.w d0,$14(a0)
loc_20508e:
	rts

sub_205090:
	tst.b $2a(a0)
	bne.s loc_2050d0
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050d0
	move.b $26(a0),d0
	jsr (sub_2006d8).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050c6
	tst.w d0
	bpl.s loc_2050c0
	asr.l #$2,d0
loc_2050c0:
	add.w d0,$14(a0)
	rts
loc_2050c6:
	tst.w d0
	bmi.s loc_2050cc
	asr.l #$2,d0
loc_2050cc:
	add.w d0,$14(a0)
loc_2050d0:
	rts

sub_2050d2:
	nop
	tst.b $38(a0)
	bne.s loc_205114
	tst.w $3e(a0)
	bne.s loc_205116
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205114
	move.w $14(a0),d0
	bpl.s loc_2050f6
	neg.w d0
loc_2050f6:
	cmpi.w #$280,d0
	bcc.s loc_205114
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205114:
	rts
loc_205116:
	subq.w #$1,$3e(a0)
	rts

sub_20511c:
	btst.b #$1,$2c(a0)
	bne.s loc_20513e
	move.b $26(a0),d0
	beq.s loc_20513e
	bpl.s loc_205134
	addq.b #$2,d0
	bcc.s loc_205132
	moveq #$0,d0
loc_205132:
	bra.s loc_20513a
loc_205134:
	subq.b #$2,d0
	bcc.s loc_20513a
	moveq #$0,d0
loc_20513a:
	move.b d0,$26(a0)
loc_20513e:
	rts

sub_205140:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200970).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205224
	cmpi.b #$80,d0
	beq.w loc_205286
	cmpi.b #$c0,d0
	beq.w loc_2052e2
	bsr.w sub_206fea
	tst.w d1
	bpl.s loc_205192
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205192:
	bsr.w sub_206e4c
	tst.w d1
	bpl.s loc_2051a4
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051a4:
	bsr.w sub_206cfc
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_205222
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051c2
	cmp.b d2,d0
	blt.s loc_205222
loc_2051c2:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205344
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205200
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2051f2
	asr.w $12(a0)
	bra.s loc_205214
loc_2051f2:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_205200:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205214
	move.w #$fc0,$12(a0)
loc_205214:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205222
	neg.w $14(a0)
loc_205222:
	rts
loc_205224:
	bsr.w sub_206fea
	tst.w d1
	bpl.s loc_20523e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20523e:
	bsr.w sub_206ea4
	tst.w d1
	bpl.s loc_205258
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205256
	move.w #$0,$12(a0)
loc_205256:
	rts
loc_205258:
	tst.w $12(a0)
	bmi.s loc_205284
	bsr.w sub_206cfc
	tst.w d1
	bpl.s loc_205284
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205344
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205284:
	rts
loc_205286:
	bsr.w sub_206fea
	tst.w d1
	bpl.s loc_205298
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205298:
	bsr.w sub_206e4c
	tst.w d1
	bpl.s loc_2052aa
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052aa:
	bsr.w sub_206ea4
	tst.w d1
	bpl.s loc_2052e0
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052ca
	move.w #$0,$12(a0)
	rts
loc_2052ca:
	move.b d3,$26(a0)
	bsr.w sub_2053b6
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052e0
	neg.w $14(a0)
loc_2052e0:
	rts
loc_2052e2:
	bsr.w sub_206e4c
	tst.w d1
	bpl.s loc_2052fc
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2052fc:
	bsr.w sub_206ea4
	tst.w d1
	bpl.s loc_205316
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205314
	move.w #$0,$12(a0)
loc_205314:
	rts
loc_205316:
	tst.w $12(a0)
	bmi.s loc_205342
	bsr.w sub_206cfc
	tst.w d1
	bpl.s loc_205342
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205344
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205342:
	rts

sub_205344:
	btst.b #$4,$22(a0)
	beq.s loc_20534e
	nop
loc_20534e:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053a8
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205388
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205398
loc_205388:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205398:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202570).l
loc_2053a8:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053b6:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21462, 382

sub_205554:
	cmpi.b #$3,($ff1506).l
	beq.s loc_20557c
	cmpi.b #$5,($ff1506).l
	beq.s loc_20557c
	cmpi.b #$2,($ff1506).l
	beq.s loc_20557c
	tst.b ($ff1506).l
	bne.w loc_20563e
loc_20557c:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055ba
	tst.b ($ff1506).l
	bne.w loc_205640
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205640
	bra.s loc_2055c2
loc_2055ba:
	cmp.b ($f7af).w,d1
	beq.w loc_205640
loc_2055c2:
	cmp.b ($f7ac).w,d1
	beq.s loc_2055f2
	cmp.b ($f7ad).w,d1
	beq.s loc_2055d6
	bclr.b #$6,$1(a0)
	rts
loc_2055d6:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205658
	btst.b #$1,$22(a0)
	beq.s loc_2055f2
	bclr.b #$6,$1(a0)
	rts
loc_2055f2:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205604
	bclr.b #$6,$1(a0)
	rts
loc_205604:
	cmpi.b #$e0,d2
	bcs.s loc_205612
	bset.b #$6,$1(a0)
	rts
loc_205612:
	btst.b #$6,$1(a0)
	bne.s loc_20562e
	move.b $26(a0),d1
	beq.s loc_20563e
	cmpi.b #$80,d1
	bhi.s loc_20563e
	bset.b #$6,$1(a0)
	rts
loc_20562e:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20563e
	bclr.b #$6,$1(a0)
loc_20563e:
	rts
loc_205640:
	btst.b #$2,$22(a0)
	bne.s loc_205652
	move.w #$9c,d0
	jsr (sub_202570).l
loc_205652:
	jmp (sub_204ed2).l
loc_205658:
	tst.w $12(a0)
	bmi.s loc_20569c
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205690
	cmpi.w #$38,d1
	bcs.s loc_205688
	cmpi.w #$80,d1
	bcs.s loc_20569c
loc_205680:
	bclr.b #$6,$1(a0)
	rts
loc_205688:
	bset.b #$6,$1(a0)
	rts
loc_205690:
	cmpi.w #$38,d1
	bcs.s loc_205680
	cmpi.w #$80,d1
	bcc.s loc_205688
loc_20569c:
	rts

sub_20569e:
	lea (dat_20598e).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056c0
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056c0:
	bsr.w sub_205930
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205738
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205706
	move.b d0,$1e(a0)

sub_2056ea:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2056fe
	bpl.s loc_2056fe
	cmpi.b #$fd,d0
	bge.s loc_205708
loc_2056fe:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205706:
	rts
loc_205708:
	addq.b #$1,d0
	bne.s loc_205718
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2056fe
loc_205718:
	addq.b #$1,d0
	bne.s loc_20572c
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2056fe
loc_20572c:
	addq.b #$1,d0
	bne.s loc_205736
	move.b $2(a1,d1.w),$1c(a0)
loc_205736:
	rts
loc_205738:
	subq.b #$1,$1e(a0)
	bpl.s loc_205706
	addq.b #$1,d0
	bne.w loc_2057f2
	tst.b ($ff195b).l
	bne.w loc_2058ba
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205760
	not.b d0
loc_205760:
	btst.b #$1,$2c(a0)
	bne.s loc_20576e
	addi.b #$10,d0
	bra.s loc_205770
loc_20576e:
	addq.b #$8,d0
loc_205770:
	bpl.s loc_205774
	moveq #$3,d1
loc_205774:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205866
	move.w $14(a0),d2
	bpl.s loc_205792
	neg.w d2
loc_205792:
	btst.b #$1,$2c(a0)
	beq.s loc_2057aa
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b90).l,a1
	bra.s loc_2057d4
loc_2057aa:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b6a).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057d4
	lea (dat_205a0e).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057d4
	lea (dat_205a06).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057d4:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2057e2
	moveq #$0,d2
loc_2057e2:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2056ea
	add.b d3,$1a(a0)
	rts
loc_2057f2:
	addq.b #$1,d0
	bne.s loc_205862
	move.w $14(a0),d2
	bpl.s loc_2057fe
	neg.w d2
loc_2057fe:
	lea (dat_205aec).l,a1
	tst.b ($ff195b).l
	bne.s loc_20583c
	lea (dat_205a1e).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205830
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20583c
	lea (dat_205b98).l,a1
	bra.s loc_20583c
loc_205830:
	cmpi.w #$600,d2
	bcc.s loc_20583c
	lea (dat_205a16).l,a1
loc_20583c:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205846
	moveq #$0,d2
loc_205846:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056ea
loc_205862:
	addq.b #$1,d0
	bne.s loc_2058a6
loc_205866:
	move.w $14(a0),d2
	bmi.s loc_20586e
	neg.w d2
loc_20586e:
	addi.w #$800,d2
	bpl.s loc_205876
	moveq #$0,d2
loc_205876:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205afe).l,a1
	tst.b ($ff195b).l
	bne.s loc_205890
	lea (dat_205a26).l,a1
loc_205890:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056ea
loc_2058a6:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058ba:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058cc
	not.b d0
loc_2058cc:
	addi.b #$10,d0
	bpl.s loc_2058d4
	moveq #$0,d1
loc_2058d4:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205902
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2057f2
loc_205902:
	move.w $14(a0),d2
	bpl.s loc_20590a
	neg.w d2
loc_20590a:
	lea (dat_205ae6).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20591c
	lea (dat_205ae0).l,a1
loc_20591c:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205926
	moveq #$0,d2
loc_205926:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2056ea

sub_205930:
	tst.b ($ff195b).l
	beq.s loc_20593c
	move.b dat_20593e(pc,d0.w),d0
loc_20593c:
	rts
dat_20593e:
	.incbin 22846, 80
dat_20598e:
	.incbin 22926, 120
dat_205a06:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205a0e:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205a16:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a1e:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a26:
	.incbin 23078, 186
dat_205ae0:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205ae6:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205aec:
	.incbin 23276, 18
dat_205afe:
	.incbin 23294, 108
dat_205b6a:
	.incbin 23402, 38
dat_205b90:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205b98:
	.incbin 23448, 56

sub_205bd0:
	tst.b (a0)
	beq.w loc_205c32
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c32
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c32
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c04:
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
loc_205c1e:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c1e
	dbf d1,loc_205c04
loc_205c32:
	rts

sub_205c34:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205ca8
	move.w #$98,d0
	jsr (sub_202570).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200970).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205c96
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205c96:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205ca8:
	rts
loc_205caa:
	move.w #$e,d0

sub_205cae:
	cmpi.w #$67,d0
	bne.s loc_205cbc
	move.b #$1,($ff1958).l
loc_205cbc:
	move.w d0,($a12010).l
loc_205cc2:
	move.w ($a12020).l,d0
	beq.s loc_205cc2
	cmp.w ($a12020).l,d0
	bne.s loc_205cc2
	move.w #$0,($a12010).l
loc_205cda:
	move.w ($a12020).l,d0
	bne.s loc_205cda
	move.w ($a12020).l,d0
	bne.s loc_205cda
	rts
	dc.b $00,$00

sub_205cee:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d0a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d0a:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d4a
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d4c
loc_205d26:
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
loc_205d4a:
	rts
loc_205d4c:
	addq.b #$1,d0
	bne.s loc_205d5c
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d26
loc_205d5c:
	addq.b #$1,d0
	bne.s loc_205d70
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d26
loc_205d70:
	addq.b #$1,d0
	bne.s loc_205d7a
	move.b $2(a1,d1.w),$1c(a0)
loc_205d7a:
	addq.b #$1,d0
	bne.s loc_205d82
	addq.b #$2,$24(a0)
loc_205d82:
	addq.b #$1,d0
	bne.s loc_205d90
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d90:
	addq.b #$1,d0
	bne.s loc_205d98
	addq.b #$2,$25(a0)
loc_205d98:
	rts
	.incbin 23962, 916

sub_20612e:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_206166
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_20614a
	move.w #$86,d0
loc_20614a:
	tst.b ($ff151f).l
	beq.s loc_206156
	move.w #$87,d0
loc_206156:
	tst.b ($f7aa).w
	beq.s loc_206160
	move.w #$8c,d0
loc_206160:
	jsr (sub_20256e).l
loc_206166:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
	.incbin 24948, 1574
loc_20679a:
	bclr.b #$7,($ff156b).l
	beq.s loc_2067e8
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2067ea(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2067be:
	move.l (a1)+,(a2)+
	dbf d0,loc_2067be
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2067e8:
	rts
dat_2067ea:
	.incbin 26602, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206812(pc,d0.w),d0
	jsr dat_206812(pc,d0.w)
	jmp (sub_203a8c).l
dat_206812:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$2068a2,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_206846
	moveq #$0,d1
loc_206846:
	move.b d1,$2a(a0)
	move.b dat_20686c(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_20686e).l,a1
	jmp (sub_205cee).l
dat_20686c:
	dc.b $a0,$60
dat_20686e:
	.incbin 26734, 564

sub_206aa2:
	rts
loc_206aa4:
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
	bne.s loc_206b5e
	move.b ($ff1593).l,($ff195b).l
loc_206b5e:
	tst.b ($ff1522).l
	bpl.s loc_206b74
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b74:
	rts

sub_206b76:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206aa4
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
	bne.s loc_206c30
	move.b ($ff1591).l,($ff195b).l
loc_206c30:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c52
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c52:
	tst.b ($ff1522).l
	bpl.s loc_206c68
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c68:
	rts

sub_206c6a:
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
	bpl.s loc_206ca6
	move.b d1,d0
	bpl.s loc_206ca0
	subq.b #$1,d0
loc_206ca0:
	addi.b #$20,d0
	bra.s loc_206cb0
loc_206ca6:
	move.b d1,d0
	bpl.s loc_206cac
	addq.b #$1,d0
loc_206cac:
	addi.b #$1f,d0
loc_206cb0:
	andi.b #$c0,d0
	beq.w loc_206d80
	cmpi.b #$80,d0
	beq.w loc_206f1c
	andi.b #$38,d1
	bne.s loc_206cc8
	addq.w #$8,d2
loc_206cc8:
	cmpi.b #$40,d0
	beq.w loc_206ff2
	bra.w loc_206e54

sub_206cd4:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206f7a
	cmpi.b #$80,d0
	beq.w sub_206ea4
	cmpi.b #$c0,d0
	beq.w loc_206de4

sub_206cfc:
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
	jsr (sub_20102e).l
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
	jsr (sub_20102e).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206d60:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d6e
	move.b ($f768).w,d3
	exg d0,d1
loc_206d6e:
	btst.l #$0,d3
	beq.s loc_206d76
	move.b d2,d3
loc_206d76:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206d80:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20102e).l
	move.b #$0,d2
loc_206d9c:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206da8
	move.b d2,d3
loc_206da8:
	rts

sub_206daa:
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
	jsr (sub_20102e).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206de2
	move.b #$0,d3
loc_206de2:
	rts
loc_206de4:
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
	jsr (sub_20119e).l
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
	jsr (sub_20119e).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206d60

sub_206e4c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e54:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20119e).l
	move.b #$c0,d2
	bra.w loc_206d9c
	.incbin 28276, 16
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20119e).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206ea2
	move.b #$c0,d3
loc_206ea2:
	rts

sub_206ea4:
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
	jsr (sub_20102e).l
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
	jsr (sub_20102e).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206d60

sub_206f14:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f1c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20102e).l
	move.b #$80,d2
	bra.w loc_206d9c
	.incbin 28480, 58
loc_206f7a:
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
	jsr (sub_20119e).l
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
	jsr (sub_20119e).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206d60

sub_206fea:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206ff2:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20119e).l
	move.b #$40,d2
	bra.w loc_206d9c
	.incbin 28694, 48

sub_207046:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_20706a
	addi.w #$c,d3
	moveq #$a,d5
loc_20706a:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_207078:
	tst.b $1(a1)
	bpl.s loc_207084
	move.b $20(a1),d0
	bne.s loc_207090
loc_207084:
	lea $40(a1),a1
	dbf d6,loc_207078
	moveq #$0,d0
	rts
loc_207090:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20741e).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070b8
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070be
	bra.w loc_207084
loc_2070b8:
	cmp.w d4,d0
	bhi.w loc_207084
loc_2070be:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2070d6
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2070dc
	bra.w loc_207084
loc_2070d6:
	cmp.w d5,d0
	bhi.w loc_207084
loc_2070dc:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_207150
	cmpi.b #$c0,d1
	beq.w loc_207330
	tst.b d1
	bmi.w sub_20721a
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207114
	cmpi.w #$5a,$30(a0)
	bcc.w loc_207112
	addq.b #$2,$24(a1)
loc_207112:
	rts
loc_207114:
	tst.w $12(a0)
	bpl.s loc_20713e
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_20714e
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_20714e
	addq.b #$4,$25(a1)
	rts
loc_20713e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20714e
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_20714e:
	rts

sub_207150:
	tst.b ($ff1521).l
	bne.s loc_20716a
	tst.b ($ff151f).l
	bne.s loc_20716a
	cmpi.b #$2,$1c(a0)
	bne.w sub_20721a
loc_20716a:
	tst.b $21(a1)
	beq.s loc_207194
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_207192
	bset.b #$7,$22(a1)
loc_207192:
	rts
loc_207194:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071ac
	moveq #$6,d0
loc_2071ac:
	move.w d0,$3e(a1)
	move.w dat_20720c(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071c6
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071c6:
	bsr.w sub_20a48e
	move.w #$96,d0
	jsr (sub_202570).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_2071fc
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207204
	neg.w $12(a0)
	rts
loc_2071fc:
	addi.w #$100,$12(a0)
	rts
loc_207204:
	subi.w #$100,$12(a0)
	rts
dat_20720c:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_20721a:
	tst.b ($ff1521).l
	bne.s loc_20722a
	tst.b ($ff151f).l
	beq.s loc_20722e
loc_20722a:
	moveq #$ffffffff,d0
	rts
loc_20722e:
	nop
	tst.w $30(a0)
	bne.s loc_20722a
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_207264
	tst.w ($ff1512).l
	beq.w loc_2072ce
	jsr (sub_207b2c).l
	bne.s loc_207264
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207264:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_20727a
	move.b #$0,($ff156f).l
loc_20727a:
	move.b #$4,$24(a0)
	bsr.w sub_205344
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072aa
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072aa:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072b8
	neg.w $10(a0)
loc_2072b8:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072ce:
	tst.w ($ff1588).l
	bne.w loc_207264

sub_2072d8:
	tst.w ($ff1906).l
	bne.s loc_20732c
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205344
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202570).l
loc_20732c:
	moveq #$ffffffff,d0
	rts
loc_207330:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2073b8
	cmpi.b #$23,d1
	beq.w loc_2073b8
	cmpi.b #$33,d1
	beq.w loc_207410
	cmpi.b #$3a,d1
	beq.w loc_207410
	cmpi.b #$3b,d1
	beq.w loc_207410
	tst.b ($f7aa).w
	beq.w loc_2073b6
	cmpi.b #$1,($f7aa).w
	beq.s loc_207380
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073a2
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073b0
loc_207380:
	cmpi.b #$3c,d1
	blt.s loc_2073b6
	cmpi.b #$3f,d1
	bgt.s loc_2073b6
	bsr.w sub_207150
	tst.b $20(a1)
	bne.s loc_20739a
	addq.b #$3,$21(a1)
loc_20739a:
	clr.b $20(a1)
	bra.w loc_2073b8
loc_2073a2:
	cmpi.b #$3f,d1
	beq.s loc_2073c4
	cmpi.b #$3e,d1
	beq.s loc_2073be
	bra.s loc_2073b6
loc_2073b0:
	cmpi.b #$3d,d1
	beq.s loc_2073be
loc_2073b6:
	rts
loc_2073b8:
	addq.b #$1,$21(a1)
	rts
loc_2073be:
	bsr.w sub_20721a
	bra.s loc_2073b8
loc_2073c4:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20740e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_202570).l
	jsr (sub_20612e).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20740e
	neg.w $10(a0)
loc_20740e:
	rts
loc_207410:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20741c
	addq.b #$1,$21(a1)
loc_20741c:
	rts
dat_20741e:
	.incbin 29726, 126
loc_20749c:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074b2
	move.l #$4000,(dat_20762c).l
	bra.s loc_2074d2
loc_2074b2:
	addi.l #$2000,(dat_20762c).l
	cmpi.l #$80000,(dat_20762c).l
	bls.s loc_2074d2
	move.l #$80000,(dat_20762c).l
loc_2074d2:
	move.l (dat_20762c).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2074e4
	sub.l d0,$c(a0)
loc_2074e4:
	btst.b #$1,($f604).w
	beq.s loc_2074f0
	add.l d0,$c(a0)
loc_2074f0:
	btst.b #$2,($f604).w
	beq.s loc_2074fc
	sub.l d0,$8(a0)
loc_2074fc:
	btst.b #$3,($f604).w
	beq.s loc_207508
	add.l d0,$8(a0)
loc_207508:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e46).l
	move.w (a1),($ff194e).l
	lea (dat_207630).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20754a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207544
	move.b #$0,d1
loc_207544:
	move.b d1,($ff1904).l
loc_20754a:
	btst.b #$7,($f605).w
	beq.s loc_20756a
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207564
	add.b (a2),d1
loc_207564:
	move.b d1,($ff1904).l
loc_20756a:
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
	beq.s loc_2075f6
	bsr.w sub_207b2c
	bne.s loc_2075f6
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
loc_2075f6:
	btst.b #$4,($f605).w
	beq.s loc_207626
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207626:
	jmp (sub_203a8c).l
dat_20762c:
	dc.b $00,$00,$40,$00
dat_207630:
	.incbin 30256, 746

sub_20791a:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207928:
	clr.l (a2)+
	dbf d0,loc_207928
	rts

sub_207930:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_20793e(pc,d0.w),d0
	jmp dat_20793e(pc,d0.w)
dat_20793e:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207bde).l,a0
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
	bcc.s loc_20797c
	moveq #$0,d6
loc_20797c:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207984:
	cmp.w (a0),d6
	bls.s loc_207996
	tst.b $4(a0)
	bpl.s loc_207992
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207992:
	addq.w #$8,a0
	bra.s loc_207984
loc_207996:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2079b6
loc_2079a4:
	cmp.w (a0),d6
	bls.s loc_2079b6
	tst.b $4(a0)
	bpl.s loc_2079b2
	addq.b #$1,$1(a2)
loc_2079b2:
	addq.w #$8,a0
	bra.s loc_2079a4
loc_2079b6:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207aa0
	bge.s loc_207a46
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207a22
loc_2079f0:
	cmp.w -$8(a0),d6
	bge.s loc_207a22
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_207a06
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_207a06:
	bsr.w sub_207ac4
	bne.s loc_207a10
	subq.w #$8,a0
	bra.s loc_2079f0
loc_207a10:
	tst.b $4(a0)
	bpl.s loc_207a20
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207a20:
	addq.w #$8,a0
loc_207a22:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207a2e:
	cmp.w -$8(a0),d6
	bgt.s loc_207a40
	tst.b -$4(a0)
	bpl.s loc_207a3c
	subq.b #$1,(a2)
loc_207a3c:
	subq.w #$8,a0
	bra.s loc_207a2e
loc_207a40:
	move.l a0,($f770).w
	rts
loc_207a46:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207a5a:
	cmp.w (a0),d6
	bls.s loc_207a7c
	tst.b $4(a0)
	bpl.s loc_207a68
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207a68:
	bsr.w sub_207ac4
	beq.s loc_207a5a
	tst.b $4(a0)
	bpl.s loc_207a7c
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207a7c:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207a9c
loc_207a8a:
	cmp.w (a0),d6
	bls.s loc_207a9c
	tst.b $4(a0)
	bpl.s loc_207a98
	addq.b #$1,$1(a2)
loc_207a98:
	addq.w #$8,a0
	bra.s loc_207a8a
loc_207a9c:
	move.l a0,($f774).w
loc_207aa0:
	rts

sub_207aa2:
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

sub_207ac4:
	bsr.s sub_207aa2
	beq.s loc_207ad6
	tst.b $4(a0)
	bpl.s loc_207adc
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207adc
loc_207ad6:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207adc:
	bsr.w sub_207b2c
	bne.s loc_207b2a
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
	bpl.s loc_207b0c
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207b0c:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207b1e
	nop
	nop
	nop
	nop
loc_207b1e:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207b2a:
	rts

sub_207b2c:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207b34:
	tst.b (a1)
	beq.s loc_207b40
	lea $40(a1),a1
	dbf d0,loc_207b34
loc_207b40:
	rts

sub_207b42:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207b60
loc_207b54:
	tst.b (a1)
	beq.s loc_207b60
	lea $40(a1),a1
	dbf d0,loc_207b54
loc_207b60:
	rts
loc_207b62:
	move.w $8(a0),d0
loc_207b66:
	tst.b $1(a0)
	bmi.s loc_207bd0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207bd0
loc_207b84:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207bc6
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207bbe
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207bb6
	moveq #$0,d1
	bra.s loc_207bbe
loc_207bb6:
	cmpi.w #$3,d1
	bcs.s loc_207bbe
	moveq #$2,d1
loc_207bbe:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207bc6:
	jsr (sub_203b38).l
	moveq #$1,d0
	rts
loc_207bd0:
	btst.b #$7,($ff152e).l
	bne.s loc_207b84
	moveq #$0,d0
	rts
dat_207bde:
	.incbin 31710, 3434

sub_208948:
	btst.b #$3,$22(a0)
	beq.s loc_2089b8
	btst.b #$3,$22(a1)
	beq.s loc_2089b8
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2089b8
	tst.b $2a(a1)
	beq.s loc_20897a
	move.w #$ab,d0
	jsr (sub_202570).l
loc_20897a:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_2089a6
	cmpi.b #$17,$1c(a1)
	beq.s loc_2089a6
	bclr.b #$0,$2c(a1)
loc_2089a6:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2089b8
	bclr.b #$1,$22(a1)
loc_2089b8:
	rts

sub_2089ba:
	cmpi.b #$4,$24(a1)
	bne.s loc_2089cc
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2089cc:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208a2c
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2089ee
	bclr.b #$3,$22(a0)
	bra.w sub_208948
loc_2089ee:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208a2c
	tst.b ($ff195b).l
	beq.s loc_208a16
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208a26
loc_208a16:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208a26:
	move.b #$0,$1c(a1)
loc_208a2c:
	bset.b #$3,$22(a1)
	beq.s loc_208a4e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208a86
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208a4e:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208a7a
	cmpi.b #$2,$24(a0)
	beq.s loc_208a80
loc_208a7a:
	move.w $10(a1),$14(a1)
loc_208a80:
	bclr.b #$1,$22(a1)
loc_208a86:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_208a90:
	move.b #$1,$25(a0)

sub_208a96:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208d4a
	btst.b #$6,$2c(a1)
	bne.w loc_208d4a
	cmpi.b #$6,$24(a1)
	bcc.w loc_208d4a
	tst.b $0(a1)
	beq.w loc_208d4a
	tst.b $1(a0)
	bpl.w loc_208d4a
	tst.b ($ff1906).l
	bne.w loc_208d4a
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208d4a
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208d4a
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208b04
	btst.b #$3,$22(a0)
	bne.s loc_208b16
	bra.w loc_208d4a
loc_208b04:
	cmpi.b #$1,$25(a0)
	bne.s loc_208b16
	tst.w $12(a1)
	beq.s loc_208b16
	bmi.w loc_208d4a
loc_208b16:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208d4a
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208d4a
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208b4c
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208b4c:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208b5a
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208b5a:
	cmp.w d4,d5
	bcs.w loc_208bee
	cmpi.b #$1,$25(a0)
	beq.w loc_208d4a
	cmpi.b #$a,$0(a0)
	bne.s loc_208b7c
	btst.b #$1,$22(a1)
	bne.w loc_208d4a
loc_208b7c:
	cmpi.b #$4,d5
	bls.w loc_208d4a
	bsr.w sub_208d9a
	move.l d0,-(a7)
	bsr.w sub_208948
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208ba6
	tst.w $10(a1)
	beq.s loc_208bd6
	bpl.s loc_208bae
	bra.s loc_208bd6
loc_208ba6:
	tst.w $10(a1)
	beq.s loc_208bd6
	bpl.s loc_208bd6
loc_208bae:
	bsr.w sub_208d5a
	btst.b #$1,$22(a1)
	bne.s loc_208bcc
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208bcc:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_208bd6:
	bsr.w sub_208e10
	bsr.w sub_208d5a
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208bee:
	cmpi.b #$19,$0(a0)
	bne.s loc_208c00
	btst.b #$2,$22(a1)
	bne.w loc_208d4a
loc_208c00:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208c16
	bmi.w loc_208ce6
loc_208c16:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208c28
	tst.w $12(a1)
	beq.s loc_208c28
	bmi.w loc_208d4a
loc_208c28:
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
	beq.s loc_208c74
	bpl.s loc_208c54
	neg.b d0
loc_208c54:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c6a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208c74
	tst.w $10(a0)
	bpl.s loc_208c70
	neg.w d1
loc_208c70:
	add.w d1,$8(a1)
loc_208c74:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208cde
	tst.w $12(a0)
	bmi.s loc_208cb2
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206cfc).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208cb2
	add.w d1,$c(a1)
	bra.w loc_208d4a
loc_208cb2:
	tst.w $12(a0)
	bpl.s loc_208cde
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f14).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208cde
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d8).l
	movem.l (a7)+,a0-a1
	bra.s loc_208d4a
loc_208cde:
	bsr.w sub_2089ba
	moveq #$1,d0
	rts
loc_208ce6:
	cmpi.b #$1,$25(a0)
	beq.s loc_208d4a
	cmpi.b #$9,$0(a0)
	beq.s loc_208d4a
	cmpi.b #$a,$0(a0)
	bne.s loc_208d10
	cmpi.b #$2,$25(a0)
	beq.s loc_208d30
	btst.b #$1,$1(a0)
	bne.s loc_208d30
	bra.s loc_208d4a
loc_208d10:
	btst.b #$1,$22(a1)
	bne.s loc_208d30
	tst.w $12(a0)
	beq.s loc_208d30
	bmi.s loc_208d30
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d8).l
	movem.l (a7)+,a0-a1
loc_208d30:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208e10
	bsr.w sub_208948
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208d4a:
	bsr.w sub_208e10
	bsr.w sub_208948
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208d5a:
	tst.w $10(a0)
	beq.s loc_208d98
	cmpi.b #$a,$0(a0)
	beq.s loc_208d98
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208d74
	neg.b d0
loc_208d74:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c6a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208d98
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d8).l
	movem.l (a7)+,a0-a1
loc_208d98:
	rts

sub_208d9a:
	cmpi.b #$a,$0(a0)
	bne.s loc_208daa
	move.b #$0,$20(a1)
	rts
loc_208daa:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208dfe
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208e0e
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208dcc
	tst.w $10(a2)
	beq.s loc_208e0e
loc_208dcc:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208dde
	cmp.w $8(a2),d1
	bcs.s loc_208e0e
	bra.s loc_208de4
loc_208dde:
	cmp.w $8(a2),d1
	bcc.s loc_208e0e
loc_208de4:
	cmpi.b #$15,$0(a0)
	beq.s loc_208e0e
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072d8).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208dfe:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208e0e:
	rts

sub_208e10:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208e2a
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208e2a
	move.b #$0,$20(a1)
loc_208e2a:
	rts
	.incbin 36396, 374
loc_208fa2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208fb0(pc,d0.w),d0
	jmp dat_208fb0(pc,d0.w)
dat_208fb0:
	.incbin 36784, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208fa2
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_209006
	tst.b $1(a0)
	bpl.s loc_20900e
loc_209006:
	move.w dat_209060(pc,d0.w),d1
	jsr dat_209060(pc,d1.w)
loc_20900e:
	bsr.w sub_203a8c
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209040
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209040:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b38
	rts
dat_209060:
	.incbin 36960, 26
	addq.b #$2,$24(a0)
	move.l #$2093e2,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_2090d0
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2093e8,$4(a0)
	bra.s loc_209112
loc_2090d0:
	btst.l #$3,d0
	beq.s loc_2090fe
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209432,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c1c0).l
	move.l (a7)+,d0
	bra.s loc_209112
loc_2090fe:
	btst.b #$1,$1(a0)
	beq.s loc_209112
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209112:
	btst.l #$1,d0
	beq.s loc_20911e
	bset.b #$5,$2(a0)
loc_20911e:
	andi.w #$2,d0
	move.w dat_20912a(pc,d0.w),$30(a0)
	rts
dat_20912a:
	.incbin 37162, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2094ce(pc,d0.w),d1
	jmp dat_2094ce(pc,d1.w)
dat_2094ce:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2094d8:
	.incbin 38104, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209530
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209528
	moveq #$0,d1
	bra.s loc_209530
loc_209528:
	cmpi.w #$3,d1
	bcs.s loc_209530
	moveq #$2,d1
loc_209530:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_20954c
	moveq #$6,d1
loc_20954c:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2094d8).l,a1
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
	beq.s loc_20959c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209594
	moveq #$0,d0
	bra.s loc_20959c
loc_209594:
	cmpi.w #$3,d0
	bcs.s loc_20959c
	moveq #$2,d0
loc_20959c:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20966a
	dbf d0,loc_20959c
	bclr.b #$7,(a2)
	bra.s loc_2095f2
loc_2095ae:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2095da
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2095d2
	moveq #$0,d0
	bra.s loc_2095da
loc_2095d2:
	cmpi.w #$3,d0
	bcs.s loc_2095da
	moveq #$2,d0
loc_2095da:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20966a
	dbf d0,loc_2095da
	bclr.b #$7,(a2)
	bsr.w sub_207b42
	bne.w loc_209676
loc_2095f2:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20993c,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209648
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209648
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209648:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20966a:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2095ae
loc_209676:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20969c
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209694
	moveq #$0,d0
	bra.s loc_20969c
loc_209694:
	cmpi.w #$3,d0
	bcs.s loc_20969c
	moveq #$2,d0
loc_20969c:
	lea $1(a2),a3
loc_2096a0:
	btst.b #$0,-(a3)
	bne.w sub_203b38
	dbf d0,loc_2096a0
	tst.b $1(a0)
	bmi.s loc_2096d0
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20974a
loc_2096d0:
	tst.w ($ff190e).l
	bne.s loc_2096e0
	move.b ($ff1913).l,$1a(a0)
loc_2096e0:
	bra.w sub_203a8c
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20974e
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209730
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209728
	moveq #$0,d1
	bra.s loc_209730
loc_209728:
	cmpi.w #$3,d1
	bcs.s loc_209730
	moveq #$2,d1
loc_209730:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209934).l,a1
	bsr.w sub_205cee
	bra.w sub_203a8c
loc_20974a:
	bra.w sub_203b38

sub_20974e:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20979e
	bset.b #$1,($ff150d).l
	beq.s loc_209788
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20979e
	bset.b #$2,($ff150d).l
	bne.s loc_20979e
loc_209788:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cae).l
loc_20979e:
	jmp (sub_202570).l
	.incbin 38820, 400
dat_209934:
	.incbin 39220, 402
loc_209ac6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209af4(pc,d0.w),d0
	jsr dat_209af4(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209af2
	cmpi.w #$5a,($f786).w
	bcs.s loc_209aec
	btst.b #$0,($ff1505).l
	bne.s loc_209af2
loc_209aec:
	jmp (sub_203a8c).l
loc_209af2:
	rts
dat_209af4:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a0ce,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209b28
	move.b #$13,$1a(a0)
loc_209b28:
	rts
loc_209b2a:
	tst.b ($ff0f01).l
	beq.s loc_209b38
	jmp (sub_203b38).l
loc_209b38:
	cmpi.b #$a,$28(a0)
	beq.w loc_209ac6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209b5c(pc,d0.w),d0
	jsr dat_209b5c(pc,d0.w)
	jsr (sub_203a8c).l
	jmp (loc_207b62).l
dat_209b5c:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a0ce,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209baa
	tst.b $29(a0)
	bne.s loc_209baa
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209baa:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209c76
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_209bd2
	addq.b #$2,$1a(a0)
loc_209bd2:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209be6
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_209be6:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209c4c
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209c18
	tst.b $29(a0)
	beq.s loc_209c10
	tst.b ($ff1956).l
	beq.s loc_209c4c
	bra.s loc_209c18
loc_209c10:
	tst.b ($ff1956).l
	bne.s loc_209c4c
loc_209c18:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209c76
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209c46
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209c46:
	jsr (sub_205cae).l
loc_209c4c:
	rts
	.incbin 40014, 40

sub_209c76:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209cae
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209ca6
	moveq #$0,d1
	bra.s loc_209cae
loc_209ca6:
	cmpi.w #$3,d1
	bcs.s loc_209cae
	moveq #$2,d1
loc_209cae:
	add.w d1,d0
	rts

sub_209cb2:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209cd4
	tst.b ($ff1956).l
	beq.s loc_209ccc
	tst.b $29(a0)
	bne.s loc_209cd4
	rts
loc_209ccc:
	tst.b $29(a0)
	beq.s loc_209cd4
	rts
loc_209cd4:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208a96).l
	tst.b $28(a0)
	bne.s loc_209cf6
	tst.b ($ff0f01).l
	beq.s loc_209cf6
	jmp (loc_207b62).l
loc_209cf6:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209b2a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d0e(pc,d0.w),d1
	jmp dat_209d0e(pc,d1.w)
dat_209d0e:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a0ce,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209d58
	tst.b $29(a0)
	bne.s loc_209d58
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209d58:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209c76
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209d84
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209d84:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209dde
	move.b $25(a0),d0
	beq.s loc_209dbe
	bsr.w sub_2039d4
	jsr (sub_206daa).l
	tst.w d1
	bpl.w loc_209dcc
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209dcc
loc_209dbe:
	tst.b $1(a0)
	bpl.s loc_209dcc
	lea ($d000).w,a1
	bsr.w sub_209cb2
loc_209dcc:
	tst.w ($ff190e).l
	bne.s loc_209dde
	lea (dat_20a046).l,a1
	bsr.w sub_205cee
loc_209dde:
	bsr.w sub_203a8c
	jmp (loc_207b62).l
	.incbin 40424, 606
dat_20a046:
	.incbin 41030, 586
loc_20a290:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a2a4(pc,d0.w),d0
	jsr dat_20a2a4(pc,d0.w)
	jmp (sub_203a8c).l
dat_20a2a4:
	.incbin 41636, 146
	tst.b $28(a0)
	bmi.w loc_20a290
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a34c(pc,d0.w),d0
	jmp dat_20a34c(pc,d0.w)
dat_20a34c:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a3e6,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a37c
	move.b #$3,$1a(a0)
	bra.s loc_20a39c
loc_20a37c:
	tst.w ($ff1588).l
	beq.s loc_20a38a
	move.b #$2,$1a(a0)
loc_20a38a:
	tst.b $28(a0)
	beq.s loc_20a39c
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a39c:
	tst.b $28(a0)
	bne.s loc_20a3e0
	tst.b $29(a0)
	beq.s loc_20a3cc
	tst.w ($ff1512).l
	beq.s loc_20a3b8
	bclr.b #$5,$2(a0)
	bra.s loc_20a3e0
loc_20a3b8:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a3e0
	eori.b #$20,$2(a0)
	bra.s loc_20a3e0
loc_20a3cc:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a3e0
	move.b #$2,$1a(a0)
loc_20a3e0:
	jmp (sub_203a8c).l
	.incbin 41958, 168

sub_20a48e:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a4aa
	move.l d1,(a3)
loc_20a4aa:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a4d4
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cae).l
loc_20a4d4:
	rts
loc_20a4d6:
	tst.w ($ff1588).l
	beq.s loc_20a52c
	bsr.w sub_20a728
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
	lea (dat_20a888).l,a2
	moveq #$2,d6
	bsr.w sub_20a8e0
	bra.w loc_20a586
loc_20a52c:
	tst.b ($ff1511).l
	beq.s loc_20a550
	bpl.s loc_20a53a
	bsr.w sub_20a6d2
loc_20a53a:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a7c2
loc_20a550:
	tst.b ($ff150f).l
	beq.s loc_20a586
	bpl.s loc_20a55e
	bsr.w sub_20a6be
loc_20a55e:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a582
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a582:
	bsr.w sub_20a7b8
loc_20a586:
	tst.w ($ff1588).l
	bne.w loc_20a632
	tst.b ($ff1510).l
	beq.w loc_20a632
	tst.w ($f63a).w
	bne.w loc_20a632
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a690
	tst.b ($f7cc).w
	bne.s loc_20a5dc
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a5dc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a5dc
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a5dc
	move.b #$9,(a1)
loc_20a5dc:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a8ce
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a8d8
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a62e
	move.w #$63,d1
loc_20a62e:
	bsr.w sub_20a8d8
loc_20a632:
	tst.b ($ff150e).l
	beq.s loc_20a644
	clr.b ($ff150e).l
	bsr.w sub_20a8ae
loc_20a644:
	tst.b ($f7d6).w
	beq.s loc_20a68e
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a664
	move.l #$6d400001,d0
loc_20a664:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a746
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a684
	move.l #$6e800001,d0
loc_20a684:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a746
loc_20a68e:
	rts
loc_20a690:
	btst.b #$7,($ff152e).l
	bne.s loc_20a6bc
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2072d8
	move.b #$1,($ff150c).l
loc_20a6bc:
	rts

sub_20a6be:
	move.l #$73600002,($c00004).l
	lea dat_20a724(pc),a2
	move.w #$2,d2
	bra.s loc_20a6ee

sub_20a6d2:
	lea ($c00000).l,a6
	bsr.w sub_20a8ae
	move.l #$70600002,($c00004).l
	lea dat_20a71c(pc),a2
	move.w #$6,d2
loc_20a6ee:
	lea (dat_238442).l,a1
loc_20a6f4:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a710
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a704:
	move.l (a3)+,(a6)
	dbf d1,loc_20a704
loc_20a70a:
	dbf d2,loc_20a6f4
	rts
loc_20a710:
	move.l #$0,(a6)
	dbf d1,loc_20a710
	bra.s loc_20a70a
dat_20a71c:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a724:
	dc.b $ff,$ff,$00,$00

sub_20a728:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a8a4
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a8a4

sub_20a746:
	lea (dat_20a880).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a756:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a75a:
	sub.l d3,d1
	bcs.s loc_20a762
	addq.w #$1,d2
	bra.s loc_20a75a
loc_20a762:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a76c
	move.w #$1,d4
loc_20a76c:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a778
	tst.w d6
	bne.s loc_20a7aa
loc_20a778:
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
loc_20a79e:
	addi.l #$400000,d0
	dbf d6,loc_20a756
	rts
loc_20a7aa:
	moveq #$f,d5
loc_20a7ac:
	move.l #$0,(a6)
	dbf d5,loc_20a7ac
	bra.s loc_20a79e

sub_20a7b8:
	lea (dat_20a888).l,a2
	moveq #$2,d6
	bra.s loc_20a7ca

sub_20a7c2:
	lea (dat_20a87c).l,a2
	moveq #$5,d6
loc_20a7ca:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a7d2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a7d6:
	sub.l d3,d1
	bcs.s loc_20a7de
	addq.w #$1,d2
	bra.s loc_20a7d6
loc_20a7de:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a7e8
	move.w #$1,d4
loc_20a7e8:
	tst.w d4
	beq.s loc_20a816
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
loc_20a816:
	addi.l #$400000,d0
	dbf d6,loc_20a7d2
	rts
	.incbin 43042, 90
dat_20a87c:
	dc.b $00,$01,$86,$a0
dat_20a880:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a888:
	dc.b $00,$00,$00,$64
dat_20a88c:
	dc.b $00,$00,$00,$0a
dat_20a890:
	dc.b $00,$00,$00,$01
dat_20a894:
	.incbin 43156, 16

sub_20a8a4:
	moveq #$3,d6
	lea (dat_20a894).l,a2
	bra.s sub_20a8e0

sub_20a8ae:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a8c4
	moveq #$9,d1
loc_20a8c4:
	lea (dat_20a890).l,a2
	moveq #$0,d6
	bra.s sub_20a8e0

sub_20a8ce:
	lea (dat_20a890).l,a2
	moveq #$0,d6
	bra.s sub_20a8e0

sub_20a8d8:
	lea (dat_20a88c).l,a2
	moveq #$1,d6

sub_20a8e0:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a8e8:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a8ec:
	sub.l d3,d1
	bcs.s loc_20a8f4
	addq.w #$1,d2
	bra.s loc_20a8ec
loc_20a8f4:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a8fe
	move.w #$1,d4
loc_20a8fe:
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
	dbf d6,loc_20a8e8
	rts
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a946(pc,d0.w),d1
	jmp dat_20a946(pc,d1.w)
dat_20a946:
	dc.b $00,$0c,$00,$6a,$00,$84,$01,$3a
	dc.b $01,$58,$01,$5c
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	move.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20a996
	addq.b #$8,$24(a0)
	andi.w #$7f,d0
	move.b d0,$32(a0)
	move.b d0,$33(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20aaa2
loc_20a996:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	jsr (sub_20235e).l
	move.b d0,$26(a0)
	lea (dat_20ac3a).l,a1
	jsr (sub_205cee).l
	cmpi.b #$6,$1a(a0)
	bne.s loc_20a9ca
	move.b #$1,$2e(a0)
loc_20a9ca:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a9e2
loc_20a9d4:
	move.b #$6,$24(a0)
	addq.b #$3,$1c(a0)
	bra.w loc_20aa80
loc_20a9e2:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23f760).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20aa6a
	bsr.w sub_20ac00
	beq.s loc_20aa6a
	bsr.w sub_20612e
	move.w #$ad,d0
	jsr (sub_202570).l
	clr.w $10(a6)
	clr.w $12(a6)
	clr.w $14(a6)
	move.b #$15,$1c(a6)
	move.w #$23,$3e(a6)
	move.b #$0,$3c(a6)
	bclr.b #$5,$22(a6)
	bclr.b #$4,$22(a6)
	btst.b #$2,$22(a6)
	beq.w loc_20a9d4
	bclr.b #$2,$22(a6)
	move.b #$13,$16(a6)
	move.b #$9,$17(a6)
	subq.w #$5,$c(a6)
	bra.w loc_20a9d4
loc_20aa6a:
	bsr.w sub_203a36
	tst.b $1(a0)
	bpl.s loc_20aa7a
	jmp (sub_203a8c).l
loc_20aa7a:
	jmp (sub_203b38).l
loc_20aa80:
	lea (dat_20ac3a).l,a1
	jsr (sub_205cee).l
	tst.b $1(a0)
	bpl.s loc_20aa98
	jmp (sub_203a8c).l
loc_20aa98:
	jmp (sub_203b38).l
	dc.b $60,$00,$90,$98
loc_20aaa2:
	tst.w $36(a0)
	bne.s loc_20ab04
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcc.w loc_20abb6
	tst.b $1(a0)
	bpl.w loc_20abb6
	subq.w #$1,$38(a0)
	bpl.w loc_20abaa
	move.w #$1,$36(a0)
loc_20aaca:
	jsr (sub_20235e).l
	move.w d0,d1
	andi.w #$7,d0
	cmpi.w #$6,d0
	bcc.s loc_20aaca
	move.b d0,$34(a0)
	andi.w #$c,d1
	lea (dat_20abee).l,a1
	adda.w d1,a1
	move.l a1,$3c(a0)
	subq.b #$1,$32(a0)
	bpl.s loc_20ab02
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20ab02:
	bra.s loc_20ab0c
loc_20ab04:
	subq.w #$1,$38(a0)
	bpl.w loc_20abaa
loc_20ab0c:
	jsr (sub_20235e).l
	andi.w #$1f,d0
	move.w d0,$38(a0)
	tst.b $1(a0)
	bpl.s loc_20ab8e
	bsr.w sub_207b2c
	bne.s loc_20ab8e
	move.b #$20,$0(a1)
	move.w $8(a0),$8(a1)
	jsr (sub_20235e).l
	andi.w #$f,d0
	subq.w #$8,d0
	add.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$0,d0
	move.b $34(a0),d0
	movea.l $3c(a0),a2
	move.b $0(a2,d0.w),$28(a1)
	btst.b #$7,$36(a0)
	beq.s loc_20ab8e
	jsr (sub_20235e).l
	andi.w #$3,d0
	bne.s loc_20ab7a
	bset.b #$6,$36(a0)
	bne.s loc_20ab8e
	move.b #$2,$28(a1)
loc_20ab7a:
	tst.b $34(a0)
	bne.s loc_20ab8e
	bset.b #$6,$36(a0)
	bne.s loc_20ab8e
	move.b #$2,$28(a1)
loc_20ab8e:
	subq.b #$1,$34(a0)
	bpl.s loc_20abaa
	jsr (sub_20235e).l
	andi.w #$7f,d0
	addi.w #$80,d0
	add.w d0,$38(a0)
	clr.w $36(a0)
loc_20abaa:
	lea (dat_20ac3a).l,a1
	jsr (sub_205cee).l
loc_20abb6:
	tst.b $1(a0)
	bmi.s loc_20abda
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b38
loc_20abda:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.w sub_203a8c
	bclr.b #$7,$1(a0)
	rts
dat_20abee:
	.incbin 44014, 18

sub_20ac00:
	tst.b $2c(a6)
	bmi.s loc_20ac36
	move.w $8(a6),d0
	move.w $8(a0),d1
	subi.w #$10,d1
	cmp.w d0,d1
	bcc.s loc_20ac36
	addi.w #$20,d1
	cmp.w d0,d1
	bcs.s loc_20ac36
	move.w $c(a6),d0
	move.w $c(a0),d1
	cmp.w d0,d1
	bcc.s loc_20ac36
	addi.w #$10,d1
	cmp.w d0,d1
	bcs.s loc_20ac36
	moveq #$1,d0
	rts
loc_20ac36:
	moveq #$0,d0
	rts
dat_20ac3a:
	.incbin 44090, 2958
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b7d6(pc,d0.w),d0
	jmp dat_20b7d6(pc,d0.w)
dat_20b7d6:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20bed4,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20be94).l,a2
loc_20b824:
	jsr (sub_207b2c).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20bed4,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b876
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b876:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b824
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b89e
	bge.s loc_20b894
	neg.w d0
loc_20b894:
	add.w d0,$a(a0)
	jmp (sub_203a8c).l
loc_20b89e:
	addq.b #$4,$24(a0)
	jmp (sub_203a8c).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b8c2
	bge.s loc_20b8b8
	neg.w d0
loc_20b8b8:
	add.w d0,$8(a0)
	jmp (sub_203a8c).l
loc_20b8c2:
	addq.b #$4,$24(a0)
	jmp (sub_203a8c).l
	tst.b $1e(a0)
	beq.s loc_20b8dc
	subq.b #$1,$1e(a0)
	jmp (sub_203a8c).l
loc_20b8dc:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b8f6
	bge.s loc_20b8ec
	neg.w d0
loc_20b8ec:
	add.w d0,$a(a0)
	jmp (sub_203a8c).l
loc_20b8f6:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20273a).l
	tst.b $1e(a0)
	beq.s loc_20b918
	subq.b #$1,$1e(a0)
	jmp (sub_203a8c).l
loc_20b918:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b932
	bge.s loc_20b928
	neg.w d0
loc_20b928:
	add.w d0,$8(a0)
	jmp (sub_203a8c).l
loc_20b932:
	jmp (sub_203b38).l
	tst.l ($f680).w
	bne.s loc_20b94c
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b38).l
loc_20b94c:
	rts
	.incbin 47438, 1350
dat_20be94:
	.incbin 48788, 320
dat_20bfd4:
	.incbin 49108, 380
loc_20c150:
	lea dat_20c1a2(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c15c:
	cmp.w (a1)+,d0
	bcs.s loc_20c164
	addq.b #$2,d1
	bra.s loc_20c15c
loc_20c164:
	move.b d1,($ff1574).l
	move.w dat_20c1b6(pc,d1.w),d0
	jmp (sub_20273a).l

sub_20c174:
	lea dat_20c1a2(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c180:
	cmp.w (a1)+,d0
	bcs.s loc_20c188
	addq.b #$2,d1
	bra.s loc_20c180
loc_20c188:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c192
	rts
loc_20c192:
	move.b d1,($ff1574).l
	move.w dat_20c1ac(pc,d1.w),d0
	jmp (loc_20276c).l
dat_20c1a2:
	dc.b $0a,$80,$0e,$80,$10,$00,$1f,$80
	dc.b $ff,$ff
dat_20c1ac:
	dc.b $00,$06,$00,$07,$00,$06,$00,$08
	dc.b $00,$06
dat_20c1b6:
	dc.b $00,$02,$00,$04,$00,$02,$00,$05
	dc.b $00,$02

sub_20c1c0:
	rts
	.incbin 49602, 450

sub_20c384:
	movem.l d2-d3,-(a7)
	lea ($d000).w,a1
	jsr (sub_208a96).l
	movem.l (a7)+,d2-d3
	rts
	.incbin 50072, 196
loc_20c45c:
	tst.w $12(a0)
	bpl.s loc_20c466
	bsr.w sub_20c384
loc_20c466:
	move.l $c(a0),-(a7)
	moveq #$0,d0
	move.b $3a(a0),d0
	jsr (sub_2006d8).l
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
	bmi.s loc_20c4a0
	bsr.w sub_20c384
loc_20c4a0:
	rts
	.incbin 50338, 1550
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$20,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20cb10
	jsr (sub_207b2c).l
	bne.s loc_20cb10
	move.b #$23,$0(a1)
	move.b #$1,$3c(a1)
	move.b #$9,$28(a1)
	move.w $8(a0),$8(a1)
	move.w #$80,d1
	move.b $3a(a0),d0
	tst.b $3d(a0)
	bpl.s loc_20cb04
	move.w #$a0,d1
	subi.b #$80,d0
loc_20cb04:
	move.b d0,$3a(a1)
	add.w $c(a0),d1
	move.w d1,$c(a1)
loc_20cb10:
	rts
	.incbin 51986, 142
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20cc04
	move.w $8(a0),$36(a0)
	moveq #$1,d1
	moveq #$5,d2
loc_20cbc2:
	jsr (sub_207b2c).l
	bne.s loc_20cbfe
	move.b #$23,$0(a1)
	move.b #$a,$28(a1)
	move.w $c(a0),$c(a1)
	move.w $36(a0),$36(a1)
	move.b d1,$3c(a1)
	move.b d1,d0
	add.b d0,d0
	lea dat_20cc06(pc,d0.w),a2
	move.b (a2)+,$3a(a1)
	move.b (a2)+,d0
	ext.w d0
	add.w $8(a0),d0
	move.w d0,$8(a1)
loc_20cbfe:
	addq.b #$1,d1
	dbf d2,loc_20cbc2
loc_20cc04:
	bra.s loc_20cc14
dat_20cc06:
	dc.b $00,$00,$e0,$e0,$c0,$c0,$a0,$a0
	dc.b $e0,$20,$c0,$40,$a0,$60
loc_20cc14:
	move.w #$30,d2
	moveq #$5,d2
	moveq #$4,d3
	bra.w loc_20c45c
	.incbin 52256, 386
loc_20cda2:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20cdc0
	rts
loc_20cdc0:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cde4
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cde4:
	jmp (sub_203b38).l
	.incbin 52714, 898
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d184(pc,d0.w),d0
	jsr dat_20d184(pc,d0.w)
	jsr (sub_203a8c).l
	bra.w loc_20cda2
dat_20d184:
	.incbin 53636, 238
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20d370,$4(a0)
	move.w $8(a0),$36(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20d2e0
	moveq #$1,d1
	moveq #$3,d2
loc_20d2ac:
	jsr (sub_207b2c).l
	bne.s loc_20d2da
	move.b #$24,$0(a1)
	move.b #$5,$28(a1)
	move.b d1,$3c(a1)
	move.w $8(a0),$8(a1)
	moveq #$0,d0
	move.b d1,d0
	mulu.w #$40,d0
	add.w $c(a0),d0
	move.w d0,$c(a1)
loc_20d2da:
	addq.b #$1,d1
	dbf d2,loc_20d2ac
loc_20d2e0:
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	lea dat_20d2f8(pc,d0.w),a1
	move.b (a1)+,d0
	add.w d0,$8(a0)
	move.b (a1)+,$3b(a0)
	rts
dat_20d2f8:
	.incbin 54008, 1774
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$23b0,$2(a0)
	move.b #$14,$17(a0)
	move.b #$14,$19(a0)
	move.b #$c,$16(a0)
	move.b #$31,$20(a0)
	move.w #$78,$3c(a0)
	move.w $8(a0),$3e(a0)
	lea dat_20dc96(pc),a1
	lea dat_20dc48(pc),a2
	move.l #$fffffa00,d0
	move.l #$100,d1
	tst.b $28(a0)
	beq.s loc_20da4e
	lea dat_20dc54(pc),a1
	lea dat_20dc42(pc),a2
	move.l #$fffffe00,d0
	move.l #$c0,d1
loc_20da4e:
	move.l a1,$4(a0)
	move.l a2,$38(a0)
	move.l d0,$30(a0)
	move.l d1,$34(a0)
	move.l $2c(a0),d6
	add.l $30(a0),d6
	move.l #$fffe8000,d5
	tst.b $28(a0)
	beq.s loc_20da78
	move.l #$ffff4000,d5
loc_20da78:
	cmp.l d5,d6
	bgt.s loc_20da82
	move.l d5,d6
	bra.w loc_20da8a
loc_20da82:
	neg.l d5
	cmp.l d5,d6
	blt.s loc_20da92
	move.l d5,d6
loc_20da8a:
	addq.b #$2,$24(a0)
	neg.l $30(a0)
loc_20da92:
	move.l d6,$2c(a0)
	tst.b $28(a0)
	bne.s loc_20daa0
	bsr.w sub_20db46
loc_20daa0:
	movea.l $38(a0),a1
	jsr (sub_205cee).l
	bra.w loc_20db32
	.incbin 55982, 132
loc_20db32:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w ($f646).w,$c(a0)
	subq.w #$8,$c(a0)
	rts

sub_20db46:
	subq.w #$1,$3c(a0)
	bpl.w loc_20dbea
	move.w #$78,$3c(a0)
	lea ($d000).w,a6
	bsr.w sub_20dbec
	bcc.w loc_20dbea
	jsr (sub_207b2c).l
	bne.w loc_20dbea
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.w a0,$2a(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $2(a0),$2(a1)
	move.b #$4,$17(a1)
	move.b #$4,$19(a1)
	move.b #$4,$16(a1)
	move.b #$b2,$20(a1)
	move.l $4(a0),$4(a1)
	move.l $38(a0),$38(a1)
	move.b #$1,$1c(a1)
	move.l #$fffe0000,d0
	btst.b #$0,$1(a1)
	beq.s loc_20dbd6
	neg.l d0
loc_20dbd6:
	move.l d0,$2c(a1)
	tst.b $1(a0)
	bpl.s loc_20dbea
	move.w #$a0,d0
	jsr (sub_202570).l
loc_20dbea:
	rts

sub_20dbec:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dc22
	move.w $8(a6),d0
	sub.w $8(a0),d0
	smi d1
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20dc22
	btst.b #$0,$1(a0)
	seq d0
	eor.b d1,d0
	bne.s loc_20dc22
	ori.b #$1,ccr
loc_20dc22:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	movea.l $38(a0),a1
	jsr (sub_205cee).l
	jsr (sub_203a8c).l
	jmp (loc_207b62).l
dat_20dc42:
	dc.b $00,$02,$14,$00,$01,$ff
dat_20dc48:
	dc.b $00,$04,$00,$08,$0a,$00,$01,$ff
	dc.b $05,$02,$03,$ff
dat_20dc54:
	.incbin 56404, 66
dat_20dc96:
	.incbin 56470, 1876
loc_20e3ea:
	lea (dat_20e5c4).l,a1
	jsr (sub_205cee).l
	jsr (sub_203a8c).l
	move.w $3e(a0),d0
	jmp (loc_207b66).l
	.incbin 58374, 236
	addq.b #$2,$24(a0)
	move.w #$1f,$32(a0)
	bra.w loc_20e3ea
	.incbin 58624, 196
dat_20e5c4:
	.incbin 58820, 48
	jsr (sub_20fbe6).l
	tst.b $24(a0)
	bmi.w loc_20e6c8
	bne.w loc_20e758
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20e832(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e64e
	addi.w #$2000,$2(a0)
loc_20e64e:
	lea dat_20e7e2(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20e65e
	lea dat_20e80a(pc),a1
loc_20e65e:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20e6ac
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20e6aa
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20e6aa:
	rts
loc_20e6ac:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20e6c8:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20e6da
	tst.b $3f(a1)
	beq.s loc_20e6e0
loc_20e6da:
	jmp (sub_203b38).l
loc_20e6e0:
	move.b $32(a0),d0
	jsr (sub_2006d8).l
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
	bne.s loc_20e748
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20e742
	move.b #$5,$18(a0)
	bra.s loc_20e748
loc_20e742:
	move.b #$3,$18(a0)
loc_20e748:
	lea dat_20e7bc(pc),a1
	jsr (sub_205cee).l
	jmp (sub_203a8c).l
loc_20e758:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.b $32(a0),d0
	jsr (sub_2006d8).l
	swap d0
	asr.l #$3,d0
	addi.l #$8000,d0
	swap d0
	add.w $2e(a0),d0
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	bmi.s loc_20e792
	cmpi.l #$10000,$30(a0)
	blt.s loc_20e7a6
loc_20e792:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e7a6:
	lea dat_20e7bc(pc),a1
	jsr (sub_205cee).l
	jsr (sub_203a8c).l
	jmp (loc_207b62).l
dat_20e7bc:
	.incbin 59324, 38
dat_20e7e2:
	.incbin 59362, 40
dat_20e80a:
	.incbin 59402, 40
dat_20e832:
	.incbin 59442, 598
	tst.b $24(a0)
	bne.s loc_20eacc
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20eaf0,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20eae2(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20eacc:
	lea ($d000).w,a1
	jsr (sub_208a96).l
	jsr (sub_203a8c).l
	jmp (loc_207b62).l
dat_20eae2:
	.incbin 60130, 496
	lea ($d000).w,a1
	jsr (sub_208a90).l
	beq.s loc_20ed04
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20ecf6
	neg.w d0
loc_20ecf6:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_202570).l
loc_20ed04:
	jsr (sub_203a8c).l
	jmp (loc_207b62).l
	.incbin 60688, 684
	cmpi.b #$ff,$3c(a0)
	beq.w loc_20f21c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20efe0(pc,d0.w),d0
	jsr dat_20efe0(pc,d0.w)
	jsr (sub_203a8c).l
	jmp (loc_207b62).l
dat_20efe0:
	dc.b $00,$18,$00,$a8,$01,$28,$01,$78
loc_20efe8:
	jmp (loc_207b84).l
	dc.b $43,$f8,$d0,$00,$4e,$f9,$00,$20
	dc.b $8a,$90
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20f31a,$4(a0)
	move.w #$4300,$2(a0)
	move.b #$40,$16(a0)
	move.b #$40,$19(a0)
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,$1a(a0)
	move.b d0,$3d(a0)
	jsr (sub_207b2c).l
	bne.w loc_20efe8
	move.b #$3d,$0(a1)
	move.w $8(a0),$36(a1)
	move.w a0,$34(a1)
	move.b #$ff,$3c(a1)
	move.b #$0,$3d(a1)
	move.w a1,$30(a0)
	jsr (sub_207b2c).l
	bne.w loc_20efe8
	move.b #$3d,$0(a1)
	move.w $8(a0),$36(a1)
	move.w a0,$34(a1)
	move.b #$ff,$3c(a1)
	move.b #$1,$3d(a1)
	move.w a1,$34(a0)
	rts
	movea.w $30(a0),a1
	tst.b $3e(a1)
	bmi.s loc_20f094
	rts
loc_20f094:
	lea ($d000).w,a1
	cmpi.b #$2,$3d(a0)
	bcc.s loc_20f0b2
	move.w $8(a0),d0
	move.b $19(a1),d1
	addq.b #$2,d1
	ext.w d1
	add.w $8(a1),d1
	bra.s loc_20f0c4
loc_20f0b2:
	move.w $8(a0),d1
	move.b $19(a1),d0
	addq.b #$2,d0
	neg.b d0
	ext.w d0
	add.w $8(a1),d0
loc_20f0c4:
	sub.w d1,d0
	bcc.s loc_20f0ca
	rts
loc_20f0ca:
	moveq #$10,d0
	jsr (sub_20f1ee).l
	tst.b d1
	bmi.s loc_20f0dc
	cmpi.b #$10,d1
	bcc.s loc_20f0f8
loc_20f0dc:
	movea.w $34(a0),a1
	tst.b $3e(a1)
	beq.s loc_20f0f6
	move.b #$6,$24(a0)
	move.b #$10,$3a(a0)
	clr.b $3b(a0)
loc_20f0f6:
	rts
loc_20f0f8:
	addq.b #$2,$24(a0)
	move.b #$10,$3a(a0)
	clr.b $3b(a0)
	rts
	.incbin 61704, 230

sub_20f1ee:
	move.w $c(a0),d2
	add.w d0,d2
	move.w $8(a0),d3
	lea ($f768).w,a4
	clr.b (a4)
	movea.w #$10,a3
	moveq #$0,d6
	moveq #$d,d5
	jsr (sub_20102e).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_20f21a
	move.b #$0,d3
loc_20f21a:
	rts
loc_20f21c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f23a(pc,d0.w),d0
	jsr dat_20f23a(pc,d0.w)
	jsr (sub_203a8c).l
	move.w $36(a0),d0
	jmp (loc_207b66).l
dat_20f23a:
	dc.b $00,$04,$00,$46
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20f31a,$4(a0)
	move.w #$4300,$2(a0)
	move.b #$8,$1a(a0)
	move.b #$20,d0
	move.b #$10,d1
	tst.b $3d(a0)
	beq.s loc_20f278
	move.b #$10,d0
	move.b #$10,d1
loc_20f278:
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	movea.w $34(a0),a1
	moveq #$0,d0
	move.b $1a(a1),d0
	cmpi.b #$4,d0
	bcc.w loc_20f300
	add.b d0,d0
	lea (dat_20f30a).l,a2
	tst.b $3d(a0)
	beq.s loc_20f2a6
	lea (dat_20f312).l,a2
loc_20f2a6:
	lea $0(a2,d0.w),a2
	move.b (a2)+,d0
	move.b (a2)+,d1
	ext.w d0
	ext.w d1
	add.w $8(a1),d0
	add.w $c(a1),d1
	move.w d0,$8(a0)
	move.w d1,$c(a0)
	lea ($d000).w,a1
	jsr (sub_208a96).l
	tst.b $3d(a0)
	bne.s loc_20f2de
	btst.b #$3,$22(a0)
	sne $3e(a0)
	rts
loc_20f2de:
	btst.b #$5,$22(a0)
	beq.s loc_20f2fa
	tst.b $3f(a0)
	bne.s loc_20f2fe
	move.w #$ffff,$3e(a0)
	bclr.b #$5,$22(a0)
	rts
loc_20f2fa:
	clr.w $3e(a0)
loc_20f2fe:
	rts
loc_20f300:
	lea ($d000).w,a1
	jmp (sub_208948).l
dat_20f30a:
	dc.b $f0,$00,$f0,$00,$10,$00,$10,$00
dat_20f312:
	.incbin 62226, 2260

sub_20fbe6:
	tst.b $28(a0)
	bmi.s loc_20fc16
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fc06
	tst.b ($ff156d).l
	bne.s loc_20fc16
	addq.l #$4,a7
	jmp (loc_207b62).l
loc_20fc06:
	tst.b ($ff156a).l
	bne.s loc_20fc16
	addq.l #$4,a7
	jmp (sub_203b38).l
loc_20fc16:
	rts

sub_20fc18:
	jmp (loc_20679a).l
dat_20fc1e:
	.incbin 64542, 16
dat_20fc2e:
	.incbin 64558, 66514
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
	.incbin 245042, 14894
dat_23f760:
	.incbin 259936, 2208
