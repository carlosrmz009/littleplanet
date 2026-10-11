; R41B__.MMD
; disassembled from the disc; code only, data comes from data/R41B__.MMD at build time
	.file "R41B__.MMD", 262144

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
	bsr.w sub_2078de
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
	lea (dat_20f818).l,a2
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
	bsr.w sub_202c76
	bset.b #$2,($f754).w
	bsr.w sub_2035a4
	bsr.w sub_203556
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
	jsr (sub_20f812).l
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
	jsr (sub_205cba).l
	bsr.w sub_2078de
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
	jsr (sub_2078f4).l
	jsr (sub_2039b8).l
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
	bsr.w sub_202c76
loc_2018b0:
	bsr.w sub_201c18
	jsr (sub_203b62).l
	tst.w ($ff190e).l
	bne.s loc_2018c6
	bsr.w sub_200184
loc_2018c6:
	jsr (sub_20c0b0).l
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
	jmp (sub_205cba).l
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
	lea (dat_20bd88).l,a2
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
	jmp (sub_205cba).l
loc_201d66:
	tst.b ($ff151f).l
	bne.s loc_201d5c
	tst.b ($ff1520).l
	bne.s loc_201d5c
	move.w #$90,d0
	jmp (sub_205cba).l
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
	jmp (sub_205cba).l
loc_201da2:
	tst.b ($ff151f).l
	bne.s loc_201d98
	tst.b ($ff1520).l
	bne.s loc_201d98
	move.w #$91,d0
	jmp (sub_205cba).l
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
	bsr.w sub_205bdc
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
	jsr (sub_20f812).l
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
	bsr.w sub_203232
	bsr.w sub_202818
	jmp (loc_20a28a).l
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
	bsr.w sub_203232
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

sub_20262a:
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
	lea (dat_20f828).l,a1
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
	lea (dat_20f828).l,a1
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
	lea (dat_20f828).l,a1
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
	dc.b $05,$10,$00,$60
dat_202b76:
	.incbin 11126, 32
loc_202b96:
	tst.b ($ff1522).l
	beq.s loc_202bb2
	jsr (sub_206b82).l
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
	dc.b $00,$50,$00,$40
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
	lea ($a800).w,a2
	moveq #$e,d2
loc_202c6e:
	clr.l (a2)+
	dbf d2,loc_202c6e
	rts

sub_202c76:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202c82
	rts
loc_202c82:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202ea8
	bsr.w sub_202f48
	bsr.w sub_20364c
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
	bsr.w sub_20309a
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
loc_202cfe:
	move.w d0,(a1)+
	dbf d6,loc_202cfe
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
	bra.w loc_202d2a
loc_202d2a:
	lea (dat_202da8).l,a3
	lea (dat_23f71c).l,a4
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
loc_202d60:
	cmp.w ($f646).w,d1
	bge.s loc_202d80
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202d7a
	moveq #$0,d2
	move.w (a2)+,d0
loc_202d7a:
	dbf d6,loc_202d60
	rts
loc_202d80:
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
	bne.s loc_202da2
	moveq #$0,d2
	move.w (a2)+,d0
loc_202da2:
	dbf d6,loc_202d80
	rts
dat_202da8:
	.incbin 11688, 256

sub_202ea8:
	move.w ($f700).w,d4
	bsr.s sub_202edc
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202eda
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202ed4
	bset.b #$2,($f754).w
	rts
loc_202ed4:
	bset.b #$3,($f754).w
loc_202eda:
	rts

sub_202edc:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202eee
	bcs.s loc_202f1e
	bra.s loc_202ef4
loc_202eee:
	clr.w ($f73a).w
	rts
loc_202ef4:
	cmpi.w #$10,d0
	blt.s loc_202efe
	move.w #$10,d0
loc_202efe:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202f0c
	move.w ($f72a).w,d0
loc_202f0c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202f1e:
	cmpi.w #$fff0,d0
	bge.s loc_202f28
	move.w #$fff0,d0
loc_202f28:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202f0c
	move.w ($f728).w,d0
	bra.s loc_202f0c
	.incbin 12088, 16

sub_202f48:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202f5c
	subq.w #$5,d0
loc_202f5c:
	btst.b #$1,$22(a6)
	beq.s loc_202f7c
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202fc8
	subi.w #$40,d0
	bcc.s loc_202fc8
	tst.b ($f75c).w
	bne.s loc_202fda
	bra.s loc_202f88
loc_202f7c:
	sub.w ($f73e).w,d0
	bne.s loc_202f8e
	tst.b ($f75c).w
	bne.s loc_202fda
loc_202f88:
	clr.w ($f73c).w
	rts
loc_202f8e:
	cmpi.w #$60,($f73e).w
	bne.s loc_202fb6
	move.w $14(a6),d1
	bpl.s loc_202f9e
	neg.w d1
loc_202f9e:
	cmpi.w #$800,d1
	bcc.s loc_202fc8
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_203028
	cmpi.w #$fffa,d0
	blt.s loc_202ff2
	bra.s loc_202fe0
loc_202fb6:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_203028
	cmpi.w #$fffe,d0
	blt.s loc_202ff2
	bra.s loc_202fe0
loc_202fc8:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_203028
	cmpi.w #$fff0,d0
	blt.s loc_202ff2
	bra.s loc_202fe0
loc_202fda:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202fe0:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_203032
	bra.w loc_202ffe
loc_202ff2:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202ffe:
	cmp.w ($f72c).w,d1
	bgt.s loc_203056
	cmpi.w #$ff00,d1
	bgt.s loc_203022
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203056
loc_203022:
	move.w ($f72c).w,d1
	bra.s loc_203056
loc_203028:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_203032:
	cmp.w ($f72e).w,d1
	blt.s loc_203056
	subi.w #$800,d1
	bcs.s loc_203052
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203056
loc_203052:
	move.w ($f72e).w,d1
loc_203056:
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
	bne.s loc_203098
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_203092
	bset.b #$0,($f754).w
	rts
loc_203092:
	bset.b #$1,($f754).w
loc_203098:
	rts

sub_20309a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_2030ce
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_2030c8
	bset.b #$2,($f756).w
	bra.s loc_2030ce
loc_2030c8:
	bset.b #$3,($f756).w
loc_2030ce:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_203102
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_2030fc
	bset.b #$0,($f756).w
	rts
loc_2030fc:
	bset.b #$1,($f756).w
loc_203102:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_203138
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_203132
	bset.b #$4,($f756).w
	rts
loc_203132:
	bset.b #$5,($f756).w
loc_203138:
	rts
	.incbin 12602, 248

sub_203232:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_20328a
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2032f0
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2032f2
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2

sub_20328a:
	tst.b (a2)
	beq.s loc_2032ee
	bclr.b #$0,(a2)
	beq.s loc_2032a4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20351e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032f4
loc_2032a4:
	bclr.b #$1,(a2)
	beq.s loc_2032be
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20351e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2032f4
loc_2032be:
	bclr.b #$2,(a2)
	beq.s loc_2032d4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20351e
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20334a
loc_2032d4:
	bclr.b #$3,(a2)
	beq.s loc_2032ee
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20351e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_20334a
loc_2032ee:
	rts

sub_2032f0:
	rts

sub_2032f2:
	rts

sub_2032f4:
	moveq #$15,d6

sub_2032f6:
	move.l #$800000,d7
	move.l d0,d1
loc_2032fe:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033f6
	move.l d1,d0
	bsr.w sub_203378
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2032fe
	rts
	.incbin 13088, 42

sub_20334a:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203354:
	movem.l d4-d5,-(a7)
	bsr.w sub_2033f6
	move.l d1,d0
	bsr.w sub_203378
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203354
	rts

sub_203378:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2033b4
	btst.b #$3,(a0)
	bne.s loc_203394
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203394:
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
loc_2033b4:
	btst.b #$3,(a0)
	bne.s loc_2033d6
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
loc_2033d6:
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

sub_2033f6:
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
	beq.s loc_203446
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
loc_203446:
	rts
	.incbin 13384, 214

sub_20351e:
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

sub_203556:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20357c
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2

sub_20357c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203580:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_20351e
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2032f6
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203580
	rts

sub_2035a4:
	moveq #$0,d0
	lea (dat_20f818).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_20260c
	movea.l (a2)+,a0
	bsr.w sub_2035fe
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20047e
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2035e8
	jmp (loc_20c08c).l
loc_2035e8:
	btst.b #$1,($ff151c).l
	beq.s loc_2035fc
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2035fc
	bsr.w sub_20273a
loc_2035fc:
	rts

sub_2035fe:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203608:
	move.l d0,(a3)+
	dbf d1,loc_203608
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_20361e
	lea ($a040).w,a3
	moveq #$2,d1

sub_20361e:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23bd32).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203638:
	move.w d1,d0
	movea.l a3,a0
loc_20363c:
	move.b (a1)+,(a0)+
	dbf d0,loc_20363c
	lea $80(a3),a3
	dbf d2,loc_203638
	rts

sub_20364c:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2036c6(pc,d0.w),d0
	jsr dat_2036c6(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203672
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203672:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2036a0
	bcc.s loc_2036a2
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203696
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203696:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2036a0:
	rts
loc_2036a2:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2036ba
	btst.b #$1,($d022).w
	beq.s loc_2036ba
	add.w d1,d1
	add.w d1,d1
loc_2036ba:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2036c6:
	.incbin 14022, 460
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2038a4(pc,d0.w),d0
	jmp dat_2038a4(pc,d0.w)
dat_2038a4:
	dc.b $00,$06,$00,$0e,$00,$40
	move.w #$510,($f726).w
	rts
	.incbin 14514, 262

sub_2039b8:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2039c0:
	move.b (a0),d0
	beq.s loc_2039d6
	add.w d0,d0
	add.w d0,d0
	lea (dat_203dda).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2039d6:
	lea $40(a0),a0
	dbf d7,loc_2039c0
	rts

sub_2039e0:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203a1e
	bpl.s loc_203a10
	btst.b #$1,$2c(a0)
	beq.s loc_203a10
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203a1e
loc_203a10:
	btst.b #$2,$2c(a0)
	bne.s loc_203a1e
	addi.w #$38,$12(a0)
loc_203a1e:
	tst.w $12(a0)
	bmi.s loc_203a32
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203a32
	move.w #$1000,$12(a0)
loc_203a32:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203a42:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203a7e
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203a7e
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203a7c
	neg.w d1
loc_203a7c:
	add.w d1,d0
loc_203a7e:
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

sub_203a98:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203b08
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b24
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203b24
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203ae2
	cmpi.w #$800,d3
	bcs.s loc_203af4
	subi.w #$800,d3
	bra.s loc_203af4
loc_203ae2:
	cmpi.w #$700,($f704).w
	bcs.s loc_203af4
	cmpi.w #$100,d3
	bcc.s loc_203af4
	addi.w #$800,d3
loc_203af4:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203b24
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203b24
loc_203b08:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203b24
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203b24:
	rts
	.incbin 15142, 30

sub_203b44:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203b4a:
	move.l d1,(a1)+
	dbf d0,loc_203b4a
	rts
dat_203b52:
	.incbin 15186, 16

sub_203b62:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203b6e:
	tst.w (a4)
	beq.w loc_203c2e
	moveq #$2,d6
loc_203b76:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203c26
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203bdc
	movea.l dat_203b52(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203bc0
	cmpi.w #$800,d2
	bcs.s loc_203bd2
	subi.w #$800,d2
	bra.s loc_203bd2
loc_203bc0:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203bd2
	cmpi.w #$100,d2
	bcc.s loc_203bd2
	addi.w #$800,d2
loc_203bd2:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203bfe
loc_203bdc:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203bfe
	.incbin 15334, 24
loc_203bfe:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203c1c
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203c20
loc_203c1c:
	bsr.w sub_203c50
loc_203c20:
	bset.b #$7,$1(a0)
loc_203c26:
	addq.w #$2,d6
	subq.w #$2,(a4)

sub_203c2a:
	bne.w loc_203b76
loc_203c2e:
	lea $80(a4),a4
	dbf d7,loc_203b6e
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203c48
	move.l #$0,(a2)
	rts
loc_203c48:
	move.b #$0,-$5(a2)
	rts

sub_203c50:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203c96
	btst.l #$1,d4
	bne.w loc_203ce4
loc_203c62:
	cmpi.b #$50,d5
	beq.s loc_203c94
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
	bne.s loc_203c8e
	addq.w #$1,d0
loc_203c8e:
	move.w d0,(a2)+
	dbf d1,loc_203c62
loc_203c94:
	rts
loc_203c96:
	btst.l #$1,d4
	bne.w loc_203d2a
loc_203c9e:
	cmpi.b #$50,d5
	beq.s loc_203ce2
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
	bne.s loc_203cdc
	addq.w #$1,d0
loc_203cdc:
	move.w d0,(a2)+
	dbf d1,loc_203c9e
loc_203ce2:
	rts
loc_203ce4:
	cmpi.b #$50,d5
	beq.s loc_203d28
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
	bne.s loc_203d22
	addq.w #$1,d0
loc_203d22:
	move.w d0,(a2)+
	dbf d1,loc_203ce4
loc_203d28:
	rts
loc_203d2a:
	cmpi.b #$50,d5
	beq.s loc_203d7c
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
	bne.s loc_203d76
	addq.w #$1,d0
loc_203d76:
	move.w d0,(a2)+
	dbf d1,loc_203d2a
loc_203d7c:
	rts
	.incbin 15742, 92
dat_203dda:
	.incbin 15834, 334

sub_203f28:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203f3a
	move.w #$0,(a1)
	rts
loc_203f3a:
	tst.w (a1)
	bne.s loc_203f44
	move.b #$1,$1(a1)
loc_203f44:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203f8e
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203f80
	neg.w $10(a0)
loc_203f80:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205cba
loc_203f8e:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203fac
	cmpa.w #$d040,a0
	beq.s loc_203fac
	tst.b ($ff1906).l
	beq.s loc_203fac
	jmp (loc_2074a8).l
loc_203fac:
	move.b $2a(a0),d0
	beq.s loc_203fd6
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203fc8
	cmpi.b #$2d,d0
	bcs.s loc_203fd2
	move.b #$2d,d0
	bra.s loc_203fd2
loc_203fc8:
	cmpi.b #$1e,d0
	bcs.s loc_203fd2
	move.b #$1e,d0
loc_203fd2:
	move.b d0,$2a(a0)
loc_203fd6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203fe4(pc,d0.w),d1
	jmp dat_203fe4(pc,d1.w)
dat_203fe4:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203fee:
	tst.b ($d300).w
	bne.s loc_20402c
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_20402c:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204054
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204054:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_204088:
	tst.b ($ff1506).l
	bne.s loc_2040ee
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_2040ee
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2040f2
	cmpi.b #$2f,d1
	bne.s loc_2040f0
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_2040ee
	tst.b $2c(a0)
	beq.s loc_2040ee
	jsr (sub_207af0).l
	bne.s loc_2040ee
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_2040e6
	moveq #$0,d0
loc_2040e6:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_2040ee:
	rts
loc_2040f0:
	rts

sub_2040f2:
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

sub_204118:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_204124
	neg.w d0
loc_204124:
	btst.b #$1,$2c(a0)
	beq.s loc_204134
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_20415c
loc_204134:
	cmpi.w #$600,d0
	bcs.s loc_20415c
	tst.w $14(a0)
	bpl.s loc_20414e
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_20416a
	move.w #$e0,d1
	bra.s loc_20416a
loc_20414e:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_20416a
	move.w #$60,d1
	bra.s loc_20416a
loc_20415c:
	cmpi.w #$a0,d1
	beq.s loc_20416a
	bcc.s loc_204168
	addq.w #$2,d1
	bra.s loc_20416a
loc_204168:
	subq.w #$2,d1
loc_20416a:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_204118
	bsr.w sub_204088
	tst.w ($ff1588).l
	beq.s loc_204190
	btst.b #$4,($f605).w
	beq.s loc_204190
	move.b #$1,($ff1906).l
	rts
loc_204190:
	tst.b ($f7cc).w
	bne.s loc_20419c
	move.w ($f604).w,($f602).w
loc_20419c:
	btst.b #$0,$2c(a0)
	beq.s loc_2041c0
	cmpi.b #$6,($ff1506).l
	bne.s loc_2041ba
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_2041d8
loc_2041ba:
	bsr.w sub_2044a2
	bra.s loc_2041d8
loc_2041c0:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_20421e(pc,d0.w),d1
	jsr dat_20421e(pc,d1.w)
	jsr (sub_206aae).l
loc_2041d8:
	bsr.s sub_20422c
	bsr.w sub_2042ec
	bsr.w sub_204306
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_204200
	tst.b $1c(a0)
	bne.s loc_204200
	move.b $1d(a0),$1c(a0)
loc_204200:
	bsr.w sub_2056aa
	tst.b $2c(a0)
	bmi.s loc_204218
	cmpi.b #$2b,$1c(a0)
	beq.s loc_204218
	jsr (sub_207052).l
loc_204218:
	bsr.w sub_205560
	rts
dat_20421e:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_20422c:
	cmpi.w #$d2,($f786).w
	bcc.s loc_204250
	move.w $30(a0),d0
	beq.s loc_204242
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_204250
loc_204242:
	btst.b #$6,$2c(a0)
	bne.s loc_204250
	jsr (sub_203a98).l
loc_204250:
	tst.b ($ff151f).l
	beq.s loc_204294
	tst.w $32(a0)
	beq.s loc_204294
	subq.w #$1,$32(a0)
	bne.s loc_204294
	tst.b ($ff1520).l
	bne.s loc_20428c
	tst.b ($ff1958).l
	bne.s loc_20428c
	tst.b ($ff152e).l
	bne.s loc_204286
	move.w #$e,d0
	jsr (sub_205cba).l
loc_204286:
	jsr (sub_201992).l
loc_20428c:
	move.b #$0,($ff151f).l
loc_204294:
	tst.b ($ff1520).l
	beq.s loc_2042ea
	tst.w $34(a0)
	beq.s loc_2042ea
	subq.w #$1,$34(a0)
	bne.s loc_2042ea
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_2042e2
	tst.b ($ff1958).l
	bne.s loc_2042e2
	tst.b ($ff152e).l
	bne.s loc_2042dc
	move.w #$e,d0
	jsr (sub_205cba).l
loc_2042dc:
	jsr (sub_201992).l
loc_2042e2:
	move.b #$0,($ff1520).l
loc_2042ea:
	rts

sub_2042ec:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204306:
	cmpi.b #$2,($ff1506).l
	beq.s loc_204312
loc_204310:
	rts
loc_204312:
	cmpi.b #$1,($ff1507).l
	bne.s loc_204324
	cmpi.w #$c8,$8(a0)
	bcs.s loc_204310
loc_204324:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204368
	bset.b #$6,$22(a0)
	bne.s loc_204310
	bsr.w sub_20613a
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_204310
	bra.s loc_2043a0
loc_204368:
	tst.w $12(a0)
	beq.s loc_204370
	bpl.s loc_204310
loc_204370:
	bclr.b #$6,$22(a0)
	beq.s loc_204310
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_204310
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2043a0
	move.w #$f000,$12(a0)
loc_2043a0:
	jsr (sub_207af0).l
	bne.s loc_2043b4
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2043b4:
	rts

sub_2043b6:
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
	bcs.s loc_204490
	move.l #$50000,d0
loc_204490:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2044a2:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2044c8
	tst.b ($ff152e).l
	beq.s loc_2044be
	cmpi.b #$2,($ff152e).l
	bne.s loc_2044c8
loc_2044be:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204578
loc_2044c8:
	tst.b $2a(a0)
	bne.w loc_204586
	tst.b ($f784).w
	beq.w loc_204586
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_2044e6
	neg.w d0
loc_2044e6:
	tst.w ($f786).w
	bne.s loc_2044f2
	move.w #$1,($f786).w
loc_2044f2:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204508
	move.b #$1,($ff1502).l
	bra.w loc_205cb6
loc_204508:
	cmpi.w #$d2,d1
	bcs.s loc_20455c
	cmpi.b #$2,($ff1522).l
	beq.s loc_20455a
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204532
	move.w #$82,d0
	jsr (sub_205cba).l
	moveq #$0,d0
loc_204532:
	add.b ($f784).w,d0
	bpl.s loc_20453c
	moveq #$0,d0
	bra.s loc_204544
loc_20453c:
	cmpi.b #$3,d0
	bcs.s loc_204544
	moveq #$2,d0
loc_204544:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2043b6
	move.b #$2,($ff1522).l
loc_20455a:
	rts
loc_20455c:
	cmpi.w #$5a,d1
	bcc.s loc_204574
	cmp.w d2,d0
	bcc.w loc_203fee
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204574:
	cmp.w d2,d0
	bcc.s loc_204586
loc_204578:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204586:
	rts
	bsr.w sub_203f28
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2045b8
	tst.b ($ff195b).l
	beq.s loc_2045a6
	cmpi.b #$79,$1a(a0)
	bne.s loc_2045e2
	bra.s loc_2045ae
loc_2045a6:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_2045e2
loc_2045ae:
	bsr.w sub_204e4a
	jmp (sub_2039e0).l
loc_2045b8:
	bsr.w sub_204690
	bsr.w sub_2044a2
	bsr.w sub_204f34
	bsr.w sub_205060
	bsr.w sub_204704
	bsr.w sub_204eb6
	bsr.w sub_204e4a
	jsr (sub_203a42).l
	bsr.w sub_200ad8
	bsr.w sub_2050de
loc_2045e2:
	rts
	tst.b ($f7c7).w
	bne.s loc_2045fe
	cmpi.b #$15,$1c(a0)
	beq.s loc_2045fe
	tst.w $12(a0)
	bmi.s loc_2045fe
	move.b #$0,$1c(a0)
loc_2045fe:
	bsr.w sub_204690
	bsr.w sub_2044a2
	bsr.w sub_20501e
	bsr.w sub_204d6a
	bsr.w sub_204e4a
	jsr (sub_2039e0).l
	btst.b #$6,$22(a0)
	beq.s loc_204626
	subi.w #$28,$12(a0)
loc_204626:
	bsr.w sub_205128
	bsr.w sub_20514c
	rts
	bsr.w sub_204690
	bsr.w sub_2044a2
	bsr.w sub_204f34
	bsr.w sub_20509c
	bsr.w sub_204ba4
	bsr.w sub_204e4a
	tst.b $2a(a0)
	bne.s loc_204654
	jsr (sub_203a42).l
loc_204654:
	bsr.w sub_200ad8
	bsr.w sub_2050de
	rts
	bsr.w sub_204690
	bsr.w sub_2044a2
	bsr.w sub_20501e
	bsr.w sub_204d6a
	bsr.w sub_204e4a
	jsr (sub_2039e0).l
	btst.b #$6,$22(a0)
	beq.s loc_204686
	subi.w #$28,$12(a0)
loc_204686:
	bsr.w sub_205128
	bsr.w sub_20514c
	rts

sub_204690:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2046fc
	tst.w ($ff1506).l
	bne.s loc_2046fc
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2046fe).l,a2
loc_2046c4:
	move.b (a2)+,d0
	bmi.s loc_2046d4
	cmp.b d0,d1
	bne.s loc_2046c4
	bset.b #$1,$2c(a0)
	rts
loc_2046d4:
	bclr.b #$1,$2c(a0)
	beq.s loc_2046fc
	tst.w $12(a0)
	bpl.s loc_2046fc
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2046fc
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2046fc
	neg.w $10(a0)
loc_2046fc:
	rts
dat_2046fe:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204704:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204a2e
	tst.w $3e(a0)
	bne.w loc_2049de
	btst.b #$2,($f602).w
	beq.s loc_20472c
	bsr.w sub_204abe
loc_20472c:
	btst.b #$3,($f602).w
	beq.s loc_204738
	bsr.w sub_204b34
loc_204738:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_2049de
	tst.w $14(a0)
	beq.s loc_204758
	tst.b $2a(a0)
	beq.w loc_2049de
	bra.s loc_204764
loc_204758:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204764:
	btst.b #$3,$22(a0)
	beq.s loc_2047b6
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_20480e
	cmpi.b #$1e,$0(a1)
	bne.s loc_204796
	move.b #$0,$1c(a0)
	bra.w loc_2049de
loc_204796:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2047f2
	cmp.w d2,d1
	bge.s loc_2047e0
	bra.s loc_20480e
loc_2047b6:
	jsr (sub_206db6).l
	cmpi.w #$c,d1
	blt.s loc_20480e
	move.w #$ab,d0
	jsr (sub_202570).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_2047ea
loc_2047e0:
	btst.b #$0,$22(a0)
	bne.s loc_2047fa
	bra.s loc_204804
loc_2047ea:
	cmpi.b #$3,$37(a0)
	bne.s loc_20480e
loc_2047f2:
	btst.b #$0,$22(a0)
	bne.s loc_204804
loc_2047fa:
	move.b #$32,$1c(a0)
	bra.w loc_2049de
loc_204804:
	move.b #$6,$1c(a0)
	bra.w loc_2049de
loc_20480e:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204822
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204822:
	btst.b #$7,($f788).w
	bne.w loc_204926
	btst.b #$6,($f788).w
	bne.w loc_204946
	btst.b #$1,($f602).w
	bne.w loc_204946
	andi.b #$f,($f788).w
	beq.s loc_20485a
	btst.b #$0,($f603).w
	beq.s loc_20486e
	bset.b #$7,($f788).w
	bra.w loc_204a02
loc_20485a:
	btst.b #$0,($f603).w
	beq.w loc_20486e
	move.b #$1,($f788).w
	bra.w loc_204a02
loc_20486e:
	btst.b #$0,($f602).w
	beq.s loc_2048ea
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2048cc
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20489e
	asr.w #$1,d2
	sub.w d2,d1
loc_20489e:
	btst.b #$0,$22(a0)
	beq.s loc_2048aa
	neg.w d0
	neg.w d1
loc_2048aa:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2048c0
	cmp.w d0,d1
	ble.s loc_2048c6
	bra.s loc_2048c4
loc_2048c0:
	cmp.w d1,d0
	ble.s loc_2048c6
loc_2048c4:
	move.w d1,d0
loc_2048c6:
	move.w d0,$14(a0)
	rts
loc_2048cc:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2048e6
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202570).l
loc_2048e6:
	bra.w loc_204a02
loc_2048ea:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20490a
	move.w #$ab,d0
	jsr (sub_202570).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204946
loc_20490a:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202570).l
	bra.w loc_2049de
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204926:
	btst.b #$0,($f602).w
	beq.s loc_204946
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204a02
	addq.w #$2,($f73e).w
	bra.w loc_204a02
loc_204946:
	btst.b #$6,($f788).w
	bne.w loc_2049c2
	andi.b #$f,($f788).w
	beq.s loc_20496a
	btst.b #$1,($f603).w
	beq.s loc_20497c
	bset.b #$6,($f788).w
	bra.w loc_204a02
loc_20496a:
	btst.b #$1,($f603).w
	beq.s loc_20497c
	move.b #$1,($f788).w
	bra.w loc_204a02
loc_20497c:
	btst.b #$1,($f602).w
	beq.s loc_2049de
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2049c0
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2049c0
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2049b2
	neg.w $14(a0)
loc_2049b2:
	move.w #$9c,d0
	jsr (sub_202570).l
	bsr.w sub_204ede
loc_2049c0:
	bra.s loc_204a02
loc_2049c2:
	btst.b #$1,($f602).w
	beq.s loc_2049de
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204a02
	subq.w #$2,($f73e).w
	bra.s loc_204a02
loc_2049de:
	cmpi.w #$60,($f73e).w
	bne.s loc_2049f8
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204a02
	move.b #$0,($f788).w
	bra.s loc_204a02
loc_2049f8:
	bcc.s loc_2049fe
	addq.w #$4,($f73e).w
loc_2049fe:
	subq.w #$2,($f73e).w
loc_204a02:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204a2e
	move.w $14(a0),d0
	beq.s loc_204a2e
	bmi.s loc_204a22
	sub.w d5,d0
	bcc.s loc_204a1c
	move.w #$0,d0
loc_204a1c:
	move.w d0,$14(a0)
	bra.s loc_204a2e
loc_204a22:
	add.w d5,d0
	bcc.s loc_204a2a
	move.w #$0,d0
loc_204a2a:
	move.w d0,$14(a0)
loc_204a2e:
	move.b $26(a0),d0
	jsr (sub_2006d8).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204a4c:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204abc
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204abc
	bmi.s loc_204a64
	neg.w d1
loc_204a64:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206c76
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204abc
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204ab8
	cmpi.b #$40,d0
	beq.s loc_204aa6
	cmpi.b #$80,d0
	beq.s loc_204aa0
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204aa0:
	sub.w d1,$12(a0)
	rts
loc_204aa6:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204ab8:
	add.w d1,$12(a0)
loc_204abc:
	rts

sub_204abe:
	tst.b $2a(a0)
	bne.s loc_204b32
	move.w $14(a0),d0
	beq.s loc_204acc
	bpl.s loc_204afc
loc_204acc:
	bset.b #$0,$22(a0)
	bne.s loc_204ae0
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204ae0:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204af0
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204af0
	move.w d1,d0
loc_204af0:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204afc:
	sub.w d4,d0
	bcc.s loc_204b04
	move.w #$ff80,d0
loc_204b04:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204b32
	cmpi.w #$400,d0
	blt.s loc_204b32
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202570).l
loc_204b32:
	rts

sub_204b34:
	tst.b $2a(a0)
	bne.s loc_204ba2
	move.w $14(a0),d0
	bmi.s loc_204b6c
	bclr.b #$0,$22(a0)
	beq.s loc_204b54
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b54:
	cmp.w d6,d0
	bge.s loc_204b60
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b60
	move.w d6,d0
loc_204b60:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204b6c:
	add.w d4,d0
	bcc.s loc_204b74
	move.w #$80,d0
loc_204b74:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204ba2
	cmpi.w #$fc00,d0
	bgt.s loc_204ba2
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202570).l
loc_204ba2:
	rts

sub_204ba4:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204cee
	tst.w $3e(a0)
	bne.s loc_204bdc
	btst.b #$2,($f602).w
	beq.s loc_204bd0
	bsr.w sub_204d24
loc_204bd0:
	btst.b #$3,($f602).w
	beq.s loc_204bdc
	bsr.w sub_204d48
loc_204bdc:
	tst.b $2a(a0)
	beq.w loc_204c86
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204bfc
	asr.w #$1,d2
	sub.w d2,d1
loc_204bfc:
	btst.b #$0,$22(a0)
	beq.s loc_204c08
	neg.w d0
	neg.w d1
loc_204c08:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204c1e
	cmp.w d0,d1
	ble.s loc_204c24
	bra.s loc_204c22
loc_204c1e:
	cmp.w d1,d0
	ble.s loc_204c24
loc_204c22:
	move.w d1,d0
loc_204c24:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204c58
	rts
loc_204c32:
	move.w #$ab,d0
	jsr (sub_202570).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204cb8
loc_204c58:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204c32
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202570).l
	btst.b #$0,$22(a0)
	bne.s loc_204c7e
	bsr.w sub_204d48
	bra.s loc_204c86
loc_204c7e:
	bsr.w sub_204d24
	bra.s loc_204c86
	dc.b $4e,$75
loc_204c86:
	move.w $14(a0),d0
	beq.s loc_204ca8
	bmi.s loc_204c9c
	sub.w d5,d0
	bcc.s loc_204c96
	move.w #$0,d0
loc_204c96:
	move.w d0,$14(a0)
	bra.s loc_204ca8
loc_204c9c:
	add.w d5,d0
	bcc.s loc_204ca4
	move.w #$0,d0
loc_204ca4:
	move.w d0,$14(a0)
loc_204ca8:
	tst.w $14(a0)
	bne.s loc_204cee
	move.w #$ab,d0
	jsr (sub_202570).l
loc_204cb8:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cd8
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204ce8
loc_204cd8:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204ce8:
	move.b #$5,$1c(a0)
loc_204cee:
	move.b $26(a0),d0
	jsr (sub_2006d8).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204d12
	move.w #$1000,d1
loc_204d12:
	cmpi.w #$f000,d1
	bge.s loc_204d1c
	move.w #$f000,d1
loc_204d1c:
	move.w d1,$10(a0)
	bra.w loc_204a4c

sub_204d24:
	move.w $14(a0),d0
	beq.s loc_204d2c
	bpl.s loc_204d3a
loc_204d2c:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d3a:
	sub.w d4,d0
	bcc.s loc_204d42
	move.w #$ff80,d0
loc_204d42:
	move.w d0,$14(a0)
	rts

sub_204d48:
	move.w $14(a0),d0
	bmi.s loc_204d5c
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204d5c:
	add.w d4,d0
	bcc.s loc_204d64
	move.w #$80,d0
loc_204d64:
	move.w d0,$14(a0)
	rts

sub_204d6a:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204da4
	tst.w ($ff1506).l
	bne.s loc_204da4
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204d9c
	cmpi.w #$840,$8(a0)
	bcc.s loc_204d9c
	rts
loc_204d9c:
	btst.b #$1,$2c(a0)
	bne.s loc_204dd4
loc_204da4:
	btst.b #$2,($f602).w
	beq.s loc_204dbe
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204dbe
	move.w d1,d0
loc_204dbe:
	btst.b #$3,($f602).w
	beq.s loc_204dd4
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204dd4
	move.w d6,d0
loc_204dd4:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204dea
	bcc.s loc_204de6
	addq.w #$4,($f73e).w
loc_204de6:
	subq.w #$2,($f73e).w
loc_204dea:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204e18
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204e18
	bmi.s loc_204e0c
	sub.w d1,d0
	bcc.s loc_204e06
	move.w #$0,d0
loc_204e06:
	move.w d0,$10(a0)
	rts
loc_204e0c:
	sub.w d1,d0
	bcs.s loc_204e14
	move.w #$0,d0
loc_204e14:
	move.w d0,$10(a0)
loc_204e18:
	rts
	.incbin 19994, 48

sub_204e4a:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204e9e
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204e78
	addi.w #$38,d0
loc_204e78:
	cmp.w d1,d0
	bls.s loc_204e9e
loc_204e7c:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204e8c
	rts
loc_204e8c:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_2072e4
	move.b #$6,$24(a0)
	rts
loc_204e9e:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204e7c

sub_204eb6:
	tst.b ($f7ca).w
	bne.s loc_204edc
	move.w $14(a0),d0
	bpl.s loc_204ec4
	neg.w d0
loc_204ec4:
	cmpi.w #$80,d0
	bcs.s loc_204edc
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204edc
	btst.b #$1,($f602).w
	bne.s sub_204ede
loc_204edc:
	rts

sub_204ede:
	btst.b #$2,$22(a0)
	beq.s loc_204ee8
	bra.s loc_204f18
loc_204ee8:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204f08
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204f18
loc_204f08:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204f18:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204f32
	cmpi.w #$200,$14(a0)
	bcc.s loc_204f32
	move.w #$200,$14(a0)
loc_204f32:
	rts

sub_204f34:
	tst.b $2a(a0)
	beq.s loc_204f3c
	rts
loc_204f3c:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204f4e
	tst.w $14(a0)
	beq.w loc_205014
loc_204f4e:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_205014
	btst.b #$3,$22(a0)
	beq.s loc_204f6a
	jsr (sub_205c40).l
	beq.s loc_204f9a
loc_204f6a:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206ce0
	cmpi.w #$6,d1
	blt.w loc_205014
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204f90
	move.w #$380,d2
loc_204f90:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204f9a:
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
	bne.s loc_205016
	tst.b ($ff195b).l
	beq.s loc_204ff8
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_205008
loc_204ff8:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_205008:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_205014:
	rts
loc_205016:
	bset.b #$4,$22(a0)
	rts

sub_20501e:
	tst.b $3c(a0)
	beq.s loc_205050
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_205034
	move.w #$fe00,d1
loc_205034:
	cmp.w $12(a0),d1
	ble.s loc_20504e
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_20504e
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_20504e:
	rts
loc_205050:
	cmpi.w #$f040,$12(a0)
	bge.s loc_20505e
	move.w #$f040,$12(a0)
loc_20505e:
	rts

sub_205060:
	tst.b $2a(a0)
	bne.s loc_20509a
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20509a
	move.b $26(a0),d0
	jsr (sub_2006d8).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_20509a
	bmi.s loc_205096
	tst.w d0
	beq.s loc_205094
	add.w d0,$14(a0)
loc_205094:
	rts
loc_205096:
	add.w d0,$14(a0)
loc_20509a:
	rts

sub_20509c:
	tst.b $2a(a0)
	bne.s loc_2050dc
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_2050dc
	move.b $26(a0),d0
	jsr (sub_2006d8).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_2050d2
	tst.w d0
	bpl.s loc_2050cc
	asr.l #$2,d0
loc_2050cc:
	add.w d0,$14(a0)
	rts
loc_2050d2:
	tst.w d0
	bmi.s loc_2050d8
	asr.l #$2,d0
loc_2050d8:
	add.w d0,$14(a0)
loc_2050dc:
	rts

sub_2050de:
	nop
	tst.b $38(a0)
	bne.s loc_205120
	tst.w $3e(a0)
	bne.s loc_205122
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_205120
	move.w $14(a0),d0
	bpl.s loc_205102
	neg.w d0
loc_205102:
	cmpi.w #$280,d0
	bcc.s loc_205120
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_205120:
	rts
loc_205122:
	subq.w #$1,$3e(a0)
	rts

sub_205128:
	btst.b #$1,$2c(a0)
	bne.s loc_20514a
	move.b $26(a0),d0
	beq.s loc_20514a
	bpl.s loc_205140
	addq.b #$2,d0
	bcc.s loc_20513e
	moveq #$0,d0
loc_20513e:
	bra.s loc_205146
loc_205140:
	subq.b #$2,d0
	bcc.s loc_205146
	moveq #$0,d0
loc_205146:
	move.b d0,$26(a0)
loc_20514a:
	rts

sub_20514c:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200970).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_205230
	cmpi.b #$80,d0
	beq.w loc_205292
	cmpi.b #$c0,d0
	beq.w loc_2052ee
	bsr.w sub_206ff6
	tst.w d1
	bpl.s loc_20519e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20519e:
	bsr.w sub_206e58
	tst.w d1
	bpl.s loc_2051b0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2051b0:
	bsr.w sub_206d08
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_20522e
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_2051ce
	cmp.b d2,d0
	blt.s loc_20522e
loc_2051ce:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205350
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_20520c
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2051fe
	asr.w $12(a0)
	bra.s loc_205220
loc_2051fe:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_20520c:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_205220
	move.w #$fc0,$12(a0)
loc_205220:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20522e
	neg.w $14(a0)
loc_20522e:
	rts
loc_205230:
	bsr.w sub_206ff6
	tst.w d1
	bpl.s loc_20524a
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_20524a:
	bsr.w sub_206eb0
	tst.w d1
	bpl.s loc_205264
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205262
	move.w #$0,$12(a0)
loc_205262:
	rts
loc_205264:
	tst.w $12(a0)
	bmi.s loc_205290
	bsr.w sub_206d08
	tst.w d1
	bpl.s loc_205290
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205350
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205290:
	rts
loc_205292:
	bsr.w sub_206ff6
	tst.w d1
	bpl.s loc_2052a4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052a4:
	bsr.w sub_206e58
	tst.w d1
	bpl.s loc_2052b6
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_2052b6:
	bsr.w sub_206eb0
	tst.w d1
	bpl.s loc_2052ec
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052d6
	move.w #$0,$12(a0)
	rts
loc_2052d6:
	move.b d3,$26(a0)
	bsr.w sub_2053c2
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052ec
	neg.w $14(a0)
loc_2052ec:
	rts
loc_2052ee:
	bsr.w sub_206e58
	tst.w d1
	bpl.s loc_205308
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205308:
	bsr.w sub_206eb0
	tst.w d1
	bpl.s loc_205322
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205320
	move.w #$0,$12(a0)
loc_205320:
	rts
loc_205322:
	tst.w $12(a0)
	bmi.s loc_20534e
	bsr.w sub_206d08
	tst.w d1
	bpl.s loc_20534e
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_205350
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20534e:
	rts

sub_205350:
	btst.b #$4,$22(a0)
	beq.s loc_20535a
	nop
loc_20535a:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2053b4
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205394
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2053a4
loc_205394:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2053a4:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202570).l
loc_2053b4:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2053c2:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21474, 114
	bsr.w sub_20546c
	jsr (sub_2039e0).l
	bsr.w sub_2042ec
	bsr.w sub_2056aa
	jmp (sub_203a98).l

sub_20546c:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_2054da
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_2054a0
	clr.b ($ff1508).l
loc_2054a0:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2054ba
	tst.b ($ff0f01).l
	beq.s loc_2054ba
	move.b #$0,($ff1508).l
	bra.s loc_2054d4
loc_2054ba:
	jsr (sub_207af0).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_2054da
loc_2054d4:
	move.w #$3c,$3a(a0)
loc_2054da:
	rts
	tst.w $3a(a0)
	beq.w loc_20555e
	subq.w #$1,$3a(a0)
	bne.w loc_20555e
	move.w #$1,($ff1502).l
	jsr (sub_202508).l
	move.b #$1,($a01c3e).l
	jsr (sub_202524).l
	bsr.w sub_2078de
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_20552c
	cmpi.b #$1,($ff152e).l
	bne.s loc_20552c
	bclr.b #$1,($ff151c).l
loc_20552c:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_20555a
	cmpi.b #$1,($ff152e).l
	bne.s loc_205554
	tst.b ($ff158e).l
	beq.s loc_20555a
	move.b #$1,($ff1522).l
	bra.s loc_20555a
loc_205554:
	clr.b ($ff1522).l
loc_20555a:
	bra.w sub_205cba
loc_20555e:
	rts

sub_205560:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205588
	cmpi.b #$5,($ff1506).l
	beq.s loc_205588
	cmpi.b #$2,($ff1506).l
	beq.s loc_205588
	tst.b ($ff1506).l
	bne.w loc_20564a
loc_205588:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2055c6
	tst.b ($ff1506).l
	bne.w loc_20564c
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20564c
	bra.s loc_2055ce
loc_2055c6:
	cmp.b ($f7af).w,d1
	beq.w loc_20564c
loc_2055ce:
	cmp.b ($f7ac).w,d1
	beq.s loc_2055fe
	cmp.b ($f7ad).w,d1
	beq.s loc_2055e2
	bclr.b #$6,$1(a0)
	rts
loc_2055e2:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205664
	btst.b #$1,$22(a0)
	beq.s loc_2055fe
	bclr.b #$6,$1(a0)
	rts
loc_2055fe:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205610
	bclr.b #$6,$1(a0)
	rts
loc_205610:
	cmpi.b #$e0,d2
	bcs.s loc_20561e
	bset.b #$6,$1(a0)
	rts
loc_20561e:
	btst.b #$6,$1(a0)
	bne.s loc_20563a
	move.b $26(a0),d1
	beq.s loc_20564a
	cmpi.b #$80,d1
	bhi.s loc_20564a
	bset.b #$6,$1(a0)
	rts
loc_20563a:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20564a
	bclr.b #$6,$1(a0)
loc_20564a:
	rts
loc_20564c:
	btst.b #$2,$22(a0)
	bne.s loc_20565e
	move.w #$9c,d0
	jsr (sub_202570).l
loc_20565e:
	jmp (sub_204ede).l
loc_205664:
	tst.w $12(a0)
	bmi.s loc_2056a8
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20569c
	cmpi.w #$38,d1
	bcs.s loc_205694
	cmpi.w #$80,d1
	bcs.s loc_2056a8
loc_20568c:
	bclr.b #$6,$1(a0)
	rts
loc_205694:
	bset.b #$6,$1(a0)
	rts
loc_20569c:
	cmpi.w #$38,d1
	bcs.s loc_20568c
	cmpi.w #$80,d1
	bcc.s loc_205694
loc_2056a8:
	rts

sub_2056aa:
	lea (dat_20599a).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2056cc
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2056cc:
	bsr.w sub_20593c
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205744
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205712
	move.b d0,$1e(a0)

sub_2056f6:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20570a
	bpl.s loc_20570a
	cmpi.b #$fd,d0
	bge.s loc_205714
loc_20570a:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205712:
	rts
loc_205714:
	addq.b #$1,d0
	bne.s loc_205724
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20570a
loc_205724:
	addq.b #$1,d0
	bne.s loc_205738
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20570a
loc_205738:
	addq.b #$1,d0
	bne.s loc_205742
	move.b $2(a1,d1.w),$1c(a0)
loc_205742:
	rts
loc_205744:
	subq.b #$1,$1e(a0)
	bpl.s loc_205712
	addq.b #$1,d0
	bne.w loc_2057fe
	tst.b ($ff195b).l
	bne.w loc_2058c6
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20576c
	not.b d0
loc_20576c:
	btst.b #$1,$2c(a0)
	bne.s loc_20577a
	addi.b #$10,d0
	bra.s loc_20577c
loc_20577a:
	addq.b #$8,d0
loc_20577c:
	bpl.s loc_205780
	moveq #$3,d1
loc_205780:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205872
	move.w $14(a0),d2
	bpl.s loc_20579e
	neg.w d2
loc_20579e:
	btst.b #$1,$2c(a0)
	beq.s loc_2057b6
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205b9c).l,a1
	bra.s loc_2057e0
loc_2057b6:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205b76).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_2057e0
	lea (dat_205a1a).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2057e0
	lea (dat_205a12).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_2057e0:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2057ee
	moveq #$0,d2
loc_2057ee:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2056f6
	add.b d3,$1a(a0)
	rts
loc_2057fe:
	addq.b #$1,d0
	bne.s loc_20586e
	move.w $14(a0),d2
	bpl.s loc_20580a
	neg.w d2
loc_20580a:
	lea (dat_205af8).l,a1
	tst.b ($ff195b).l
	bne.s loc_205848
	lea (dat_205a2a).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20583c
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205848
	lea (dat_205ba4).l,a1
	bra.s loc_205848
loc_20583c:
	cmpi.w #$600,d2
	bcc.s loc_205848
	lea (dat_205a22).l,a1
loc_205848:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205852
	moveq #$0,d2
loc_205852:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056f6
loc_20586e:
	addq.b #$1,d0
	bne.s loc_2058b2
loc_205872:
	move.w $14(a0),d2
	bmi.s loc_20587a
	neg.w d2
loc_20587a:
	addi.w #$800,d2
	bpl.s loc_205882
	moveq #$0,d2
loc_205882:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205b0a).l,a1
	tst.b ($ff195b).l
	bne.s loc_20589c
	lea (dat_205a32).l,a1
loc_20589c:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2056f6
loc_2058b2:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2058c6:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2058d8
	not.b d0
loc_2058d8:
	addi.b #$10,d0
	bpl.s loc_2058e0
	moveq #$0,d1
loc_2058e0:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_20590e
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2057fe
loc_20590e:
	move.w $14(a0),d2
	bpl.s loc_205916
	neg.w d2
loc_205916:
	lea (dat_205af2).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205928
	lea (dat_205aec).l,a1
loc_205928:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205932
	moveq #$0,d2
loc_205932:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2056f6

sub_20593c:
	tst.b ($ff195b).l
	beq.s loc_205948
	move.b dat_20594a(pc,d0.w),d0
loc_205948:
	rts
dat_20594a:
	.incbin 22858, 80
dat_20599a:
	.incbin 22938, 120
dat_205a12:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205a1a:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205a22:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205a2a:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205a32:
	.incbin 23090, 186
dat_205aec:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205af2:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205af8:
	.incbin 23288, 18
dat_205b0a:
	.incbin 23306, 108
dat_205b76:
	.incbin 23414, 38
dat_205b9c:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205ba4:
	.incbin 23460, 56

sub_205bdc:
	tst.b (a0)
	beq.w loc_205c3e
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205c3e
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205c3e
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205c10:
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
loc_205c2a:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205c2a
	dbf d1,loc_205c10
loc_205c3e:
	rts

sub_205c40:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205cb4
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
	bne.s loc_205ca2
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205ca2:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205cb4:
	rts
loc_205cb6:
	move.w #$e,d0

sub_205cba:
	cmpi.w #$67,d0
	bne.s loc_205cc8
	move.b #$1,($ff1958).l
loc_205cc8:
	move.w d0,($a12010).l
loc_205cce:
	move.w ($a12020).l,d0
	beq.s loc_205cce
	cmp.w ($a12020).l,d0
	bne.s loc_205cce
	move.w #$0,($a12010).l
loc_205ce6:
	move.w ($a12020).l,d0
	bne.s loc_205ce6
	move.w ($a12020).l,d0
	bne.s loc_205ce6
	rts
	dc.b $00,$00

sub_205cfa:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205d16
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205d16:
	subq.b #$1,$1e(a0)
	bpl.s loc_205d56
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205d58
loc_205d32:
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
loc_205d56:
	rts
loc_205d58:
	addq.b #$1,d0
	bne.s loc_205d68
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205d32
loc_205d68:
	addq.b #$1,d0
	bne.s loc_205d7c
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205d32
loc_205d7c:
	addq.b #$1,d0
	bne.s loc_205d86
	move.b $2(a1,d1.w),$1c(a0)
loc_205d86:
	addq.b #$1,d0
	bne.s loc_205d8e
	addq.b #$2,$24(a0)
loc_205d8e:
	addq.b #$1,d0
	bne.s loc_205d9c
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205d9c:
	addq.b #$1,d0
	bne.s loc_205da4
	addq.b #$2,$25(a0)
loc_205da4:
	rts
	.incbin 23974, 336
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$20,$c(a1)
	move.w $8(a0),$2a(a1)
	move.w $c(a0),$2c(a1)
	subi.w #$18,$2c(a1)
	rts
	.incbin 24348, 152
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205fc2(pc,d0.w),d1
	jmp dat_205fc2(pc,d1.w)
dat_205fc2:
	.incbin 24514, 18
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20601c
	addq.b #$8,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$48a,$2(a0)
	andi.w #$7f,d0
	move.b d0,$33(a0)
	bra.w loc_206180
loc_20601c:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	lea (dat_206382).l,a1
	jsr (sub_205cfa).l
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_206056
	move.b #$6,$24(a0)
	addq.b #$7,$1c(a0)
	cmpi.b #$d,$1c(a0)
	beq.s loc_20609a
	bra.s loc_20609a
loc_206056:
	tst.b ($f7c7).w
	beq.s loc_206060
	addq.w #$4,$30(a0)
loc_206060:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23f71c).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	bsr.s sub_2060ee
	jsr (sub_203a42).l
	tst.b $1(a0)
	bpl.s loc_206094
	jmp (sub_203a98).l
loc_206094:
	jmp (sub_203b44).l
loc_20609a:
	bsr.s sub_2060ee
	lea (dat_206382).l,a1
	jsr (sub_205cfa).l
	jmp (sub_203a98).l
	jmp (sub_203b44).l
	cmpi.w #$c,($ff150a).l
	bhi.s loc_2060e8
	subq.w #$1,$38(a0)
	bne.s loc_2060d0
	move.b #$e,$24(a0)
	addq.b #$7,$1c(a0)
	bra.s loc_20609a
loc_2060d0:
	lea (dat_206382).l,a1
	jsr (sub_205cfa).l
	tst.b $1(a0)
	bpl.s loc_2060e8
	jmp (sub_203a98).l
loc_2060e8:
	jmp (sub_203b44).l

sub_2060ee:
	tst.w $38(a0)
	beq.s loc_206138
	subq.w #$1,$38(a0)
	bne.s loc_206138
	cmpi.b #$7,$1c(a0)
	bcc.s loc_206138
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
loc_206138:
	rts

sub_20613a:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_206172
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_206156
	move.w #$86,d0
loc_206156:
	tst.b ($ff151f).l
	beq.s loc_206162
	move.w #$87,d0
loc_206162:
	tst.b ($f7aa).w
	beq.s loc_20616c
	move.w #$8c,d0
loc_20616c:
	jsr (sub_20256e).l
loc_206172:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
loc_206180:
	tst.w $2c(a0)
	bne.w loc_206270
	cmpi.b #$6,($d024).w
	bcc.w loc_206380
	btst.b #$6,($d022).w
	beq.w loc_206380
	subq.w #$1,$38(a0)
	bpl.w loc_206296
	move.w #$3b,$38(a0)
	move.w #$1,$36(a0)
	jsr (sub_20235e).l
	andi.w #$1,d0
	move.b d0,$34(a0)
	move.w ($ff150a).l,d0
	cmpi.w #$19,d0
	beq.s loc_206202
	cmpi.w #$14,d0
	beq.s loc_206202
	cmpi.w #$f,d0
	beq.s loc_206202
	cmpi.w #$c,d0
	bhi.s loc_206202
	btst.b #$5,($ff1505).l
	bne.s loc_2061f0
	move.w #$df,d0
	jsr (sub_202570).l
loc_2061f0:
	subq.b #$1,$32(a0)
	bpl.s loc_206202
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_206202:
	subq.w #$1,($ff150a).l
	bcc.w loc_206294
	bsr.w sub_20613a
	move.b #$81,($d02c).w
	move.w #$b6,d0
	jsr (sub_202570).l
	move.b #$a,$34(a0)
	move.w #$1,$36(a0)
	move.w #$78,$2c(a0)
	move.l a0,-(a7)
	lea ($d000).w,a0
	bsr.w sub_205350
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
loc_206270:
	subq.w #$1,$2c(a0)
	bne.s loc_20627e
	move.b #$6,($d024).w
	rts
loc_20627e:
	move.l a0,-(a7)
	lea ($d000).w,a0
	jsr (sub_203a42).l
	addi.w #$10,$12(a0)
	movea.l (a7)+,a0
	bra.s loc_206296
loc_206294:
	bra.s loc_2062a6
loc_206296:
	tst.w $36(a0)
	beq.w loc_206380
	subq.w #$1,$3a(a0)
	bpl.w loc_206380
loc_2062a6:
	jsr (sub_20235e).l
	andi.w #$f,d0
	move.w d0,$3a(a0)
	jsr (sub_207af0).l
	bne.w loc_206380
	move.b #$21,$0(a1)
	move.w ($d008).w,$8(a1)
	moveq #$6,d0
	btst.b #$0,($d022).w
	beq.s loc_2062dc
	neg.w d0
	move.b #$40,$26(a1)
loc_2062dc:
	add.w d0,$8(a1)
	move.w ($d00c).w,$c(a1)
	move.b #$6,$28(a1)
	tst.w $2c(a0)
	beq.w loc_20632a
	andi.w #$7,$3a(a0)
	addi.w #$0,$3a(a0)
	move.w ($d00c).w,d0
	subi.w #$c,d0
	move.w d0,$c(a1)
	jsr (sub_20235e).l
	move.b d0,$26(a1)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	bne.s loc_206376
	move.b #$e,$28(a1)
	bra.s loc_206376
loc_20632a:
	btst.b #$7,$36(a0)
	beq.s loc_206376
	move.w #$2000,$2(a1)
	move.w ($ff150a).l,d2
	lsr.w #$1,d2
	jsr (sub_20235e).l
	andi.w #$3,d0
	bne.s loc_20635e
	bset.b #$6,$36(a0)
	bne.s loc_206376
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_20635e:
	tst.b $34(a0)
	bne.s loc_206376
	bset.b #$6,$36(a0)
	bne.s loc_206376
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_206376:
	subq.b #$1,$34(a0)
	bpl.s loc_206380
	clr.w $36(a0)
loc_206380:
	rts
dat_206382:
	.incbin 25474, 632
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206608(pc,d0.w),d0
	jmp dat_206608(pc,d0.w)
dat_206608:
	dc.b $00,$06,$00,$42,$00,$5c
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$23f5c8,$4(a0)
	move.w #$298,$2(a0)
	move.b $28(a0),$1c(a0)
	moveq #$d,d0
	move.w #$a2,d0
	cmpi.b #$2,$28(a0)
	bcs.s loc_206644
	move.w #$a1,d0
loc_206644:
	jsr (sub_202570).l
	move.w ($f646).w,$c(a0)
	addq.w #$4,$c(a0)
	lea (dat_23f5b0).l,a1
	bsr.w sub_205cfa
	jmp (sub_203a98).l
	jmp (sub_203b44).l
	.incbin 26218, 316
loc_2067a6:
	bclr.b #$7,($ff156b).l
	beq.s loc_2067f4
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2067f6(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2067ca:
	move.l (a1)+,(a2)+
	dbf d0,loc_2067ca
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2067f4:
	rts
dat_2067f6:
	.incbin 26614, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20681e(pc,d0.w),d0
	jsr dat_20681e(pc,d0.w)
	jmp (sub_203a98).l
dat_20681e:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$2068ae,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_206852
	moveq #$0,d1
loc_206852:
	move.b d1,$2a(a0)
	move.b dat_206878(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_20687a).l,a1
	jmp (sub_205cfa).l
dat_206878:
	dc.b $a0,$60
dat_20687a:
	.incbin 26746, 18

sub_20688c:
	btst.l d1,d2
	btst.l d1,d2
	btst.l d1,d2
	btst.l d1,d2
	btst.l d1,d4
	btst.l d2,d4
	btst.l d2,d4
	btst.l d2,d4
	btst.l d2,d4
	btst.l d2,d4
	btst.l d2,d6
	btst.l d3,d6
	btst.l d3,d6
	btst.l d3,d6
	btst.l d3,d6
	btst.l d3,d6
	.incbin 26796, 514

sub_206aae:
	rts
loc_206ab0:
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
	bne.s loc_206b6a
	move.b ($ff1593).l,($ff195b).l
loc_206b6a:
	tst.b ($ff1522).l
	bpl.s loc_206b80
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206b80:
	rts

sub_206b82:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206ab0
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
	bne.s loc_206c3c
	move.b ($ff1591).l,($ff195b).l
loc_206c3c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206c5e
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206c5e:
	tst.b ($ff1522).l
	bpl.s loc_206c74
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c74:
	rts

sub_206c76:
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
	bpl.s loc_206cb2
	move.b d1,d0
	bpl.s loc_206cac
	subq.b #$1,d0
loc_206cac:
	addi.b #$20,d0
	bra.s loc_206cbc
loc_206cb2:
	move.b d1,d0
	bpl.s loc_206cb8
	addq.b #$1,d0
loc_206cb8:
	addi.b #$1f,d0
loc_206cbc:
	andi.b #$c0,d0
	beq.w loc_206d8c
	cmpi.b #$80,d0
	beq.w loc_206f28
	andi.b #$38,d1
	bne.s loc_206cd4
	addq.w #$8,d2
loc_206cd4:
	cmpi.b #$40,d0
	beq.w loc_206ffe
	bra.w loc_206e60

sub_206ce0:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206f86
	cmpi.b #$80,d0
	beq.w sub_206eb0
	cmpi.b #$c0,d0
	beq.w loc_206df0

sub_206d08:
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
loc_206d6c:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206d7a
	move.b ($f768).w,d3
	exg d0,d1
loc_206d7a:
	btst.l #$0,d3
	beq.s loc_206d82
	move.b d2,d3
loc_206d82:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206d8c:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20102e).l
	move.b #$0,d2
loc_206da8:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206db4
	move.b d2,d3
loc_206db4:
	rts

sub_206db6:
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
	beq.s loc_206dee
	move.b #$0,d3
loc_206dee:
	rts
loc_206df0:
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
	bra.w loc_206d6c

sub_206e58:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206e60:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_20119e).l
	move.b #$c0,d2
	bra.w loc_206da8
	.incbin 28288, 48

sub_206eb0:
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
	bra.w loc_206d6c

sub_206f20:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f28:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_20102e).l
	move.b #$80,d2
	bra.w loc_206da8
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
	jsr (sub_20102e).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206f84
	move.b #$80,d3
loc_206f84:
	rts
loc_206f86:
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
	bra.w loc_206d6c

sub_206ff6:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206ffe:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_20119e).l
	move.b #$40,d2
	bra.w loc_206da8
	.incbin 28706, 48

sub_207052:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207076
	addi.w #$c,d3
	moveq #$a,d5
loc_207076:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_207084:
	tst.b $1(a1)
	bpl.s loc_207090
	move.b $20(a1),d0
	bne.s loc_20709c
loc_207090:
	lea $40(a1),a1
	dbf d6,loc_207084
	moveq #$0,d0
	rts
loc_20709c:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20742a).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2070c4
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2070ca
	bra.w loc_207090
loc_2070c4:
	cmp.w d4,d0
	bhi.w loc_207090
loc_2070ca:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_2070e2
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_2070e8
	bra.w loc_207090
loc_2070e2:
	cmp.w d5,d0
	bhi.w loc_207090
loc_2070e8:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_20715c
	cmpi.b #$c0,d1
	beq.w loc_20733c
	tst.b d1
	bmi.w sub_207226
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_207120
	cmpi.w #$5a,$30(a0)
	bcc.w loc_20711e
	addq.b #$2,$24(a1)
loc_20711e:
	rts
loc_207120:
	tst.w $12(a0)
	bpl.s loc_20714a
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_20715a
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_20715a
	addq.b #$4,$25(a1)
	rts
loc_20714a:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20715a
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_20715a:
	rts

sub_20715c:
	tst.b ($ff1521).l
	bne.s loc_207176
	tst.b ($ff151f).l
	bne.s loc_207176
	cmpi.b #$2,$1c(a0)
	bne.w sub_207226
loc_207176:
	tst.b $21(a1)
	beq.s loc_2071a0
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_20719e
	bset.b #$7,$22(a1)
loc_20719e:
	rts
loc_2071a0:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_2071b8
	moveq #$6,d0
loc_2071b8:
	move.w d0,$3e(a1)
	move.w dat_207218(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_2071d2
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_2071d2:
	bsr.w sub_20a242
	move.w #$96,d0
	jsr (sub_202570).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_207208
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_207210
	neg.w $12(a0)
	rts
loc_207208:
	addi.w #$100,$12(a0)
	rts
loc_207210:
	subi.w #$100,$12(a0)
	rts
dat_207218:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_207226:
	tst.b ($ff1521).l
	bne.s loc_207236
	tst.b ($ff151f).l
	beq.s loc_20723a
loc_207236:
	moveq #$ffffffff,d0
	rts
loc_20723a:
	nop
	tst.w $30(a0)
	bne.s loc_207236
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_207270
	tst.w ($ff1512).l
	beq.w loc_2072da
	jsr (sub_207af0).l
	bne.s loc_207270
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_207270:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_207286
	move.b #$0,($ff156f).l
loc_207286:
	move.b #$4,$24(a0)
	bsr.w sub_205350
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_2072b6
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_2072b6:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_2072c4
	neg.w $10(a0)
loc_2072c4:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_2072da:
	tst.w ($ff1588).l
	bne.w loc_207270

sub_2072e4:
	tst.w ($ff1906).l
	bne.s loc_207338
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_205350
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
loc_207338:
	moveq #$ffffffff,d0
	rts
loc_20733c:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_2073c4
	cmpi.b #$23,d1
	beq.w loc_2073c4
	cmpi.b #$33,d1
	beq.w loc_20741c
	cmpi.b #$3a,d1
	beq.w loc_20741c
	cmpi.b #$3b,d1
	beq.w loc_20741c
	tst.b ($f7aa).w
	beq.w loc_2073c2
	cmpi.b #$1,($f7aa).w
	beq.s loc_20738c
	cmpi.b #$4,($f7aa).w
	beq.s loc_2073ae
	cmpi.b #$5,($f7aa).w
	beq.s loc_2073bc
loc_20738c:
	cmpi.b #$3c,d1
	blt.s loc_2073c2
	cmpi.b #$3f,d1
	bgt.s loc_2073c2
	bsr.w sub_20715c
	tst.b $20(a1)
	bne.s loc_2073a6
	addq.b #$3,$21(a1)
loc_2073a6:
	clr.b $20(a1)
	bra.w loc_2073c4
loc_2073ae:
	cmpi.b #$3f,d1
	beq.s loc_2073d0
	cmpi.b #$3e,d1
	beq.s loc_2073ca
	bra.s loc_2073c2
loc_2073bc:
	cmpi.b #$3d,d1
	beq.s loc_2073ca
loc_2073c2:
	rts
loc_2073c4:
	addq.b #$1,$21(a1)
	rts
loc_2073ca:
	bsr.w sub_207226
	bra.s loc_2073c4
loc_2073d0:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20741a
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_202570).l
	jsr (sub_20613a).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20741a
	neg.w $10(a0)
loc_20741a:
	rts
loc_20741c:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207428
	addq.b #$1,$21(a1)
loc_207428:
	rts
dat_20742a:
	.incbin 29738, 126
loc_2074a8:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2074be
	move.l #$4000,(dat_207638).l
	bra.s loc_2074de
loc_2074be:
	addi.l #$2000,(dat_207638).l
	cmpi.l #$80000,(dat_207638).l
	bls.s loc_2074de
	move.l #$80000,(dat_207638).l
loc_2074de:
	move.l (dat_207638).l,d0
	btst.b #$0,($f604).w
	beq.s loc_2074f0
	sub.l d0,$c(a0)
loc_2074f0:
	btst.b #$1,($f604).w
	beq.s loc_2074fc
	add.l d0,$c(a0)
loc_2074fc:
	btst.b #$2,($f604).w
	beq.s loc_207508
	sub.l d0,$8(a0)
loc_207508:
	btst.b #$3,($f604).w
	beq.s loc_207514
	add.l d0,$8(a0)
loc_207514:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e46).l
	move.w (a1),($ff194e).l
	lea (dat_20763c).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207556
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207550
	move.b #$0,d1
loc_207550:
	move.b d1,($ff1904).l
loc_207556:
	btst.b #$7,($f605).w
	beq.s loc_207576
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207570
	add.b (a2),d1
loc_207570:
	move.b d1,($ff1904).l
loc_207576:
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
	beq.s loc_207602
	bsr.w sub_207af0
	bne.s loc_207602
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
loc_207602:
	btst.b #$4,($f605).w
	beq.s loc_207632
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207632:
	jmp (sub_203a98).l
dat_207638:
	dc.b $00,$00,$40,$00
dat_20763c:
	.incbin 30268, 674

sub_2078de:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2078ec:
	clr.l (a2)+
	dbf d0,loc_2078ec
	rts

sub_2078f4:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207902(pc,d0.w),d0
	jmp dat_207902(pc,d0.w)
dat_207902:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207ba2).l,a0
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
	bcc.s loc_207940
	moveq #$0,d6
loc_207940:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207948:
	cmp.w (a0),d6
	bls.s loc_20795a
	tst.b $4(a0)
	bpl.s loc_207956
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207956:
	addq.w #$8,a0
	bra.s loc_207948
loc_20795a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20797a
loc_207968:
	cmp.w (a0),d6
	bls.s loc_20797a
	tst.b $4(a0)
	bpl.s loc_207976
	addq.b #$1,$1(a2)
loc_207976:
	addq.w #$8,a0
	bra.s loc_207968
loc_20797a:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
loc_207990:
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207a64
	bge.s loc_207a0a
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2079e6
loc_2079b4:
	cmp.w -$8(a0),d6
	bge.s loc_2079e6
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2079ca
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2079ca:
	bsr.w sub_207a88
	bne.s loc_2079d4
	subq.w #$8,a0
	bra.s loc_2079b4
loc_2079d4:
	tst.b $4(a0)
	bpl.s loc_2079e4
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2079e4:
	addq.w #$8,a0
loc_2079e6:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2079f2:
	cmp.w -$8(a0),d6
	bgt.s loc_207a04
	tst.b -$4(a0)
	bpl.s loc_207a00
	subq.b #$1,(a2)
loc_207a00:
	subq.w #$8,a0
	bra.s loc_2079f2
loc_207a04:
	move.l a0,($f770).w
	rts
loc_207a0a:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207a1e:
	cmp.w (a0),d6
	bls.s loc_207a40
	tst.b $4(a0)
	bpl.s loc_207a2c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207a2c:
	bsr.w sub_207a88
	beq.s loc_207a1e
	tst.b $4(a0)
	bpl.s loc_207a40
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207a40:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207a60
loc_207a4e:
	cmp.w (a0),d6
	bls.s loc_207a60
	tst.b $4(a0)
	bpl.s loc_207a5c
	addq.b #$1,$1(a2)
loc_207a5c:
	addq.w #$8,a0
	bra.s loc_207a4e
loc_207a60:
	move.l a0,($f774).w
loc_207a64:
	rts

sub_207a66:
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

sub_207a88:
	bsr.s sub_207a66
	beq.s loc_207a9a
	tst.b $4(a0)
	bpl.s loc_207aa0
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207aa0
loc_207a9a:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207aa0:
	bsr.w sub_207af0
	bne.s loc_207aee
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
	bpl.s loc_207ad0
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207ad0:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207ae2
	nop
	nop
	nop
	nop
loc_207ae2:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207aee:
	rts

sub_207af0:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207af8:
	tst.b (a1)
	beq.s loc_207b04
	lea $40(a1),a1
	dbf d0,loc_207af8
loc_207b04:
	rts

sub_207b06:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207b24
loc_207b18:
	tst.b (a1)
	beq.s loc_207b24
	lea $40(a1),a1
	dbf d0,loc_207b18
loc_207b24:
	rts
loc_207b26:
	move.w $8(a0),d0
loc_207b2a:
	tst.b $1(a0)
	bmi.s loc_207b94
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207b94
loc_207b48:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_207b8a
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207b82
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_207b7a
	moveq #$0,d1
	bra.s loc_207b82
loc_207b7a:
	cmpi.w #$3,d1
	bcs.s loc_207b82
	moveq #$2,d1
loc_207b82:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_207b8a:
	jsr (sub_203b44).l
	moveq #$1,d0
	rts
loc_207b94:
	btst.b #$7,($ff152e).l
	bne.s loc_207b48
	moveq #$0,d0
	rts
dat_207ba2:
	.incbin 31650, 2906

sub_2086fc:
	btst.b #$3,$22(a0)
	beq.s loc_20876c
	btst.b #$3,$22(a1)
	beq.s loc_20876c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20876c
	tst.b $2a(a1)
	beq.s loc_20872e
	move.w #$ab,d0
	jsr (sub_202570).l
loc_20872e:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_20875a
	cmpi.b #$17,$1c(a1)
	beq.s loc_20875a
	bclr.b #$0,$2c(a1)
loc_20875a:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20876c
	bclr.b #$1,$22(a1)
loc_20876c:
	rts

sub_20876e:
	cmpi.b #$4,$24(a1)
	bne.s loc_208780
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208780:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_2087e0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2087a2
	bclr.b #$3,$22(a0)
	bra.w sub_2086fc
loc_2087a2:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_2087e0
	tst.b ($ff195b).l
	beq.s loc_2087ca
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_2087da
loc_2087ca:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_2087da:
	move.b #$0,$1c(a1)
loc_2087e0:
	bset.b #$3,$22(a1)
	beq.s loc_208802
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_20883a
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208802:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_20882e
	cmpi.b #$2,$24(a0)
	beq.s loc_208834
loc_20882e:
	move.w $10(a1),$14(a1)
loc_208834:
	bclr.b #$1,$22(a1)
loc_20883a:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_20884a:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208afe
	btst.b #$6,$2c(a1)
	bne.w loc_208afe
	cmpi.b #$6,$24(a1)
	bcc.w loc_208afe
	tst.b $0(a1)
	beq.w loc_208afe
	tst.b $1(a0)
	bpl.w loc_208afe
	tst.b ($ff1906).l
	bne.w loc_208afe
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208afe
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208afe
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2088b8
	btst.b #$3,$22(a0)
	bne.s loc_2088ca
	bra.w loc_208afe
loc_2088b8:
	cmpi.b #$1,$25(a0)
	bne.s loc_2088ca
	tst.w $12(a1)
	beq.s loc_2088ca
	bmi.w loc_208afe
loc_2088ca:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208afe
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208afe
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208900
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208900:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_20890e
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_20890e:
	cmp.w d4,d5
	bcs.w loc_2089a2
	cmpi.b #$1,$25(a0)
	beq.w loc_208afe
	cmpi.b #$a,$0(a0)
	bne.s loc_208930
	btst.b #$1,$22(a1)
	bne.w loc_208afe
loc_208930:
	cmpi.b #$4,d5
	bls.w loc_208afe
	bsr.w sub_208b4e
	move.l d0,-(a7)
	bsr.w sub_2086fc
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20895a
	tst.w $10(a1)
	beq.s loc_20898a
	bpl.s loc_208962
	bra.s loc_20898a
loc_20895a:
	tst.w $10(a1)
	beq.s loc_20898a
	bpl.s loc_20898a
loc_208962:
	bsr.w sub_208b0e
	btst.b #$1,$22(a1)
	bne.s loc_208980
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208980:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20898a:
	bsr.w sub_208bc4
	bsr.w sub_208b0e
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2089a2:
	cmpi.b #$19,$0(a0)
	bne.s loc_2089b4
	btst.b #$2,$22(a1)
	bne.w loc_208afe
loc_2089b4:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_2089ca
	bmi.w loc_208a9a
loc_2089ca:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_2089dc
	tst.w $12(a1)
	beq.s loc_2089dc
	bmi.w loc_208afe
loc_2089dc:
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
	beq.s loc_208a28
	bpl.s loc_208a08
	neg.b d0
loc_208a08:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c76).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a28
	tst.w $10(a0)
	bpl.s loc_208a24
	neg.w d1
loc_208a24:
	add.w d1,$8(a1)
loc_208a28:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208a92
	tst.w $12(a0)
	bmi.s loc_208a66
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d08).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a66
	add.w d1,$c(a1)
	bra.w loc_208afe
loc_208a66:
	tst.w $12(a0)
	bpl.s loc_208a92
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206f20).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a92
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072e4).l
	movem.l (a7)+,a0-a1
	bra.s loc_208afe
loc_208a92:
	bsr.w sub_20876e
	moveq #$1,d0
	rts
loc_208a9a:
	cmpi.b #$1,$25(a0)
	beq.s loc_208afe
	cmpi.b #$9,$0(a0)
	beq.s loc_208afe
	cmpi.b #$a,$0(a0)
	bne.s loc_208ac4
	cmpi.b #$2,$25(a0)
	beq.s loc_208ae4
	btst.b #$1,$1(a0)
	bne.s loc_208ae4
	bra.s loc_208afe
loc_208ac4:
	btst.b #$1,$22(a1)
	bne.s loc_208ae4
	tst.w $12(a0)
	beq.s loc_208ae4
	bmi.s loc_208ae4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072e4).l
	movem.l (a7)+,a0-a1
loc_208ae4:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208bc4
	bsr.w sub_2086fc
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208afe:
	bsr.w sub_208bc4
	bsr.w sub_2086fc
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208b0e:
	tst.w $10(a0)
	beq.s loc_208b4c
	cmpi.b #$a,$0(a0)
	beq.s loc_208b4c
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208b28
	neg.b d0
loc_208b28:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c76).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208b4c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072e4).l
	movem.l (a7)+,a0-a1
loc_208b4c:
	rts

sub_208b4e:
	cmpi.b #$a,$0(a0)
	bne.s loc_208b5e
	move.b #$0,$20(a1)
	rts
loc_208b5e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208bb2
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208bc2
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208b80
	tst.w $10(a2)
	beq.s loc_208bc2
loc_208b80:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208b92
	cmp.w $8(a2),d1
	bcs.s loc_208bc2
	bra.s loc_208b98
loc_208b92:
	cmp.w $8(a2),d1
	bcc.s loc_208bc2
loc_208b98:
	cmpi.b #$15,$0(a0)
	beq.s loc_208bc2
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2072e4).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208bb2:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208bc2:
	rts

sub_208bc4:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208bde
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208bde
	move.b #$0,$20(a1)
loc_208bde:
	rts
	.incbin 35808, 374
loc_208d56:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d64(pc,d0.w),d0
	jmp dat_208d64(pc,d0.w)
dat_208d64:
	.incbin 36196, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208d56
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208dba
	tst.b $1(a0)
	bpl.s loc_208dc2
loc_208dba:
	move.w dat_208e14(pc,d0.w),d1
	jsr dat_208e14(pc,d1.w)
loc_208dc2:
	bsr.w sub_203a98
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208df4
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208df4:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b44
	rts
dat_208e14:
	.incbin 36372, 26
	addq.b #$2,$24(a0)
	move.l #$209196,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208e84
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20919c,$4(a0)
	bra.s loc_208ec6
loc_208e84:
	btst.l #$3,d0
	beq.s loc_208eb2
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2091e6,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20c0fc).l
	move.l (a7)+,d0
	bra.s loc_208ec6
loc_208eb2:
	btst.b #$1,$1(a0)
	beq.s loc_208ec6
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208ec6:
	btst.l #$1,d0
	beq.s loc_208ed2
	bset.b #$5,$2(a0)
loc_208ed2:
	andi.w #$2,d0
	move.w dat_208ede(pc,d0.w),$30(a0)
	rts
dat_208ede:
	.incbin 36574, 918
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209282(pc,d0.w),d1
	jmp dat_209282(pc,d1.w)
dat_209282:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20928c:
	.incbin 37516, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2092e4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2092dc
	moveq #$0,d1
	bra.s loc_2092e4
loc_2092dc:
	cmpi.w #$3,d1
	bcs.s loc_2092e4
	moveq #$2,d1
loc_2092e4:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209300
	moveq #$6,d1
loc_209300:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20928c).l,a1
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
	beq.s loc_209350
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209348
	moveq #$0,d0
	bra.s loc_209350
loc_209348:
	cmpi.w #$3,d0
	bcs.s loc_209350
	moveq #$2,d0
loc_209350:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20941e
	dbf d0,loc_209350
	bclr.b #$7,(a2)
	bra.s loc_2093a6
loc_209362:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20938e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209386
	moveq #$0,d0
	bra.s loc_20938e
loc_209386:
	cmpi.w #$3,d0
	bcs.s loc_20938e
	moveq #$2,d0
loc_20938e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_20941e
	dbf d0,loc_20938e
	bclr.b #$7,(a2)
	bsr.w sub_207b06
	bne.w loc_20942a
loc_2093a6:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$2096f0,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2093fc
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2093fc
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2093fc:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_20941e:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209362
loc_20942a:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209450
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209448
	moveq #$0,d0
	bra.s loc_209450
loc_209448:
	cmpi.w #$3,d0
	bcs.s loc_209450
	moveq #$2,d0
loc_209450:
	lea $1(a2),a3
loc_209454:
	btst.b #$0,-(a3)
	bne.w sub_203b44
	dbf d0,loc_209454
	tst.b $1(a0)
	bmi.s loc_209484
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_2094fe
loc_209484:
	tst.w ($ff190e).l
	bne.s loc_209494
	move.b ($ff1913).l,$1a(a0)
loc_209494:
	bra.w sub_203a98
	.incbin 38040, 102
loc_2094fe:
	bra.w sub_203b44
	.incbin 38146, 888
loc_20987a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2098a8(pc,d0.w),d0
	jsr dat_2098a8(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_2098a6
	cmpi.w #$5a,($f786).w
	bcs.s loc_2098a0
	btst.b #$0,($ff1505).l
	bne.s loc_2098a6
loc_2098a0:
	jmp (sub_203a98).l
loc_2098a6:
	rts
dat_2098a8:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209e82,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_2098dc
	move.b #$13,$1a(a0)
loc_2098dc:
	rts
loc_2098de:
	tst.b ($ff0f01).l
	beq.s loc_2098ec
	jmp (sub_203b44).l
loc_2098ec:
	cmpi.b #$a,$28(a0)
	beq.w loc_20987a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209910(pc,d0.w),d0
	jsr dat_209910(pc,d0.w)
	jsr (sub_203a98).l
	jmp (loc_207b26).l
dat_209910:
	.incbin 39184, 282

sub_209a2a:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a62
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209a5a
	moveq #$0,d1
	bra.s loc_209a62
loc_209a5a:
	cmpi.w #$3,d1
	bcs.s loc_209a62
	moveq #$2,d1
loc_209a62:
	add.w d1,d0
	rts

sub_209a66:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a88
	tst.b ($ff1956).l
	beq.s loc_209a80
	tst.b $29(a0)
	bne.s loc_209a88
	rts
loc_209a80:
	tst.b $29(a0)
	beq.s loc_209a88
	rts
loc_209a88:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20884a).l
	tst.b $28(a0)
	bne.s loc_209aaa
	tst.b ($ff0f01).l
	beq.s loc_209aaa
	jmp (loc_207b26).l
loc_209aaa:
	cmpi.b #$8,$28(a0)
	bcc.w loc_2098de
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209ac2(pc,d0.w),d1
	jmp dat_209ac2(pc,d1.w)
dat_209ac2:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209e82,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b0c
	tst.b $29(a0)
	bne.s loc_209b0c
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209b0c:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209a2a
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209b38
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209b38:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209b92
	move.b $25(a0),d0
	beq.s loc_209b72
	bsr.w sub_2039e0
	jsr (sub_206db6).l
	tst.w d1
	bpl.w loc_209b80
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209b80
loc_209b72:
	tst.b $1(a0)
	bpl.s loc_209b80
	lea ($d000).w,a1
	bsr.w sub_209a66
loc_209b80:
	tst.w ($ff190e).l
	bne.s loc_209b92
	lea (dat_209dfa).l,a1
	bsr.w sub_205cfa
loc_209b92:
	bsr.w sub_203a98
	jmp (loc_207b26).l
	.incbin 39836, 606
dat_209dfa:
	.incbin 40442, 586
loc_20a044:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a058(pc,d0.w),d0
	jsr dat_20a058(pc,d0.w)
	jmp (sub_203a98).l
dat_20a058:
	.incbin 41048, 146
	tst.b $28(a0)
	bmi.w loc_20a044
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a100(pc,d0.w),d0
	jmp dat_20a100(pc,d0.w)
dat_20a100:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a19a,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a130
	move.b #$3,$1a(a0)
	bra.s loc_20a150
loc_20a130:
	tst.w ($ff1588).l
	beq.s loc_20a13e
	move.b #$2,$1a(a0)
loc_20a13e:
	tst.b $28(a0)
	beq.s loc_20a150
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a150:
	tst.b $28(a0)
	bne.s loc_20a194
	tst.b $29(a0)
	beq.s loc_20a180
	tst.w ($ff1512).l
	beq.s loc_20a16c
	bclr.b #$5,$2(a0)
	bra.s loc_20a194
loc_20a16c:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a194
	eori.b #$20,$2(a0)
	bra.s loc_20a194
loc_20a180:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a194
	move.b #$2,$1a(a0)
loc_20a194:
	jmp (sub_203a98).l
	.incbin 41370, 168

sub_20a242:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a25e
	move.l d1,(a3)
loc_20a25e:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a288
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205cba).l
loc_20a288:
	rts
loc_20a28a:
	tst.w ($ff1588).l
	beq.s loc_20a2e0
	bsr.w sub_20a4dc
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
	lea (dat_20a63c).l,a2
	moveq #$2,d6
	bsr.w sub_20a694
	bra.w loc_20a33a
loc_20a2e0:
	tst.b ($ff1511).l
	beq.s loc_20a304
	bpl.s loc_20a2ee
	bsr.w sub_20a486
loc_20a2ee:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a576
loc_20a304:
	tst.b ($ff150f).l
	beq.s loc_20a33a
	bpl.s loc_20a312
	bsr.w sub_20a472
loc_20a312:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a336
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a336:
	bsr.w sub_20a56c
loc_20a33a:
	tst.w ($ff1588).l
	bne.w loc_20a3e6
	tst.b ($ff1510).l
	beq.w loc_20a3e6
	tst.w ($f63a).w
	bne.w loc_20a3e6
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a444
	tst.b ($f7cc).w
	bne.s loc_20a390
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a390
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a390
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a390
	move.b #$9,(a1)
loc_20a390:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a682
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a68c
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a3e2
	move.w #$63,d1
loc_20a3e2:
	bsr.w sub_20a68c
loc_20a3e6:
	tst.b ($ff150e).l
	beq.s loc_20a3f8
	clr.b ($ff150e).l
	bsr.w sub_20a662
loc_20a3f8:
	tst.b ($f7d6).w
	beq.s loc_20a442
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a418
	move.l #$6d400001,d0
loc_20a418:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a4fa
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a438
	move.l #$6e800001,d0
loc_20a438:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a4fa
loc_20a442:
	rts
loc_20a444:
	btst.b #$7,($ff152e).l
	bne.s loc_20a470
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_2072e4
	move.b #$1,($ff150c).l
loc_20a470:
	rts

sub_20a472:
	move.l #$73600002,($c00004).l
	lea dat_20a4d8(pc),a2
	move.w #$2,d2
	bra.s loc_20a4a2

sub_20a486:
	lea ($c00000).l,a6
	bsr.w sub_20a662
	move.l #$70600002,($c00004).l
	lea dat_20a4d0(pc),a2
	move.w #$6,d2
loc_20a4a2:
	lea (dat_238442).l,a1
loc_20a4a8:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a4c4
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a4b8:
	move.l (a3)+,(a6)
	dbf d1,loc_20a4b8
loc_20a4be:
	dbf d2,loc_20a4a8
	rts
loc_20a4c4:
	move.l #$0,(a6)
	dbf d1,loc_20a4c4
	bra.s loc_20a4be
dat_20a4d0:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a4d8:
	dc.b $ff,$ff,$00,$00

sub_20a4dc:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a658
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a658

sub_20a4fa:
	lea (dat_20a634).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a50a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a50e:
	sub.l d3,d1
	bcs.s loc_20a516
	addq.w #$1,d2
	bra.s loc_20a50e
loc_20a516:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a520
	move.w #$1,d4
loc_20a520:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a52c
	tst.w d6
	bne.s loc_20a55e
loc_20a52c:
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
loc_20a552:
	addi.l #$400000,d0
	dbf d6,loc_20a50a
	rts
loc_20a55e:
	moveq #$f,d5
loc_20a560:
	move.l #$0,(a6)
	dbf d5,loc_20a560
	bra.s loc_20a552

sub_20a56c:
	lea (dat_20a63c).l,a2
	moveq #$2,d6
	bra.s loc_20a57e

sub_20a576:
	lea (dat_20a630).l,a2
	moveq #$5,d6
loc_20a57e:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a586:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a58a:
	sub.l d3,d1
	bcs.s loc_20a592
	addq.w #$1,d2
	bra.s loc_20a58a
loc_20a592:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a59c
	move.w #$1,d4
loc_20a59c:
	tst.w d4
	beq.s loc_20a5ca
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
loc_20a5ca:
	addi.l #$400000,d0
	dbf d6,loc_20a586
	rts
	.incbin 42454, 90
dat_20a630:
	dc.b $00,$01,$86,$a0
dat_20a634:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a63c:
	dc.b $00,$00,$00,$64
dat_20a640:
	dc.b $00,$00,$00,$0a
dat_20a644:
	dc.b $00,$00,$00,$01
dat_20a648:
	.incbin 42568, 16

sub_20a658:
	moveq #$3,d6
	lea (dat_20a648).l,a2
	bra.s sub_20a694

sub_20a662:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a678
	moveq #$9,d1
loc_20a678:
	lea (dat_20a644).l,a2
	moveq #$0,d6
	bra.s sub_20a694

sub_20a682:
	lea (dat_20a644).l,a2
	moveq #$0,d6
	bra.s sub_20a694

sub_20a68c:
	lea (dat_20a640).l,a2
	moveq #$1,d6

sub_20a694:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a69c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a6a0:
	sub.l d3,d1
	bcs.s loc_20a6a8
	addq.w #$1,d2
	bra.s loc_20a6a0
loc_20a6a8:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a6b2
	move.w #$1,d4
loc_20a6b2:
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
	dbf d6,loc_20a69c
	rts
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6fa(pc,d0.w),d1
	jmp dat_20a6fa(pc,d1.w)
dat_20a6fa:
	dc.b $00,$0c,$00,$6a,$00,$84,$01,$3a
	dc.b $01,$58,$01,$5c
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	move.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20a74a
	addq.b #$8,$24(a0)
	andi.w #$7f,d0
	move.b d0,$32(a0)
	move.b d0,$33(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20a856
loc_20a74a:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	jsr (sub_20235e).l
	move.b d0,$26(a0)
	lea (dat_20a9ee).l,a1
	jsr (sub_205cfa).l
	cmpi.b #$6,$1a(a0)
	bne.s loc_20a77e
	move.b #$1,$2e(a0)
loc_20a77e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a796
loc_20a788:
	move.b #$6,$24(a0)
	addq.b #$3,$1c(a0)
	bra.w loc_20a834
loc_20a796:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23f71c).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20a81e
	bsr.w sub_20a9b4
	beq.s loc_20a81e
	bsr.w sub_20613a
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
	beq.w loc_20a788
	bclr.b #$2,$22(a6)
	move.b #$13,$16(a6)
	move.b #$9,$17(a6)
	subq.w #$5,$c(a6)
	bra.w loc_20a788
loc_20a81e:
	bsr.w sub_203a42
	tst.b $1(a0)
	bpl.s loc_20a82e
	jmp (sub_203a98).l
loc_20a82e:
	jmp (sub_203b44).l
loc_20a834:
	lea (dat_20a9ee).l,a1
	jsr (sub_205cfa).l
	tst.b $1(a0)
	bpl.s loc_20a84c
	jmp (sub_203a98).l
loc_20a84c:
	jmp (sub_203b44).l
	dc.b $60,$00,$92,$f0
loc_20a856:
	tst.w $36(a0)
	bne.s loc_20a8b8
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcc.w loc_20a96a
	tst.b $1(a0)
	bpl.w loc_20a96a
	subq.w #$1,$38(a0)
	bpl.w loc_20a95e
	move.w #$1,$36(a0)
loc_20a87e:
	jsr (sub_20235e).l
	move.w d0,d1
	andi.w #$7,d0
	cmpi.w #$6,d0
	bcc.s loc_20a87e
	move.b d0,$34(a0)
	andi.w #$c,d1
	lea (dat_20a9a2).l,a1
	adda.w d1,a1
	move.l a1,$3c(a0)
	subq.b #$1,$32(a0)
	bpl.s loc_20a8b6
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20a8b6:
	bra.s loc_20a8c0
loc_20a8b8:
	subq.w #$1,$38(a0)
	bpl.w loc_20a95e
loc_20a8c0:
	jsr (sub_20235e).l
	andi.w #$1f,d0
	move.w d0,$38(a0)
	tst.b $1(a0)
	bpl.s loc_20a942
	bsr.w sub_207af0
	bne.s loc_20a942
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
	beq.s loc_20a942
	jsr (sub_20235e).l
	andi.w #$3,d0
	bne.s loc_20a92e
	bset.b #$6,$36(a0)
	bne.s loc_20a942
	move.b #$2,$28(a1)
loc_20a92e:
	tst.b $34(a0)
	bne.s loc_20a942
	bset.b #$6,$36(a0)
	bne.s loc_20a942
	move.b #$2,$28(a1)
loc_20a942:
	subq.b #$1,$34(a0)
	bpl.s loc_20a95e
	jsr (sub_20235e).l
	andi.w #$7f,d0
	addi.w #$80,d0
	add.w d0,$38(a0)
	clr.w $36(a0)
loc_20a95e:
	lea (dat_20a9ee).l,a1
	jsr (sub_205cfa).l
loc_20a96a:
	tst.b $1(a0)
	bmi.s loc_20a98e
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203b44
loc_20a98e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.w sub_203a98
	bclr.b #$7,$1(a0)
	rts
dat_20a9a2:
	.incbin 43426, 18

sub_20a9b4:
	tst.b $2c(a6)
	bmi.s loc_20a9ea
	move.w $8(a6),d0
	move.w $8(a0),d1
	subi.w #$10,d1
	cmp.w d0,d1
	bcc.s loc_20a9ea
	addi.w #$20,d1
	cmp.w d0,d1
	bcs.s loc_20a9ea
	move.w $c(a6),d0
	move.w $c(a0),d1
	cmp.w d0,d1
	bcc.s loc_20a9ea
	addi.w #$10,d1
	cmp.w d0,d1
	bcs.s loc_20a9ea
	moveq #$1,d0
	rts
loc_20a9ea:
	moveq #$0,d0
	rts
dat_20a9ee:
	.incbin 43502, 708
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20acd0(pc,d0.w),d0
	jsr dat_20acd0(pc,d0.w)
	cmpi.b #$4,$24(a0)
	beq.s loc_20acce
	jmp (sub_203a98).l
loc_20acce:
	rts
dat_20acd0:
	.incbin 44240, 1936
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b46e(pc,d0.w),d0
	jmp dat_20b46e(pc,d0.w)
dat_20b46e:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205cba).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20b544,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20b4ca
	tst.b ($ff1508).l
	beq.s loc_20b4d2
	move.l #$20b548,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20b4d2
loc_20b4ca:
	tst.b ($ff1508).l
	bne.s loc_20b4e2
loc_20b4d2:
	bset.b #$7,($ff156b).l
	jsr (sub_207af0).l
	beq.s loc_20b4e8
loc_20b4e2:
	jmp (sub_203b44).l
loc_20b4e8:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20b52a
	move.w #$6e,d0
	jmp (sub_205cba).l
loc_20b52a:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b53e
	bge.s loc_20b53a
	neg.w d0
loc_20b53a:
	add.w d0,$8(a0)
loc_20b53e:
	jmp (sub_203a98).l
	.incbin 46404, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b58a(pc,d0.w),d0
	jmp dat_20b58a(pc,d0.w)
dat_20b58a:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20bc88,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20bc48).l,a2
loc_20b5d8:
	jsr (sub_207af0).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20bc88,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b62a
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b62a:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b5d8
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b652
	bge.s loc_20b648
	neg.w d0
loc_20b648:
	add.w d0,$a(a0)
	jmp (sub_203a98).l
loc_20b652:
	addq.b #$4,$24(a0)
	jmp (sub_203a98).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b676
	bge.s loc_20b66c
	neg.w d0
loc_20b66c:
	add.w d0,$8(a0)
	jmp (sub_203a98).l
loc_20b676:
	addq.b #$4,$24(a0)
	jmp (sub_203a98).l
	tst.b $1e(a0)
	beq.s loc_20b690
	subq.b #$1,$1e(a0)
	jmp (sub_203a98).l
loc_20b690:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b6aa
	bge.s loc_20b6a0
	neg.w d0
loc_20b6a0:
	add.w d0,$a(a0)
	jmp (sub_203a98).l
loc_20b6aa:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_20273a).l
	tst.b $1e(a0)
	beq.s loc_20b6cc
	subq.b #$1,$1e(a0)
	jmp (sub_203a98).l
loc_20b6cc:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b6e6
	bge.s loc_20b6dc
	neg.w d0
loc_20b6dc:
	add.w d0,$8(a0)
	jmp (sub_203a98).l
loc_20b6e6:
	jmp (sub_203b44).l
	tst.l ($f680).w
	bne.s loc_20b700
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203b44).l
loc_20b700:
	rts
	.incbin 46850, 1350
dat_20bc48:
	.incbin 48200, 320
dat_20bd88:
	.incbin 48520, 772
loc_20c08c:
	lea dat_20c0de(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c098:
	cmp.w (a1)+,d0
	bcs.s loc_20c0a0
	addq.b #$2,d1
	bra.s loc_20c098
loc_20c0a0:
	move.b d1,($ff1574).l
	move.w dat_20c0f2(pc,d1.w),d0
	jmp (sub_20273a).l

sub_20c0b0:
	lea dat_20c0de(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20c0bc:
	cmp.w (a1)+,d0
	bcs.s loc_20c0c4
	addq.b #$2,d1
	bra.s loc_20c0bc
loc_20c0c4:
	cmp.b ($ff1574).l,d1
	bne.s loc_20c0ce
	rts
loc_20c0ce:
	move.b d1,($ff1574).l
	move.w dat_20c0e8(pc,d1.w),d0
	jmp (loc_20276c).l
dat_20c0de:
	dc.b $06,$80,$0a,$80,$12,$80,$16,$80
	dc.b $ff,$ff
dat_20c0e8:
	dc.b $00,$06,$00,$07,$00,$06,$00,$08
	dc.b $00,$06
dat_20c0f2:
	dc.b $00,$02,$00,$04,$00,$02,$00,$05
	dc.b $00,$02

sub_20c0fc:
	rts
	.incbin 49406, 408
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c2a6(pc,d0.w),d0
	jmp dat_20c2a6(pc,d0.w)
dat_20c2a6:
	.incbin 49830, 26

sub_20c2c0:
	movem.l d2-d3,-(a7)
	lea ($d000).w,a1
	jsr (sub_20884a).l
	movem.l (a7)+,d2-d3
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c2f2(pc,d0.w),d0
	jsr dat_20c2f2(pc,d0.w)
	jsr (sub_203a98).l
	move.w $36(a0),d0
	jmp (loc_207b2a).l
dat_20c2f2:
	dc.b $00,$04,$00,$a2
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c3de,$4(a0)
	move.w $c(a0),d0
	addi.w #$40,d0
	move.w d0,$32(a0)
	move.b #$10,$19(a0)
	move.b #$40,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20c36c
	move.w $8(a0),$36(a0)
	moveq #$1,d1
	moveq #$5,d2
loc_20c33c:
	jsr (sub_207af0).l
	bne.s loc_20c366
	move.b #$23,$0(a1)
	move.b #$1,$28(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w $36(a0),$36(a1)
	move.b d1,$3c(a1)
loc_20c366:
	addq.b #$1,d1
	dbf d2,loc_20c33c
loc_20c36c:
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	lea dat_20c386(pc,d0.w),a1
	move.b (a1)+,$3a(a0)
	move.b (a1)+,d0
	ext.w d0
	add.w d0,$8(a0)
	bra.s loc_20c394
dat_20c386:
	dc.b $c0,$00,$a8,$e0,$90,$c0,$78,$a0
	dc.b $d8,$20,$f0,$40,$08,$60
loc_20c394:
	moveq #$6,d2
	moveq #$0,d3
loc_20c398:
	tst.w $12(a0)
	bpl.s loc_20c3a2
	bsr.w sub_20c2c0
loc_20c3a2:
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
	bmi.s loc_20c3dc
	bsr.w sub_20c2c0
loc_20c3dc:
	rts
	.incbin 50142, 24
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c414(pc,d0.w),d0
	jsr dat_20c414(pc,d0.w)
	jsr (sub_203a98).l
	move.w $36(a0),d0
	jmp (loc_207b2a).l
dat_20c414:
	dc.b $00,$04,$00,$46
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c462,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),d0
	subi.w #$50,d0
	move.w d0,$32(a0)
	move.b #$20,$19(a0)
	move.b #$60,$16(a0)
	move.b #$40,$3a(a0)
	moveq #$6,d2
	moveq #$4,d3
	bra.w loc_20c398
	.incbin 50274, 64
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c4c0(pc,d0.w),d0
	jsr dat_20c4c0(pc,d0.w)
	jsr (sub_203a98).l
	move.w $36(a0),d0
	jmp (loc_207b2a).l
dat_20c4c0:
	.incbin 50368, 2060
loc_20cccc:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20884a).l
loc_20ccde:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20ccfc
	rts
loc_20ccfc:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20cd20
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20cd20:
	jmp (sub_203b44).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cd3e(pc,d0.w),d0
	jsr dat_20cd3e(pc,d0.w)
	jsr (sub_203a98).l
	bra.w loc_20ccde
dat_20cd3e:
	.incbin 52542, 1136
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20d2ac,$4(a0)
	move.w $8(a0),$36(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20d21c
	moveq #$1,d1
	moveq #$3,d2
loc_20d1e8:
	jsr (sub_207af0).l
	bne.s loc_20d216
	move.b #$24,$0(a1)
	move.b #$5,$28(a1)
	move.b d1,$3c(a1)
	move.w $8(a0),$8(a1)
	moveq #$0,d0
	move.b d1,d0
	mulu.w #$40,d0
	add.w $c(a0),d0
	move.w d0,$c(a1)
loc_20d216:
	addq.b #$1,d1
	dbf d2,loc_20d1e8
loc_20d21c:
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	lea dat_20d234(pc,d0.w),a1
	move.b (a1)+,d0
	add.w d0,$8(a0)
	move.b (a1)+,$3b(a0)
	rts
dat_20d234:
	.incbin 53812, 144
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d2dc(pc,d0.w),d0
	jsr dat_20d2dc(pc,d0.w)
	jsr (sub_203a98).l
	bra.w loc_20ccde
dat_20d2dc:
	dc.b $00,$04,$00,$b4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20d3ce,$4(a0)
	move.b #$10,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20d35a
	move.w $8(a0),d0
	move.w d0,$36(a0)
	moveq #$1,d1
	moveq #$2,d2
loc_20d316:
	jsr (sub_207af0).l
	bne.s loc_20d354
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
loc_20d354:
	addq.b #$1,d1
	dbf d2,loc_20d316
loc_20d35a:
	moveq #$0,d0
	move.b $3c(a0),d0
	move.b d0,$1a(a0)
	addq.b #$1,d0
	move.b d0,$3b(a0)
	move.b $3c(a0),d0
	moveq #$0,d1
loc_20d370:
	addi.b #$10,d1
	dbf d0,loc_20d370
	move.b d1,$19(a0)
	andi.w #$ff,d1
	move.w $8(a0),d0
	add.w d1,d0
	move.w d0,$32(a0)
	move.b #$80,$3a(a0)
	move.w $8(a0),-(a7)
	moveq #$0,d0
	move.b $3a(a0),d0
	jsr (sub_2006d8).l
	moveq #$0,d2
	moveq #$0,d3
	move.b $3b(a0),d2
	beq.s loc_20d3b0
loc_20d3aa:
	add.w d0,d3
	subq.b #$1,d2
	bne.s loc_20d3aa
loc_20d3b0:
	asr.w #$4,d3
	move.w d3,d0
	add.w $32(a0),d0
	move.w d0,$8(a0)
	move.w (a7)+,d1
	sub.w d1,d0
	asl.w #$8,d0
	move.w d0,$10(a0)
	addq.b #$1,$3a(a0)
	bra.w loc_20cccc
	.incbin 54222, 3928
loc_20e326:
	lea (dat_20e500).l,a1
	jsr (sub_205cfa).l
	jsr (sub_203a98).l
	move.w $3e(a0),d0
	jmp (loc_207b2a).l
	.incbin 58178, 436
	move.w #$1f,$32(a0)
	bra.w loc_20e326
dat_20e500:
	.incbin 58624, 48
	jsr (sub_20f7e0).l
	tst.b $24(a0)
	bmi.w loc_20e604
	bne.w loc_20e694
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20e76e(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e58a
	addi.w #$2000,$2(a0)
loc_20e58a:
	lea dat_20e71e(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20e59a
	lea dat_20e746(pc),a1
loc_20e59a:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20e5e8
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20e5e6
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20e5e6:
	rts
loc_20e5e8:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20e604:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20e616
	tst.b $3f(a1)
	beq.s loc_20e61c
loc_20e616:
	jmp (sub_203b44).l
loc_20e61c:
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
	bne.s loc_20e684
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20e67e
	move.b #$5,$18(a0)
	bra.s loc_20e684
loc_20e67e:
	move.b #$3,$18(a0)
loc_20e684:
	lea dat_20e6f8(pc),a1
	jsr (sub_205cfa).l
	jmp (sub_203a98).l
loc_20e694:
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
	bmi.s loc_20e6ce
	cmpi.l #$10000,$30(a0)
	blt.s loc_20e6e2
loc_20e6ce:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e6e2:
	lea dat_20e6f8(pc),a1
	jsr (sub_205cfa).l
	jsr (sub_203a98).l
	jmp (loc_207b26).l
dat_20e6f8:
	.incbin 59128, 38
dat_20e71e:
	.incbin 59166, 40
dat_20e746:
	.incbin 59206, 40
dat_20e76e:
	.incbin 59246, 598
	tst.b $24(a0)
	bne.s loc_20ea08
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20ea2c,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20ea1e(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20ea08:
	lea ($d000).w,a1
	jsr (sub_20884a).l
	jsr (sub_203a98).l
	jmp (loc_207b26).l
dat_20ea1e:
	.incbin 59934, 408
	cmpi.b #$ff,$3c(a0)
	beq.w loc_20ee16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ebda(pc,d0.w),d0
	jsr dat_20ebda(pc,d0.w)
	jsr (sub_203a98).l
	jmp (loc_207b26).l
dat_20ebda:
	dc.b $00,$18,$00,$a8,$01,$28,$01,$78
loc_20ebe2:
	jmp (loc_207b48).l
	dc.b $43,$f8,$d0,$00,$4e,$f9,$00,$20
	dc.b $88,$44
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20ef14,$4(a0)
	move.w #$4300,$2(a0)
	move.b #$40,$16(a0)
	move.b #$40,$19(a0)
	move.b $28(a0),d0
	andi.b #$3,d0
	move.b d0,$1a(a0)
	move.b d0,$3d(a0)
	jsr (sub_207af0).l
	bne.w loc_20ebe2
	move.b #$3d,$0(a1)
	move.w $8(a0),$36(a1)
	move.w a0,$34(a1)
	move.b #$ff,$3c(a1)
	move.b #$0,$3d(a1)
	move.w a1,$30(a0)
	jsr (sub_207af0).l
	bne.w loc_20ebe2
	move.b #$3d,$0(a1)
	move.w $8(a0),$36(a1)
	move.w a0,$34(a1)
	move.b #$ff,$3c(a1)
	move.b #$1,$3d(a1)
	move.w a1,$34(a0)
	rts
	movea.w $30(a0),a1
	tst.b $3e(a1)
	bmi.s loc_20ec8e
	rts
loc_20ec8e:
	lea ($d000).w,a1
	cmpi.b #$2,$3d(a0)
	bcc.s loc_20ecac
	move.w $8(a0),d0
	move.b $19(a1),d1
	addq.b #$2,d1
	ext.w d1
	add.w $8(a1),d1
	bra.s loc_20ecbe
loc_20ecac:
	move.w $8(a0),d1
	move.b $19(a1),d0
	addq.b #$2,d0
	neg.b d0
	ext.w d0
	add.w $8(a1),d0
loc_20ecbe:
	sub.w d1,d0
	bcc.s loc_20ecc4
	rts
loc_20ecc4:
	moveq #$10,d0
	jsr (sub_20ede8).l
	tst.b d1
	bmi.s loc_20ecd6
	cmpi.b #$10,d1
	bcc.s loc_20ecf2
loc_20ecd6:
	movea.w $34(a0),a1
	tst.b $3e(a1)
	beq.s loc_20ecf0
	move.b #$6,$24(a0)
	move.b #$10,$3a(a0)
	clr.b $3b(a0)
loc_20ecf0:
	rts
loc_20ecf2:
	addq.b #$2,$24(a0)
	move.b #$10,$3a(a0)
	clr.b $3b(a0)
	rts
	.incbin 60674, 230

sub_20ede8:
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
	beq.s loc_20ee14
	move.b #$0,d3
loc_20ee14:
	rts
loc_20ee16:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ee34(pc,d0.w),d0
	jsr dat_20ee34(pc,d0.w)
	jsr (sub_203a98).l
	move.w $36(a0),d0
	jmp (loc_207b2a).l
dat_20ee34:
	dc.b $00,$04,$00,$46
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20ef14,$4(a0)
	move.w #$4300,$2(a0)
	move.b #$8,$1a(a0)
	move.b #$20,d0
	move.b #$10,d1
	tst.b $3d(a0)
	beq.s loc_20ee72
	move.b #$10,d0
	move.b #$10,d1
loc_20ee72:
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	movea.w $34(a0),a1
	moveq #$0,d0
	move.b $1a(a1),d0
	cmpi.b #$4,d0
	bcc.w loc_20eefa
	add.b d0,d0
	lea (dat_20ef04).l,a2
	tst.b $3d(a0)
	beq.s loc_20eea0
	lea (dat_20ef0c).l,a2
loc_20eea0:
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
	jsr (sub_20884a).l
	tst.b $3d(a0)
	bne.s loc_20eed8
	btst.b #$3,$22(a0)
	sne $3e(a0)
	rts
loc_20eed8:
	btst.b #$5,$22(a0)
	beq.s loc_20eef4
	tst.b $3f(a0)
	bne.s loc_20eef8
	move.w #$ffff,$3e(a0)
	bclr.b #$5,$22(a0)
	rts
loc_20eef4:
	clr.w $3e(a0)
loc_20eef8:
	rts
loc_20eefa:
	lea ($d000).w,a1
	jmp (sub_2086fc).l
dat_20ef04:
	dc.b $f0,$00,$f0,$00,$10,$00,$10,$00
dat_20ef0c:
	.incbin 61196, 2260

sub_20f7e0:
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
	jmp (sub_203b44).l
loc_20f810:
	rts

sub_20f812:
	jmp (loc_2067a6).l
dat_20f818:
	.incbin 63512, 16
dat_20f828:
	.incbin 63528, 966
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
	jsr (sub_20262a).l
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
	jmp (loc_207990).l
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
	.incbin 245042, 14462
dat_23f5b0:
	.incbin 259504, 364
dat_23f71c:
	.incbin 259868, 2276
