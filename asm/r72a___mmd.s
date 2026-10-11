; R72A__.MMD
; disassembled from the disc; code only, data comes from data/R72A__.MMD at build time
	.file "R72A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$1f,$8a
	jmp (loc_201b00).l
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
	bsr.w sub_202036
	bsr.w sub_201fde
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_20137a

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200202).l,a1
	lea (dat_200208).l,a2
	bsr.w sub_2001b8
	lea (dat_200210).l,a1
	lea (dat_200216).l,a2
	bsr.w sub_2001b8
	lea (dat_20021e).l,a1
	lea (dat_200224).l,a2

sub_2001b8:
	subq.b #$1,(a5)
	bpl.s loc_2001f8
	moveq #$0,d0
	moveq #$0,d1
	move.b (a1)+,d0
	move.b (a1)+,d1
	add.w d0,d0
	lea ($fb00).w,a3
	lea $0(a3,d0.w),a3
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b d1,d0
	bcs.s loc_2001da
	moveq #$0,d0
loc_2001da:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
	add.w d1,d1
	add.w d0,d1
	move.w $0(a2,d1.w),-$80(a3)
loc_2001f8:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200202:
	dc.b $29,$02,$04,$00,$04,$01
dat_200208:
	dc.b $00,$e0,$00,$00,$00,$e0,$00,$00
dat_200210:
	dc.b $3e,$02,$04,$00,$04,$01
dat_200216:
	dc.b $0e,$ee,$00,$02,$0e,$ee,$00,$02
dat_20021e:
	dc.b $3f,$02,$04,$00,$04,$01
dat_200224:
	dc.b $00,$e0,$00,$02,$00,$e0,$00,$02

sub_20022c:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20023e:
	move.w d1,(a0)+
	dbf d0,loc_20023e
	move.w #$15,d4
loc_200248:
	move.b #$12,($f62a).w
	bsr.w sub_2006be
	bsr.s sub_20025e
	bsr.w sub_2023fc
	dbf d4,loc_200248
	rts

sub_20025e:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200274:
	bsr.s sub_2002a2
	dbf d0,loc_200274
	cmpi.b #$1,($ff1506).l
	bne.s loc_2002a0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20029a:
	bsr.s sub_2002a2
	dbf d0,loc_20029a
loc_2002a0:
	rts

sub_2002a2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2002ca
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2002b8
	move.w d1,(a0)+
	rts
loc_2002b8:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2002c6
	move.w d1,(a0)+
	rts
loc_2002c6:
	addq.w #$2,(a0)+
	rts
loc_2002ca:
	addq.w #$2,a0
	rts

sub_2002ce:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2002d8:
	move.b #$12,($f62a).w
	bsr.w sub_2006be
	bsr.s sub_2002ee
	bsr.w sub_2023fc
	dbf d4,loc_2002d8
	rts

sub_2002ee:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2002fe:
	bsr.s sub_20031c
	dbf d0,loc_2002fe
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200314:
	bsr.s sub_20031c
	dbf d0,loc_200314
	rts

sub_20031c:
	move.w (a0),d2
	beq.s loc_200348
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20032c
	subq.w #$2,(a0)+
	rts
loc_20032c:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_20033a
	subi.w #$20,(a0)+
	rts
loc_20033a:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200348
	subi.w #$200,(a0)+
	rts
loc_200348:
	addq.w #$2,a0
	rts

sub_20034c:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200366:
	move.w d1,(a0)+
	dbf d0,loc_200366
	move.w #$15,d4
loc_200370:
	move.b #$12,($f62a).w
	bsr.w sub_2006be
	bsr.s sub_200386
	bsr.w sub_2023fc
	dbf d4,loc_200370
	rts

sub_200386:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20039c:
	bsr.s sub_2003ca
	dbf d0,loc_20039c
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003c8
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003c2:
	bsr.s sub_2003ca
	dbf d0,loc_2003c2
loc_2003c8:
	rts

sub_2003ca:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003f6
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2003e2
	cmp.w d2,d1
	bcs.s loc_2003e2
	move.w d1,(a0)+
	rts
loc_2003e2:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2003f2
	cmp.w d2,d1
	bcs.s loc_2003f2
	move.w d1,(a0)+
	rts
loc_2003f2:
	subq.w #$2,(a0)+
	rts
loc_2003f6:
	addq.w #$2,a0
	rts

sub_2003fa:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200404:
	move.b #$12,($f62a).w
	bsr.w sub_2006be
	bsr.s sub_20041a
	bsr.w sub_2023fc
	dbf d4,loc_200404
	rts

sub_20041a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20042a:
	bsr.s sub_200448
	dbf d0,loc_20042a
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200440:
	bsr.s sub_200448
	dbf d0,loc_200440
	rts

sub_200448:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200484
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200460
	addq.w #$2,(a0)+
	rts
loc_200460:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_200472
	addi.w #$20,(a0)+
	rts
loc_200472:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200484
	addi.w #$200,(a0)+
	rts
loc_200484:
	addq.w #$2,a0
	rts

sub_200488:
	lea (dat_2004f4).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_20049c:
	move.l (a2)+,(a3)+
	dbf d7,loc_20049c
	rts

sub_2004a4:
	lea (dat_2004f4).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2004b4:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004b4
	rts
	.incbin 1212, 18
	move.w (a1)+,d7
loc_2004d0:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004d0
	rts
	dc.b $43,$f9,$00,$20,$04,$f4
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$100,a3
	move.w (a1)+,d7
loc_2004ec:
	move.l (a2)+,(a3)+
	dbf d7,loc_2004ec
	rts
dat_2004f4:
	.incbin 1268, 458

sub_2006be:
	move.w #$2300,sr
loc_2006c2:
	tst.b ($f62a).w
	bne.s loc_2006c2
	rts

sub_2006ca:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2006e2(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2006e2(pc,d0.w),d0
	rts
dat_2006e2:
	.incbin 1762, 640

sub_200962:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_2009be
	move.w d2,d4
	tst.w d3
	bpl.w loc_20097c
	neg.w d3
loc_20097c:
	tst.w d4
	bpl.w loc_200984
	neg.w d4
loc_200984:
	cmp.w d3,d4
	bcc.w loc_200996
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_2009c8(pc,d4.w),d0
	bra.s loc_2009a0
loc_200996:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_2009c8(pc,d3.w),d0
loc_2009a0:
	tst.w d1
	bpl.w loc_2009ac
	neg.w d0
	addi.w #$80,d0
loc_2009ac:
	tst.w d2
	bpl.w loc_2009b8
	neg.w d0
	addi.w #$100,d0
loc_2009b8:
	movem.l (a7)+,d3-d4
	rts
loc_2009be:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_2009c8:
	.incbin 2504, 258

sub_200aca:
	btst.b #$3,$22(a0)
	beq.s loc_200ade
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200ade:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b00
	move.b $26(a0),d0
	bpl.s loc_200afa
	subq.b #$1,d0
loc_200afa:
	addi.b #$20,d0
	bra.s loc_200b0c
loc_200b00:
	move.b $26(a0),d0
	bpl.s loc_200b08
	addq.b #$1,d0
loc_200b08:
	addi.b #$1f,d0
loc_200b0c:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200d96
	cmpi.b #$80,d0
	beq.w loc_200cf4
	cmpi.b #$c0,d0
	beq.w loc_200c58
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
	bsr.w sub_201020
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
	bsr.w sub_201020
	move.w (a7)+,d0
	bsr.w sub_200c2c
	tst.w d1
	beq.s loc_200b9a
	bpl.s loc_200b9c
	cmpi.w #$fff2,d1
	blt.s loc_200bc2
	add.w d1,$c(a0)
loc_200b9a:
	rts
loc_200b9c:
	cmpi.w #$e,d1
	bgt.s loc_200ba8
loc_200ba2:
	add.w d1,$c(a0)
	rts
loc_200ba8:
	tst.b $38(a0)
	bne.s loc_200ba2
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200bc2:
	rts
	.incbin 3012, 34
loc_200be6:
	rts
	.incbin 3048, 68

sub_200c2c:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200c3a
	move.b ($f768).w,d2
	move.w d0,d1
loc_200c3a:
	btst.l #$0,d2
	bne.s loc_200c46
	move.b d2,$26(a0)
	rts
loc_200c46:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200c58:
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
	bsr.w sub_201190
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
	bsr.w sub_201190
	move.w (a7)+,d0
	bsr.w sub_200c2c
	tst.w d1
	beq.s loc_200ccc
	bpl.s loc_200cce
	cmpi.w #$fff2,d1
	blt.w loc_200be6
	add.w d1,$8(a0)
loc_200ccc:
	rts
loc_200cce:
	cmpi.w #$e,d1
	bgt.s loc_200cda
loc_200cd4:
	add.w d1,$8(a0)
	rts
loc_200cda:
	tst.b $38(a0)
	bne.s loc_200cd4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200cf4:
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
	bsr.w sub_201020
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
	bsr.w sub_201020
	move.w (a7)+,d0
	bsr.w sub_200c2c
	tst.w d1
	beq.s loc_200d6e
	bpl.s loc_200d70
	cmpi.w #$fff2,d1
	blt.w loc_200bc2
	sub.w d1,$c(a0)
loc_200d6e:
	rts
loc_200d70:
	cmpi.w #$e,d1
	bgt.s loc_200d7c
loc_200d76:
	sub.w d1,$c(a0)
	rts
loc_200d7c:
	tst.b $38(a0)
	bne.s loc_200d76
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d96:
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
	bsr.w sub_201190
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
	bsr.w sub_201190
	move.w (a7)+,d0
	bsr.w sub_200c2c
	tst.w d1
	beq.s loc_200e10
	bpl.s loc_200e12
	cmpi.w #$fff2,d1
	blt.w loc_200be6
	sub.w d1,$8(a0)
loc_200e10:
	rts
loc_200e12:
	cmpi.w #$e,d1
	bgt.s loc_200e1e
loc_200e18:
	sub.w d1,$8(a0)
	rts
loc_200e1e:
	tst.b $38(a0)
	bne.s loc_200e18
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200e38:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200e4e
	andi.w #$380,d0
loc_200e4e:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200eae
	bmi.s loc_200eb2
	cmpi.b #$5,($ff1506).l
	beq.s loc_200e7e
	cmpi.b #$6,($ff1506).l
	bne.s loc_200e84
loc_200e7e:
	andi.w #$7fff,$2(a0)
loc_200e84:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200e94
	bclr.b #$6,$1(a0)
loc_200e94:
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
loc_200eae:
	movea.l d1,a1
	rts
loc_200eb2:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f1a
	btst.b #$6,$1(a0)
	bne.s loc_200ee0
	cmpi.b #$14,d1
	bne.w loc_201004
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201004
loc_200ee0:
	cmpi.b #$15,d1
	bne.s loc_200eee
	move.w #$60,d1
	bra.w loc_201004
loc_200eee:
	cmpi.b #$1e,d1
	bne.s loc_200efc
	move.w #$61,d1
	bra.w loc_201004
loc_200efc:
	cmpi.b #$1f,d1
	bne.s loc_200f0a
	move.w #$62,d1
	bra.w loc_201004
loc_200f0a:
	cmpi.b #$32,d1
	bne.w loc_201004
	move.w #$63,d1
	bra.w loc_201004
loc_200f1a:
	cmpi.b #$5,($ff1506).l
	bne.w loc_200f80
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200f6a
	cmpi.b #$6,d1
	beq.s loc_200f6a
	tst.b ($ff1956).l
	beq.w loc_201004
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_200f7a
	cmpi.b #$3c,d1
	beq.s loc_200f7a
	cmpi.b #$37,d1
	beq.s loc_200f7a
	cmpi.b #$2f,d1
	beq.s loc_200f7a
	cmpi.b #$16,d1
	beq.s loc_200f7a
	bra.w loc_201004
loc_200f6a:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201004
loc_200f7a:
	addq.b #$1,d1
	bra.w loc_201004
loc_200f80:
	cmpi.b #$6,($ff1506).l
	bne.s loc_200ff0
	cmpi.b #$3,$0(a0)
	bcc.w loc_201004
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201004
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_200fb4
	move.w #$6a,d1
	bra.s loc_201004
loc_200fb4:
	cmpi.b #$48,d1
	bne.s loc_200fc0
	move.w #$6b,d1
	bra.s loc_201004
loc_200fc0:
	cmpi.b #$4a,d1
	bne.s loc_200fcc
	move.w #$6c,d1
	bra.s loc_201004
loc_200fcc:
	cmpi.b #$10,d1
	bne.s loc_200fd8
	move.w #$6d,d1
	bra.s loc_201004
loc_200fd8:
	cmpi.b #$63,d1
	bne.s loc_200fe4
	move.w #$6e,d1
	bra.s loc_201004
loc_200fe4:
	cmpi.b #$43,d1
	bne.s loc_201004
	move.w #$6f,d1
	bra.s loc_201004
loc_200ff0:
	btst.b #$6,$1(a0)
	beq.s loc_201004
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201004
	move.w #$51,d1
loc_201004:
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

sub_201020:
	bsr.w sub_200e38
	cmpi.l #$210000,d1
	beq.s loc_20103a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20103a
	btst.l d5,d4
	bne.s loc_201048
loc_20103a:
	add.w a3,d2
	bsr.w sub_2010e0
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201048:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20103a
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20106e
	not.w d1
	neg.b (a4)
loc_20106e:
	btst.l #$c,d4
	beq.s loc_20107e
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20107e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20109a
	neg.w d0
loc_20109a:
	tst.w d0
	beq.s loc_20103a
	bmi.s loc_2010b6
	cmpi.b #$10,d0
	beq.s loc_2010d2
loc_2010a6:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2010b6:
	cmpa.w #$10,a3
	bne.s loc_2010c6
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2010a6
loc_2010c6:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20103a
loc_2010d2:
	sub.w a3,d2
	bsr.w sub_2010e0
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2010e0:
	bsr.w sub_200e38
	cmpi.l #$210000,d1
	beq.s loc_2010fa
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010fa
	btst.l d5,d4
	bne.s loc_201108
loc_2010fa:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201108:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010fa
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_20112e
	not.w d1
	neg.b (a4)
loc_20112e:
	btst.l #$c,d4
	beq.s loc_20113e
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20113e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20115a
	neg.w d0
loc_20115a:
	tst.w d0
	beq.s loc_2010fa
	bmi.s loc_201170
loc_201160:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201170:
	cmpa.w #$10,a3
	bne.s loc_201180
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201160
loc_201180:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010fa
	not.w d1
	rts

sub_201190:
	bsr.w sub_200e38
	cmpi.l #$210000,d1
	beq.s loc_2011aa
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011aa
	btst.l d5,d4
	bne.s loc_2011b8
loc_2011aa:
	add.w a3,d3
	bsr.w sub_201240
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2011b8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011aa
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2011e6
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011e6:
	btst.l #$b,d4
	beq.s loc_2011ee
	neg.b (a4)
loc_2011ee:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20120a
	neg.w d0
loc_20120a:
	tst.w d0
	beq.s loc_2011aa
	bmi.s loc_201226
	cmpi.b #$10,d0
	beq.s loc_201232
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201226:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011aa
loc_201232:
	sub.w a3,d3
	bsr.w sub_201240
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201240:
	bsr.w sub_200e38
	cmpi.l #$210000,d1
	beq.s loc_20125a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20125a
	btst.l d5,d4
	bne.s loc_201268
loc_20125a:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201268:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20125a
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201296
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201296:
	btst.l #$b,d4
	beq.s loc_20129e
	neg.b (a4)
loc_20129e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012ba
	neg.w d0
loc_2012ba:
	tst.w d0
	beq.s loc_20125a
	bmi.s loc_2012d0
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012d0:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20125a
	not.w d1
	rts

sub_2012e0:
	rts
	.incbin 4834, 152
loc_20137a:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20139a
	tst.b ($ff0f01).l
	bne.s loc_20139a
	move.b #$1,($ff156a).l
loc_20139a:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201400
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_20762e
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201400
	move.b #$1,($ff1508).l
loc_201400:
	bset.b #$7,($f600).w
	bsr.w sub_2023ee
	tst.b ($ff156e).l
	bne.s loc_201426
	btst.b #$7,($ff152e).l
	beq.s loc_20145c
	bset.b #$0,($ff151d).l
	beq.s loc_201432
loc_201426:
	bsr.w sub_2003fa
	bclr.b #$0,($ff151d).l
loc_201432:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2014cc
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_20145a
	bclr.b #$7,($ff152e).l
loc_20145a:
	rts
loc_20145c:
	bset.b #$0,($ff151d).l
	beq.s loc_20146a
	bsr.w sub_2002ce
loc_20146a:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201486
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2014ae
loc_201486:
	tst.b ($ff1508).l
	bne.s loc_2014cc
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2014ae:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2014b6:
	move.l #$0,(a1)+
	dbf d6,loc_2014b6
	move.b #$c,($f62a).w
	bsr.w sub_2006be
	rts
loc_2014cc:
	cmpi.w #$800,($f78e).w
	bne.s loc_2014ea
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_2014ea:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201500
	btst.b #$7,($ff152e).l
	beq.s loc_201506
loc_201500:
	move.l #$eee0eee,d0
loc_201506:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20150e:
	move.l d0,(a1)+
	dbf d6,loc_20150e
loc_201514:
	move.b #$c,($f62a).w
	bsr.w sub_2006be
	bsr.w sub_2023fc
	bne.s loc_201514
	tst.l ($f680).w
	bsr.w sub_2019ba
	moveq #$0,d0
	lea (dat_20fe3c).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20153e
	bsr.w sub_202502
loc_20153e:
	moveq #$1,d0
	bsr.w sub_202502
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20155a:
	move.l d0,(a1)+
	dbf d1,loc_20155a
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20156c:
	move.l d0,(a1)+
	dbf d1,loc_20156c
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20157c:
	move.l d0,(a1)+
	dbf d1,loc_20157c
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20158e:
	move.l d0,(a1)+
	dbf d1,loc_20158e
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20159e:
	move.l d0,(a1)+
	dbf d1,loc_20159e
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2015ae:
	move.l d0,(a1)+
	dbf d1,loc_2015ae
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_2020d8
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
	bsr.w sub_2004a4
	moveq #$3,d0
	bsr.w sub_200488
	bsr.w sub_202752
	bsr.w sub_202866
	bset.b #$2,($f754).w
	bsr.w sub_203326
	bsr.w sub_20321c
	jsr (sub_2012e0).l
	bsr.w sub_2018f4
loc_20162e:
	move.b #$c,($f62a).w
	bsr.w sub_2006be
	bsr.w sub_2023fc
	bne.s loc_20162e
	tst.l ($f680).w
	bne.s loc_20162e
	bsr.w sub_201880
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a1a
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201692
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201692:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2016d4
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2016d4:
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
	jsr (sub_20fe36).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201764
loc_20175e:
	bsr.w sub_20034c
	bra.s loc_201772
loc_201764:
	bclr.b #$0,($ff0f22).l
	bne.s loc_20175e
	bsr.w sub_20022c
loc_201772:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201780:
	move.b #$8,($f62a).w
	bsr.w sub_2006be
	tst.b ($f7cc).w
	bne.s loc_20179e
	btst.b #$7,($f605).w
	beq.s loc_20179e
	eori.b #$1,($f63a).w
loc_20179e:
	btst.b #$0,($f63a).w
	beq.w loc_201810
	bsr.w sub_201a7e
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2017ee
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201780
	subq.b #$1,($ff1508).l
	bpl.s loc_2017d0
	clr.b ($ff1508).l
loc_2017d0:
	move.w #$e,d0
	jsr (sub_2059e4).l
	bsr.w sub_20762e
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_2017fc
loc_2017ee:
	andi.b #$70,d0
	beq.w loc_201780
	clr.b ($ff1508).l
loc_2017fc:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_20137a
loc_201810:
	bsr.w sub_201ac4
	addq.w #$1,($ff1504).l
	jsr (sub_207644).l
	jsr (sub_20373a).l
	cmpi.w #$800,($f78e).w
	beq.w loc_20137a
	tst.w ($ff1502).l
	bne.w loc_20137a
	tst.w ($ff1906).l
	bne.s loc_201858
	cmpi.b #$6,($d024).w
	bcs.s loc_201858
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_20185c
loc_201858:
	bsr.w sub_202866
loc_20185c:
	jsr (sub_2038e4).l
	tst.w ($ff190e).l
	bne.s loc_20186e
	bsr.w sub_200184
loc_20186e:
	jsr (sub_20d366).l
	bsr.w sub_2023fc
	bsr.w sub_201926
	bra.w loc_201780

sub_201880:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201898
	move.w #$78,$30(a1)
loc_201898:
	rts
	.incbin 6298, 90

sub_2018f4:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201906(pc,d0.w),($f796).w
	rts
dat_201906:
	.incbin 6406, 32

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
	jmp (sub_2059e4).l
dat_2019f4:
	.incbin 6644, 38

sub_201a1a:
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

sub_201a7e:
	move.w #$ab,d0
	jsr (sub_2021c6).l
	bset.b #$7,($f63a).w
	bne.s loc_201ac2
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201aa8
loc_201a9e:
	move.w #$d5,d0
	jmp (sub_2059e4).l
loc_201aa8:
	tst.b ($ff151f).l
	bne.s loc_201a9e
	tst.b ($ff1520).l
	bne.s loc_201a9e
	move.w #$90,d0
	jmp (sub_2059e4).l
loc_201ac2:
	rts

sub_201ac4:
	bclr.b #$7,($f63a).w
	beq.s loc_201afe
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201ae4
loc_201ada:
	move.w #$d6,d0
	jmp (sub_2059e4).l
loc_201ae4:
	tst.b ($ff151f).l
	bne.s loc_201ada
	tst.b ($ff1520).l
	bne.s loc_201ada
	move.w #$91,d0
	jmp (sub_2059e4).l
loc_201afe:
	rts
loc_201b00:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201b8c
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201b3c
	move.w #$700,d0
loc_201b38:
	dbf d0,loc_201b38
loc_201b3c:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201b72(pc,d0.w),d0
	jsr dat_201b72(pc,d0.w)
loc_201b52:
	jsr (sub_2021ea).l
	tst.b ($f63a).w
	bne.s loc_201b66
	bsr.w sub_201f9e
	bsr.w sub_201f8c
loc_201b66:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201b72:
	.incbin 7026, 26
loc_201b8c:
	tst.b ($ff1957).l
	beq.w loc_201b52
	cmpi.b #$2,($ff1506).l
	bne.w loc_201b52
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201bba
	move.w #$700,d0
loc_201bb6:
	dbf d0,loc_201bb6
loc_201bba:
	move.w #$1,($f6fc).w
	jsr (sub_20215e).l
	tst.b ($f64e).w
	bne.s loc_201bf2
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201c16
loc_201bf2:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201c16:
	move.w ($f624).w,(a5)
	jsr (sub_20217a).l
	bra.w loc_201b52
	.incbin 7204, 60
	jsr (sub_20215e).l
	bsr.w sub_201ffa
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
	bsr.w sub_205906
	tst.b ($f767).w
	beq.s loc_201d0e
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201d0e:
	jsr (sub_20fe36).l
	jsr (sub_20217a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e12
	bsr.w sub_20246e
	jmp (loc_20ae4a).l
	dc.b $4e,$75
	jsr (sub_20215e).l
	bsr.w sub_201ffa
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
	jsr (sub_20217a).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e12
	bra.w loc_202452
	.incbin 7654, 16
	bsr.w sub_201ee2
	cmpi.b #$1,($ff1903).l
	bne.s loc_201e18
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201e18:
	move.w ($f624).w,(a5)
	bra.w loc_202452
	dc.b $4e,$b9,$00,$20,$21,$5e,$61,$00
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
	jsr (sub_20217a).l
	lea ($d000).w,a0
	bsr.w sub_205906
	tst.b ($f767).w
	beq.s loc_201ed4
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201ed4:
	tst.w ($f614).w
	beq.w loc_201ee0
	subq.w #$1,($f614).w
loc_201ee0:
	rts

sub_201ee2:
	jsr (sub_20215e).l
	bsr.w sub_201ffa
	tst.b ($f64e).w
	bne.s loc_201f18
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f3c
loc_201f18:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201f3c:
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
	jmp (sub_20217a).l
	dc.b $4e,$73

sub_201f8c:
	tst.b ($d02a).w
	bne.s loc_201f9c
	tst.w ($f786).w
	beq.s loc_201f9c
	addq.w #$1,($f786).w
loc_201f9c:
	rts

sub_201f9e:
	tst.w ($f780).w
	beq.s loc_201fa8
	addq.w #$1,($f780).w
loc_201fa8:
	tst.w ($f782).w
	beq.s loc_201fb2
	addq.w #$1,($f782).w
loc_201fb2:
	rts
	.incbin 8116, 42

sub_201fde:
	bsr.w sub_20215e
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_20217a

sub_201ffa:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202008
	addq.w #$2,a1

sub_202008:
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

sub_202036:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2020b2).l,a2
	moveq #$12,d7
loc_20204a:
	move.w (a2)+,(a0)
	dbf d7,loc_20204a
	move.w (dat_2020b4).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_202070:
	move.w d0,(a1)
	dbf d7,loc_202070
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2020a2:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2020a2
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2020b2:
	dc.b $80,$04
dat_2020b4:
	.incbin 8372, 36

sub_2020d8:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_2020fa:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2020fa
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_202128:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202128
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202146:
	move.l d0,(a1)+
	dbf d1,loc_202146
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202156:
	move.l d0,(a1)+
	dbf d1,loc_202156
	rts

sub_20215e:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_20216e:
	btst.b #$0,($a11100).l
	bne.s loc_20216e
	rts

sub_20217a:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8584, 62

sub_2021c6:
	tst.b ($f00a).w
	bne.s loc_2021d2
	move.b d0,($f00a).w
	rts
loc_2021d2:
	tst.b ($f00b).w
	bne.s loc_2021de
	move.b d0,($f00b).w
	rts
loc_2021de:
	tst.b ($f00c).w
	bne.s loc_2021e8
	move.b d0,($f00c).w
loc_2021e8:
	rts

sub_2021ea:
	jsr (sub_20215e).l
	tst.b ($f00a).w
	beq.s loc_202204
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202204:
	tst.b ($f00b).w
	beq.s loc_202218
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202218:
	tst.b ($f00c).w
	beq.s loc_20222c
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_20222c:
	bra.w sub_20217a
	.incbin 8752, 32

sub_202250:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202312).l,a3
	lea ($c00000).l,a4
	bra.s loc_20226c

sub_202262:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_202328).l,a3
loc_20226c:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_20227a
	adda.w #$a,a3
loc_20227a:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_20233e
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20229a
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20229a:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_2022e6
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2022c2
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2022c2:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_2022d0:
	lsr.w #$4,d0
loc_2022d2:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_2022e0
	jmp (a3)

sub_2022dc:
	moveq #$0,d4
	moveq #$8,d3
loc_2022e0:
	dbf d0,loc_2022d2
	bra.s sub_20229a
loc_2022e6:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_2022f4
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2022f4:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_2022d0
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_2022d0
loc_202312:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2022dc
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2022dc
	rts
dat_202328:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_2022dc
	rts

sub_20233e:
	move.b (a0)+,d0
loc_202340:
	cmpi.b #$ff,d0
	bne.s loc_202348
	rts
loc_202348:
	move.w d0,d7
loc_20234a:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202340
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
	bne.s loc_202378
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20234a
loc_202378:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202384:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202384
	bra.s loc_20234a

sub_202390:
	movem.l a1-a2,-(a7)
	lea (dat_20fe4c).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2023a8:
	tst.l (a2)
	beq.s loc_2023b0
	addq.w #$6,a2
	bra.s loc_2023a8
loc_2023b0:
	move.w (a1)+,d0
	bmi.s loc_2023bc
loc_2023b4:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2023b4
loc_2023bc:
	movem.l (a7)+,a1-a2
	rts
loc_2023c2:
	movem.l a1-a2,-(a7)
	lea (dat_20fe4c).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_2023ee
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_2023e8
loc_2023e0:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2023e0
loc_2023e8:
	movem.l (a7)+,a1-a2
	rts

sub_2023ee:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_2023f4:
	clr.l (a2)+
	dbf d0,loc_2023f4
	rts

sub_2023fc:
	tst.l ($f680).w
	beq.s loc_202450
	tst.w ($f6f8).w
	bne.s loc_202450
	movea.l ($f680).w,a0
	lea (loc_202312).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_20241e
	adda.w #$a,a3
loc_20241e:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_20233e
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
loc_202450:
	rts
loc_202452:
	tst.w ($f6f8).w
	beq.w loc_2024f0
loc_20245a:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20248c

sub_20246e:
	tst.w ($f6f8).w
	beq.s loc_2024f0
	tst.b ($f744).w
	bne.s loc_20245a
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20248c:
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
loc_2024c0:
	movea.w #$8,a5
	bsr.w sub_2022dc
	subq.w #$1,($f6f8).w
	beq.s loc_2024f2
	subq.w #$1,($f6fa).w
	bne.s loc_2024c0
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_2024f0:
	rts
loc_2024f2:
	lea ($f680).w,a0
	moveq #$15,d0
loc_2024f8:
	move.l $6(a0),(a0)+
	dbf d0,loc_2024f8
	rts

sub_202502:
	lea (dat_20fe4c).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202514:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202250
	dbf d1,loc_202514
	rts
	.incbin 9524, 542

sub_202752:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2027ae).l,a0
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
	bra.w loc_2027ba
dat_2027ae:
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $07,$10,$00,$60
loc_2027ba:
	tst.b ($ff1522).l
	beq.s loc_2027da
	jsr (sub_206716).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_2027d8
	moveq #$0,d0
loc_2027d8:
	bra.s loc_2027f0
loc_2027da:
	lea (dat_20282c).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_2027f0:
	subi.w #$a0,d1
	bcc.s loc_2027f8
	moveq #$0,d1
loc_2027f8:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202802
	move.w d2,d1
loc_202802:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20280e
	moveq #$0,d0
loc_20280e:
	cmp.w ($f72e).w,d0
	blt.s loc_202818
	move.w ($f72e).w,d0
loc_202818:
	move.w d0,($f704).w
	bsr.w sub_202834
	lea (dat_202830).l,a1
	move.l (a1),($f7ac).w
	rts
dat_20282c:
	dc.b $00,$40,$02,$8c
dat_202830:
	dc.b $84,$86,$7f,$7f

sub_202834:
	swap d0
	lsr.l #$2,d0
	move.l d0,d2
	lsr.w #$3,d2
	add.l d2,d0
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

sub_202866:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202872
	rts
loc_202872:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202a88
	bsr.w sub_202b28
	bsr.w sub_2033ce
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202db2
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202d7e
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202d4a
	move.w ($f704).w,d0
	lsr.w #$2,d0
	move.w d0,d1
	lsr.w #$3,d1
	add.w d1,d0
	bsr.w sub_202d1a
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
	bsr.w sub_202988
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_20291c:
	move.w d0,(a1)+
	dbf d6,loc_20291c
	bsr.w sub_2029cc
	move.w ($f718).w,d0
	neg.w d0
	moveq #$f,d6
loc_20292e:
	move.w d0,(a1)+
	dbf d6,loc_20292e
	bsr.w sub_202a0a
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202a46
dat_202956:
	.incbin 10582, 38
dat_20297c:
	dc.b $01,$01,$00,$00,$00,$00,$00,$00
	dc.b $00,$00,$00,$00

sub_202988:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$25,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$24,d6
	adda.w #$58,a1
loc_2029ac:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202956(pc,d6.w),d5
loc_2029b6:
	move.w d0,-(a1)
	dbf d5,loc_2029b6
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_2029ac
	adda.w #$58,a1
	rts

sub_2029cc:
	move.w ($f708).w,d0
	move.w ($f718).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$c,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f708).w,d3
	moveq #$b,d6
loc_2029ec:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_20297c(pc,d6.w),d5
loc_2029f6:
	move.w d0,(a1)+
	dbf d5,loc_2029f6
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_2029ec
	rts
dat_202a08:
	dc.b $09,$07

sub_202a0a:
	move.w ($f710).w,d0
	move.w ($f700).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$8,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f710).w,d3
	moveq #$1,d6
loc_202a2a:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202a08(pc,d6.w),d5
loc_202a34:
	move.w d0,(a1)+
	dbf d5,loc_202a34
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a2a
	rts
loc_202a46:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202a54(pc,d2.w)
loc_202a52:
	move.w (a2)+,d0
loc_202a54:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202a52
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
	dbf d1,loc_202a52
	rts

sub_202a88:
	move.w ($f700).w,d4
	bsr.s sub_202abc
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202aba
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202ab4
	bset.b #$2,($f754).w
	rts
loc_202ab4:
	bset.b #$3,($f754).w
loc_202aba:
	rts

sub_202abc:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202ace
	bcs.s loc_202afe
	bra.s loc_202ad4
loc_202ace:
	clr.w ($f73a).w
	rts
loc_202ad4:
	cmpi.w #$10,d0
	blt.s loc_202ade
	move.w #$10,d0
loc_202ade:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202aec
	move.w ($f72a).w,d0
loc_202aec:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202afe:
	cmpi.w #$fff0,d0
	bge.s loc_202b08
	move.w #$fff0,d0
loc_202b08:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202aec
	move.w ($f728).w,d0
	bra.s loc_202aec
	.incbin 11032, 16

sub_202b28:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202b3c
	subq.w #$5,d0
loc_202b3c:
	btst.b #$1,$22(a6)
	beq.s loc_202b5c
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202ba8
	subi.w #$40,d0
	bcc.s loc_202ba8
	tst.b ($f75c).w
	bne.s loc_202bba
	bra.s loc_202b68
loc_202b5c:
	sub.w ($f73e).w,d0
	bne.s loc_202b6e
	tst.b ($f75c).w
	bne.s loc_202bba
loc_202b68:
	clr.w ($f73c).w
	rts
loc_202b6e:
	cmpi.w #$60,($f73e).w
	bne.s loc_202b96
	move.w $14(a6),d1
	bpl.s loc_202b7e
	neg.w d1
loc_202b7e:
	cmpi.w #$800,d1
	bcc.s loc_202ba8
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c08
	cmpi.w #$fffa,d0
	blt.s loc_202bd2
	bra.s loc_202bc0
loc_202b96:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c08
	cmpi.w #$fffe,d0
	blt.s loc_202bd2
	bra.s loc_202bc0
loc_202ba8:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c08
	cmpi.w #$fff0,d0
	blt.s loc_202bd2
	bra.s loc_202bc0
loc_202bba:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202bc0:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c12
	bra.w loc_202bde
loc_202bd2:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202bde:
	cmp.w ($f72c).w,d1
	bgt.s loc_202c36
	cmpi.w #$ff00,d1
	bgt.s loc_202c02
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c36
loc_202c02:
	move.w ($f72c).w,d1
	bra.s loc_202c36
loc_202c08:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c12:
	cmp.w ($f72e).w,d1
	blt.s loc_202c36
	subi.w #$800,d1
	bcs.s loc_202c32
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202c36
loc_202c32:
	move.w ($f72e).w,d1
loc_202c36:
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
	bne.s loc_202c78
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202c72
	bset.b #$0,($f754).w
	rts
loc_202c72:
	bset.b #$1,($f754).w
loc_202c78:
	rts
	.incbin 11386, 118
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d18
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202d12
	bset.b #$4,($f756).w
	rts
loc_202d12:
	bset.b #$5,($f756).w
loc_202d18:
	rts

sub_202d1a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202d48
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202d42
	bset.b #$0,($f756).w
	rts
loc_202d42:
	bset.b #$1,($f756).w
loc_202d48:
	rts

sub_202d4a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202d7c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202d76
	bset.b d6,($f756).w
	bra.s loc_202d7c
loc_202d76:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202d7c:
	rts

sub_202d7e:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202db0
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202daa
	bset.b d6,($f758).w
	bra.s loc_202db0
loc_202daa:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202db0:
	rts

sub_202db2:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202de4
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202dde
	bset.b d6,($f75a).w
	bra.s loc_202de4
loc_202dde:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202de4:
	rts
	.incbin 11750, 44

sub_202e12:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202ed0
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_202fb6
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_202fb8
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202ece
	bclr.b #$0,(a2)
	beq.s loc_202e84
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_202fba
loc_202e84:
	bclr.b #$1,(a2)
	beq.s loc_202e9e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e4
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_202fba
loc_202e9e:
	bclr.b #$2,(a2)
	beq.s loc_202eb4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031e4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203010
loc_202eb4:
	bclr.b #$3,(a2)
	beq.s loc_202ece
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2031e4
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203010
loc_202ece:
	rts

sub_202ed0:
	lea (dat_20329c).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202eec
	bclr.b #$1,(a2)
	beq.s loc_202f36
	move.w #$e0,d4
loc_202eec:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202f66(pc,d0.w),a3
	beq.s loc_202f1e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031e4
	movem.l (a7)+,d4-d5
	bsr.w sub_202fba
	movea.l (a7)+,a0
	bra.s loc_202f36
loc_202f1e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2031e6
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_202fe6
	movea.l (a7)+,a0
loc_202f36:
	tst.b (a2)
	bne.s loc_202f3c
	rts
loc_202f3c:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202f50
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202f50:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202f76
dat_202f66:
	.incbin 12134, 16
loc_202f76:
	moveq #$f,d6
	move.l #$800000,d7
loc_202f7e:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_202faa
	btst.b d0,(a2)
	beq.s loc_202faa
	add.w d0,d0
	movea.l dat_202f66(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2030bc
	movem.l (a7)+,d4-d5
	bsr.w sub_2031e4
	bsr.w sub_20303e
	movem.l (a7)+,d4-d5/a0
loc_202faa:
	addi.w #$10,d4
	dbf d6,loc_202f7e
	clr.b (a2)
	rts

sub_202fb6:
	rts

sub_202fb8:
	rts

sub_202fba:
	moveq #$15,d6

sub_202fbc:
	move.l #$800000,d7
	move.l d0,d1
loc_202fc4:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030bc
	move.l d1,d0
	bsr.w sub_20303e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_202fc4
	rts

sub_202fe6:
	move.l #$800000,d7
	move.l d0,d1
loc_202fee:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030be
	move.l d1,d0
	bsr.w sub_20303e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_202fee
	rts

sub_203010:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20301a:
	movem.l d4-d5,-(a7)
	bsr.w sub_2030bc
	move.l d1,d0
	bsr.w sub_20303e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20301a
	rts

sub_20303e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20307a
	btst.b #$3,(a0)
	bne.s loc_20305a
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20305a:
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
loc_20307a:
	btst.b #$3,(a0)
	bne.s loc_20309c
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
loc_20309c:
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

sub_2030bc:
	add.w (a3),d5

sub_2030be:
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
	beq.s loc_20310c
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
loc_20310c:
	rts
	.incbin 12558, 214

sub_2031e4:
	add.w (a3),d5

sub_2031e6:
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
	.incbin 12800, 28

sub_20321c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203246
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20326e

sub_203246:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20324a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2031e4
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_202fbc
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20324a
	rts
loc_20326e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203272:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20329c).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2032ee
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203272
	rts
dat_20329c:
	.incbin 12956, 66
dat_2032de:
	.incbin 13022, 16

sub_2032ee:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2032de(pc,d0.w),a3
	beq.s loc_203310
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2031e4
	movem.l (a7)+,d4-d5
	bsr.w sub_202fba
	bra.s loc_203324
loc_203310:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2031e6
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_202fe6
loc_203324:
	rts

sub_203326:
	moveq #$0,d0
	lea (dat_20fe3c).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202262
	movea.l (a2)+,a0
	bsr.w sub_203380
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200488
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_20336a
	jmp (loc_20d342).l
loc_20336a:
	btst.b #$1,($ff151c).l
	beq.s loc_20337e
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20337e
	bsr.w sub_202390
loc_20337e:
	rts

sub_203380:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20338a:
	move.l d0,(a3)+
	dbf d1,loc_20338a
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2033a0
	lea ($a040).w,a3
	moveq #$2,d1

sub_2033a0:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2368a4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2033ba:
	move.w d1,d0
	movea.l a3,a0
loc_2033be:
	move.b (a1)+,(a0)+
	dbf d0,loc_2033be
	lea $80(a3),a3
	dbf d2,loc_2033ba
	rts

sub_2033ce:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203448(pc,d0.w),d0
	jsr dat_203448(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_2033f4
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_2033f4:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_203422
	bcc.s loc_203424
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203418
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203418:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_203422:
	rts
loc_203424:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_20343c
	btst.b #$1,($d022).w
	beq.s loc_20343c
	add.w d1,d1
	add.w d1,d1
loc_20343c:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203448:
	.incbin 13384, 458
	rts
	.incbin 13844, 118
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20369c(pc,d0.w),d0
	jmp dat_20369c(pc,d0.w)
dat_20369c:
	dc.b $00,$06,$00,$0e,$00,$16,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	move.w #$710,($f726).w
	rts
	.incbin 14002, 136

sub_20373a:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203742:
	move.b (a0),d0
	beq.s loc_203758
	add.w d0,d0
	add.w d0,d0
	lea (dat_203b5c).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203758:
	lea $40(a0),a0
	dbf d7,loc_203742
	rts

sub_203762:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2037a0
	bpl.s loc_203792
	btst.b #$1,$2c(a0)
	beq.s loc_203792
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2037a0
loc_203792:
	btst.b #$2,$2c(a0)
	bne.s loc_2037a0
	addi.w #$38,$12(a0)
loc_2037a0:
	tst.w $12(a0)
	bmi.s loc_2037b4
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2037b4
	move.w #$1000,$12(a0)
loc_2037b4:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2037c4:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203800
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203800
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_2037fe
	neg.w d1
loc_2037fe:
	add.w d1,d0
loc_203800:
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

sub_20381a:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20388a
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038a6
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2038a6
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203864
	cmpi.w #$800,d3
	bcs.s loc_203876
	subi.w #$800,d3
	bra.s loc_203876
loc_203864:
	cmpi.w #$700,($f704).w
	bcs.s loc_203876
	cmpi.w #$100,d3
	bcc.s loc_203876
	addi.w #$800,d3
loc_203876:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2038a6
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2038a6
loc_20388a:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2038a6
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2038a6:
	rts
	.incbin 14504, 30

sub_2038c6:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2038cc:
	move.l d1,(a1)+
	dbf d0,loc_2038cc
	rts
dat_2038d4:
	.incbin 14548, 16

sub_2038e4:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2038f0:
	tst.w (a4)
	beq.w loc_2039b0
	moveq #$2,d6
loc_2038f8:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2039a8
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_20395e
	movea.l dat_2038d4(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203942
	cmpi.w #$800,d2
	bcs.s loc_203954
	subi.w #$800,d2
	bra.s loc_203954
loc_203942:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203954
	cmpi.w #$100,d2
	bcc.s loc_203954
	addi.w #$800,d2
loc_203954:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203980
loc_20395e:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203980
	.incbin 14696, 24
loc_203980:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_20399e
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2039a2
loc_20399e:
	bsr.w sub_2039d2
loc_2039a2:
	bset.b #$7,$1(a0)
loc_2039a8:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2038f8
loc_2039b0:
	lea $80(a4),a4
	dbf d7,loc_2038f0
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_2039ca
	move.l #$0,(a2)
	rts
loc_2039ca:
	move.b #$0,-$5(a2)
	rts

sub_2039d2:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a18
	btst.l #$1,d4
	bne.w loc_203a66
loc_2039e4:
	cmpi.b #$50,d5
	beq.s loc_203a16
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
	bne.s loc_203a10
	addq.w #$1,d0
loc_203a10:
	move.w d0,(a2)+
	dbf d1,loc_2039e4
loc_203a16:
	rts
loc_203a18:
	btst.l #$1,d4
	bne.w loc_203aac
loc_203a20:
	cmpi.b #$50,d5
	beq.s loc_203a64
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
	bne.s loc_203a5e
	addq.w #$1,d0
loc_203a5e:
	move.w d0,(a2)+
	dbf d1,loc_203a20
loc_203a64:
	rts
loc_203a66:
	cmpi.b #$50,d5
	beq.s loc_203aaa
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
	bne.s loc_203aa4
	addq.w #$1,d0
loc_203aa4:
	move.w d0,(a2)+
	dbf d1,loc_203a66
loc_203aaa:
	rts
loc_203aac:
	cmpi.b #$50,d5
	beq.s loc_203afe
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
	bne.s loc_203af8
	addq.w #$1,d0
loc_203af8:
	move.w d0,(a2)+
	dbf d1,loc_203aac
loc_203afe:
	rts
	.incbin 15104, 92
dat_203b5c:
	.incbin 15196, 246

sub_203c52:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203c64
	move.w #$0,(a1)
	rts
loc_203c64:
	tst.w (a1)
	bne.s loc_203c6e
	move.b #$1,$1(a1)
loc_203c6e:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203cb8
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203caa
	neg.w $10(a0)
loc_203caa:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_2059e4
loc_203cb8:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203cd6
	cmpa.w #$d040,a0
	beq.s loc_203cd6
	tst.b ($ff1906).l
	beq.s loc_203cd6
	jmp (loc_207048).l
loc_203cd6:
	move.b $2a(a0),d0
	beq.s loc_203d00
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203cf2
	cmpi.b #$2d,d0
	bcs.s loc_203cfc
	move.b #$2d,d0
	bra.s loc_203cfc
loc_203cf2:
	cmpi.b #$1e,d0
	bcs.s loc_203cfc
	move.b #$1e,d0
loc_203cfc:
	move.b d0,$2a(a0)
loc_203d00:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d0e(pc,d0.w),d1
	jmp dat_203d0e(pc,d1.w)
dat_203d0e:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d18:
	tst.b ($d300).w
	bne.s loc_203d56
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203d56:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203d7e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203d7e:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203db2:
	tst.b ($ff1506).l
	bne.s loc_203e18
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e18
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e1c
	cmpi.b #$2f,d1
	bne.s loc_203e1a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e18
	tst.b $2c(a0)
	beq.s loc_203e18
	jsr (sub_207840).l
	bne.s loc_203e18
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e10
	moveq #$0,d0
loc_203e10:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e18:
	rts
loc_203e1a:
	rts

sub_203e1c:
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

sub_203e42:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203e4e
	neg.w d0
loc_203e4e:
	btst.b #$1,$2c(a0)
	beq.s loc_203e5e
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203e86
loc_203e5e:
	cmpi.w #$600,d0
	bcs.s loc_203e86
	tst.w $14(a0)
	bpl.s loc_203e78
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203e94
	move.w #$e0,d1
	bra.s loc_203e94
loc_203e78:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203e94
	move.w #$60,d1
	bra.s loc_203e94
loc_203e86:
	cmpi.w #$a0,d1
	beq.s loc_203e94
	bcc.s loc_203e92
	addq.w #$2,d1
	bra.s loc_203e94
loc_203e92:
	subq.w #$2,d1
loc_203e94:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203e42
	bsr.w sub_203db2
	tst.w ($ff1588).l
	beq.s loc_203eba
	btst.b #$4,($f605).w
	beq.s loc_203eba
	move.b #$1,($ff1906).l
	rts
loc_203eba:
	tst.b ($f7cc).w
	bne.s loc_203ec6
	move.w ($f604).w,($f602).w
loc_203ec6:
	btst.b #$0,$2c(a0)
	beq.s loc_203eea
	cmpi.b #$6,($ff1506).l
	bne.s loc_203ee4
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f02
loc_203ee4:
	bsr.w sub_2041cc
	bra.s loc_203f02
loc_203eea:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203f48(pc,d0.w),d1
	jsr dat_203f48(pc,d1.w)
	jsr (sub_20649c).l
loc_203f02:
	bsr.s sub_203f56
	bsr.w sub_204016
	bsr.w sub_204030
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203f2a
	tst.b $1c(a0)
	bne.s loc_203f2a
	move.b $1d(a0),$1c(a0)
loc_203f2a:
	bsr.w sub_2053d4
	tst.b $2c(a0)
	bmi.s loc_203f42
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203f42
	jsr (sub_206be6).l
loc_203f42:
	bsr.w sub_20528a
	rts
dat_203f48:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203f56:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203f7a
	move.w $30(a0),d0
	beq.s loc_203f6c
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203f7a
loc_203f6c:
	btst.b #$6,$2c(a0)
	bne.s loc_203f7a
	jsr (sub_20381a).l
loc_203f7a:
	tst.b ($ff151f).l
	beq.s loc_203fbe
	tst.w $32(a0)
	beq.s loc_203fbe
	subq.w #$1,$32(a0)
	bne.s loc_203fbe
	tst.b ($ff1520).l
	bne.s loc_203fb6
	tst.b ($ff1958).l
	bne.s loc_203fb6
	tst.b ($ff152e).l
	bne.s loc_203fb0
	move.w #$e,d0
	jsr (sub_2059e4).l
loc_203fb0:
	jsr (sub_2019ba).l
loc_203fb6:
	move.b #$0,($ff151f).l
loc_203fbe:
	tst.b ($ff1520).l
	beq.s loc_204014
	tst.w $34(a0)
	beq.s loc_204014
	subq.w #$1,$34(a0)
	bne.s loc_204014
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20400c
	tst.b ($ff1958).l
	bne.s loc_20400c
	tst.b ($ff152e).l
	bne.s loc_204006
	move.w #$e,d0
	jsr (sub_2059e4).l
loc_204006:
	jsr (sub_2019ba).l
loc_20400c:
	move.b #$0,($ff1520).l
loc_204014:
	rts

sub_204016:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_204030:
	cmpi.b #$2,($ff1506).l
	beq.s loc_20403c
loc_20403a:
	rts
loc_20403c:
	cmpi.b #$1,($ff1507).l
	bne.s loc_20404e
	cmpi.w #$c8,$8(a0)
	bcs.s loc_20403a
loc_20404e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204092
	bset.b #$6,$22(a0)
	bne.s loc_20403a
	bsr.w sub_205ce8
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_20403a
	bra.s loc_2040ca
loc_204092:
	tst.w $12(a0)
	beq.s loc_20409a
	bpl.s loc_20403a
loc_20409a:
	bclr.b #$6,$22(a0)
	beq.s loc_20403a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_20403a
	cmpi.w #$f000,$12(a0)
	bgt.s loc_2040ca
	move.w #$f000,$12(a0)
loc_2040ca:
	jsr (sub_207840).l
	bne.s loc_2040de
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_2040de:
	rts

sub_2040e0:
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
	bcs.s loc_2041ba
	move.l #$50000,d0
loc_2041ba:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2041cc:
	cmpi.w #$0,($ff1506).l
	bne.s loc_2041f2
	tst.b ($ff152e).l
	beq.s loc_2041e8
	cmpi.b #$2,($ff152e).l
	bne.s loc_2041f2
loc_2041e8:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2042a2
loc_2041f2:
	tst.b $2a(a0)
	bne.w loc_2042b0
	tst.b ($f784).w
	beq.w loc_2042b0
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204210
	neg.w d0
loc_204210:
	tst.w ($f786).w
	bne.s loc_20421c
	move.w #$1,($f786).w
loc_20421c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204232
	move.b #$1,($ff1502).l
	bra.w loc_2059e0
loc_204232:
	cmpi.w #$d2,d1
	bcs.s loc_204286
	cmpi.b #$2,($ff1522).l
	beq.s loc_204284
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20425c
	move.w #$82,d0
	jsr (sub_2059e4).l
	moveq #$0,d0
loc_20425c:
	add.b ($f784).w,d0
	bpl.s loc_204266
	moveq #$0,d0
	bra.s loc_20426e
loc_204266:
	cmpi.b #$3,d0
	bcs.s loc_20426e
	moveq #$2,d0
loc_20426e:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_2040e0
	move.b #$2,($ff1522).l
loc_204284:
	rts
loc_204286:
	cmpi.w #$5a,d1
	bcc.s loc_20429e
	cmp.w d2,d0
	bcc.w loc_203d18
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20429e:
	cmp.w d2,d0
	bcc.s loc_2042b0
loc_2042a2:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2042b0:
	rts
	bsr.w sub_203c52
	cmpi.b #$2b,$1c(a0)
	bne.s loc_2042e2
	tst.b ($ff195b).l
	beq.s loc_2042d0
	cmpi.b #$79,$1a(a0)
	bne.s loc_20430c
	bra.s loc_2042d8
loc_2042d0:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20430c
loc_2042d8:
	bsr.w sub_204b74
	jmp (sub_203762).l
loc_2042e2:
	bsr.w sub_2043ba
	bsr.w sub_2041cc
	bsr.w sub_204c5e
	bsr.w sub_204d8a
	bsr.w sub_20442e
	bsr.w sub_204be0
	bsr.w sub_204b74
	jsr (sub_2037c4).l
	bsr.w sub_200aca
	bsr.w sub_204e08
loc_20430c:
	rts
	tst.b ($f7c7).w
	bne.s loc_204328
	cmpi.b #$15,$1c(a0)
	beq.s loc_204328
	tst.w $12(a0)
	bmi.s loc_204328
	move.b #$0,$1c(a0)
loc_204328:
	bsr.w sub_2043ba
	bsr.w sub_2041cc
	bsr.w sub_204d48
	bsr.w sub_204a94
	bsr.w sub_204b74
	jsr (sub_203762).l
	btst.b #$6,$22(a0)
	beq.s loc_204350
	subi.w #$28,$12(a0)
loc_204350:
	bsr.w sub_204e52
	bsr.w sub_204e76
	rts
	bsr.w sub_2043ba
	bsr.w sub_2041cc
	bsr.w sub_204c5e
	bsr.w sub_204dc6
	bsr.w sub_2048ce
	bsr.w sub_204b74
	tst.b $2a(a0)
	bne.s loc_20437e
	jsr (sub_2037c4).l
loc_20437e:
	bsr.w sub_200aca
	bsr.w sub_204e08
	rts
	bsr.w sub_2043ba
	bsr.w sub_2041cc
	bsr.w sub_204d48
	bsr.w sub_204a94
	bsr.w sub_204b74
	jsr (sub_203762).l
	btst.b #$6,$22(a0)
	beq.s loc_2043b0
	subi.w #$28,$12(a0)
loc_2043b0:
	bsr.w sub_204e52
	bsr.w sub_204e76
	rts

sub_2043ba:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204426
	tst.w ($ff1506).l
	bne.s loc_204426
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204428).l,a2
loc_2043ee:
	move.b (a2)+,d0
	bmi.s loc_2043fe
	cmp.b d0,d1
	bne.s loc_2043ee
	bset.b #$1,$2c(a0)
	rts
loc_2043fe:
	bclr.b #$1,$2c(a0)
	beq.s loc_204426
	tst.w $12(a0)
	bpl.s loc_204426
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204426
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204426
	neg.w $10(a0)
loc_204426:
	rts
dat_204428:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20442e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204758
	tst.w $3e(a0)
	bne.w loc_204708
	btst.b #$2,($f602).w
	beq.s loc_204456
	bsr.w sub_2047e8
loc_204456:
	btst.b #$3,($f602).w
	beq.s loc_204462
	bsr.w sub_20485e
loc_204462:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204708
	tst.w $14(a0)
	beq.s loc_204482
	tst.b $2a(a0)
	beq.w loc_204708
	bra.s loc_20448e
loc_204482:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20448e:
	btst.b #$3,$22(a0)
	beq.s loc_2044e0
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204538
	cmpi.b #$1e,$0(a1)
	bne.s loc_2044c0
	move.b #$0,$1c(a0)
	bra.w loc_204708
loc_2044c0:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20451c
	cmp.w d2,d1
	bge.s loc_20450a
	bra.s loc_204538
loc_2044e0:
	jsr (sub_20694a).l
	cmpi.w #$c,d1
	blt.s loc_204538
	move.w #$ab,d0
	jsr (sub_2021c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204514
loc_20450a:
	btst.b #$0,$22(a0)
	bne.s loc_204524
	bra.s loc_20452e
loc_204514:
	cmpi.b #$3,$37(a0)
	bne.s loc_204538
loc_20451c:
	btst.b #$0,$22(a0)
	bne.s loc_20452e
loc_204524:
	move.b #$32,$1c(a0)
	bra.w loc_204708
loc_20452e:
	move.b #$6,$1c(a0)
	bra.w loc_204708
loc_204538:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20454c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20454c:
	btst.b #$7,($f788).w
	bne.w loc_204650
	btst.b #$6,($f788).w
	bne.w loc_204670
	btst.b #$1,($f602).w
	bne.w loc_204670
	andi.b #$f,($f788).w
	beq.s loc_204584
	btst.b #$0,($f603).w
	beq.s loc_204598
	bset.b #$7,($f788).w
	bra.w loc_20472c
loc_204584:
	btst.b #$0,($f603).w
	beq.w loc_204598
	move.b #$1,($f788).w
	bra.w loc_20472c
loc_204598:
	btst.b #$0,($f602).w
	beq.s loc_204614
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_2045f6
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2045c8
	asr.w #$1,d2
	sub.w d2,d1
loc_2045c8:
	btst.b #$0,$22(a0)
	beq.s loc_2045d4
	neg.w d0
	neg.w d1
loc_2045d4:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2045ea
	cmp.w d0,d1
	ble.s loc_2045f0
	bra.s loc_2045ee
loc_2045ea:
	cmp.w d1,d0
	ble.s loc_2045f0
loc_2045ee:
	move.w d1,d0
loc_2045f0:
	move.w d0,$14(a0)
	rts
loc_2045f6:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204610
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2021c6).l
loc_204610:
	bra.w loc_20472c
loc_204614:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204634
	move.w #$ab,d0
	jsr (sub_2021c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204670
loc_204634:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2021c6).l
	bra.w loc_204708
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204650:
	btst.b #$0,($f602).w
	beq.s loc_204670
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20472c
	addq.w #$2,($f73e).w
	bra.w loc_20472c
loc_204670:
	btst.b #$6,($f788).w
	bne.w loc_2046ec
	andi.b #$f,($f788).w
	beq.s loc_204694
	btst.b #$1,($f603).w
	beq.s loc_2046a6
	bset.b #$6,($f788).w
	bra.w loc_20472c
loc_204694:
	btst.b #$1,($f603).w
	beq.s loc_2046a6
	move.b #$1,($f788).w
	bra.w loc_20472c
loc_2046a6:
	btst.b #$1,($f602).w
	beq.s loc_204708
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_2046ea
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_2046ea
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2046dc
	neg.w $14(a0)
loc_2046dc:
	move.w #$9c,d0
	jsr (sub_2021c6).l
	bsr.w sub_204c08
loc_2046ea:
	bra.s loc_20472c
loc_2046ec:
	btst.b #$1,($f602).w
	beq.s loc_204708
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20472c
	subq.w #$2,($f73e).w
	bra.s loc_20472c
loc_204708:
	cmpi.w #$60,($f73e).w
	bne.s loc_204722
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20472c
	move.b #$0,($f788).w
	bra.s loc_20472c
loc_204722:
	bcc.s loc_204728
	addq.w #$4,($f73e).w
loc_204728:
	subq.w #$2,($f73e).w
loc_20472c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204758
	move.w $14(a0),d0
	beq.s loc_204758
	bmi.s loc_20474c
	sub.w d5,d0
	bcc.s loc_204746
	move.w #$0,d0
loc_204746:
	move.w d0,$14(a0)
	bra.s loc_204758
loc_20474c:
	add.w d5,d0
	bcc.s loc_204754
	move.w #$0,d0
loc_204754:
	move.w d0,$14(a0)
loc_204758:
	move.b $26(a0),d0
	jsr (sub_2006ca).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204776:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_2047e6
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_2047e6
	bmi.s loc_20478e
	neg.w d1
loc_20478e:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_20680a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_2047e6
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2047e2
	cmpi.b #$40,d0
	beq.s loc_2047d0
	cmpi.b #$80,d0
	beq.s loc_2047ca
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2047ca:
	sub.w d1,$12(a0)
	rts
loc_2047d0:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2047e2:
	add.w d1,$12(a0)
loc_2047e6:
	rts

sub_2047e8:
	tst.b $2a(a0)
	bne.s loc_20485c
	move.w $14(a0),d0
	beq.s loc_2047f6
	bpl.s loc_204826
loc_2047f6:
	bset.b #$0,$22(a0)
	bne.s loc_20480a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20480a:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20481a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20481a
	move.w d1,d0
loc_20481a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204826:
	sub.w d4,d0
	bcc.s loc_20482e
	move.w #$ff80,d0
loc_20482e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20485c
	cmpi.w #$400,d0
	blt.s loc_20485c
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2021c6).l
loc_20485c:
	rts

sub_20485e:
	tst.b $2a(a0)
	bne.s loc_2048cc
	move.w $14(a0),d0
	bmi.s loc_204896
	bclr.b #$0,$22(a0)
	beq.s loc_20487e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20487e:
	cmp.w d6,d0
	bge.s loc_20488a
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20488a
	move.w d6,d0
loc_20488a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204896:
	add.w d4,d0
	bcc.s loc_20489e
	move.w #$80,d0
loc_20489e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048cc
	cmpi.w #$fc00,d0
	bgt.s loc_2048cc
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2021c6).l
loc_2048cc:
	rts

sub_2048ce:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a18
	tst.w $3e(a0)
	bne.s loc_204906
	btst.b #$2,($f602).w
	beq.s loc_2048fa
	bsr.w sub_204a4e
loc_2048fa:
	btst.b #$3,($f602).w
	beq.s loc_204906
	bsr.w sub_204a72
loc_204906:
	tst.b $2a(a0)
	beq.w loc_2049b0
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204926
	asr.w #$1,d2
	sub.w d2,d1
loc_204926:
	btst.b #$0,$22(a0)
	beq.s loc_204932
	neg.w d0
	neg.w d1
loc_204932:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204948
	cmp.w d0,d1
	ble.s loc_20494e
	bra.s loc_20494c
loc_204948:
	cmp.w d1,d0
	ble.s loc_20494e
loc_20494c:
	move.w d1,d0
loc_20494e:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204982
	rts
loc_20495c:
	move.w #$ab,d0
	jsr (sub_2021c6).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_2049e2
loc_204982:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_20495c
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2021c6).l
	btst.b #$0,$22(a0)
	bne.s loc_2049a8
	bsr.w sub_204a72
	bra.s loc_2049b0
loc_2049a8:
	bsr.w sub_204a4e
	bra.s loc_2049b0
	dc.b $4e,$75
loc_2049b0:
	move.w $14(a0),d0
	beq.s loc_2049d2
	bmi.s loc_2049c6
	sub.w d5,d0
	bcc.s loc_2049c0
	move.w #$0,d0
loc_2049c0:
	move.w d0,$14(a0)
	bra.s loc_2049d2
loc_2049c6:
	add.w d5,d0
	bcc.s loc_2049ce
	move.w #$0,d0
loc_2049ce:
	move.w d0,$14(a0)
loc_2049d2:
	tst.w $14(a0)
	bne.s loc_204a18
	move.w #$ab,d0
	jsr (sub_2021c6).l
loc_2049e2:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a02
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a12
loc_204a02:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a12:
	move.b #$5,$1c(a0)
loc_204a18:
	move.b $26(a0),d0
	jsr (sub_2006ca).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204a3c
	move.w #$1000,d1
loc_204a3c:
	cmpi.w #$f000,d1
	bge.s loc_204a46
	move.w #$f000,d1
loc_204a46:
	move.w d1,$10(a0)
	bra.w loc_204776

sub_204a4e:
	move.w $14(a0),d0
	beq.s loc_204a56
	bpl.s loc_204a64
loc_204a56:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204a64:
	sub.w d4,d0
	bcc.s loc_204a6c
	move.w #$ff80,d0
loc_204a6c:
	move.w d0,$14(a0)
	rts

sub_204a72:
	move.w $14(a0),d0
	bmi.s loc_204a86
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204a86:
	add.w d4,d0
	bcc.s loc_204a8e
	move.w #$80,d0
loc_204a8e:
	move.w d0,$14(a0)
	rts

sub_204a94:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204ace
	tst.w ($ff1506).l
	bne.s loc_204ace
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204ac6
	cmpi.w #$840,$8(a0)
	bcc.s loc_204ac6
	rts
loc_204ac6:
	btst.b #$1,$2c(a0)
	bne.s loc_204afe
loc_204ace:
	btst.b #$2,($f602).w
	beq.s loc_204ae8
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204ae8
	move.w d1,d0
loc_204ae8:
	btst.b #$3,($f602).w
	beq.s loc_204afe
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204afe
	move.w d6,d0
loc_204afe:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b14
	bcc.s loc_204b10
	addq.w #$4,($f73e).w
loc_204b10:
	subq.w #$2,($f73e).w
loc_204b14:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204b42
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204b42
	bmi.s loc_204b36
	sub.w d1,d0
	bcc.s loc_204b30
	move.w #$0,d0
loc_204b30:
	move.w d0,$10(a0)
	rts
loc_204b36:
	sub.w d1,d0
	bcs.s loc_204b3e
	move.w #$0,d0
loc_204b3e:
	move.w d0,$10(a0)
loc_204b42:
	rts
	.incbin 19268, 48

sub_204b74:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204bc8
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204ba2
	addi.w #$38,d0
loc_204ba2:
	cmp.w d1,d0
	bls.s loc_204bc8
loc_204ba6:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204bb6
	rts
loc_204bb6:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206e78
	move.b #$6,$24(a0)
	rts
loc_204bc8:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ba6

sub_204be0:
	tst.b ($f7ca).w
	bne.s loc_204c06
	move.w $14(a0),d0
	bpl.s loc_204bee
	neg.w d0
loc_204bee:
	cmpi.w #$80,d0
	bcs.s loc_204c06
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c06
	btst.b #$1,($f602).w
	bne.s sub_204c08
loc_204c06:
	rts

sub_204c08:
	btst.b #$2,$22(a0)
	beq.s loc_204c12
	bra.s loc_204c42
loc_204c12:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204c32
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c42
loc_204c32:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c42:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204c5c
	cmpi.w #$200,$14(a0)
	bcc.s loc_204c5c
	move.w #$200,$14(a0)
loc_204c5c:
	rts

sub_204c5e:
	tst.b $2a(a0)
	beq.s loc_204c66
	rts
loc_204c66:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204c78
	tst.w $14(a0)
	beq.w loc_204d3e
loc_204c78:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204d3e
	btst.b #$3,$22(a0)
	beq.s loc_204c94
	jsr (sub_20596a).l
	beq.s loc_204cc4
loc_204c94:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206874
	cmpi.w #$6,d1
	blt.w loc_204d3e
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204cba
	move.w #$380,d2
loc_204cba:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204cc4:
	jsr (sub_2006ca).l
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
	jsr (sub_2021c6).l
	btst.b #$2,$22(a0)
	bne.s loc_204d40
	tst.b ($ff195b).l
	beq.s loc_204d22
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204d32
loc_204d22:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204d32:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204d3e:
	rts
loc_204d40:
	bset.b #$4,$22(a0)
	rts

sub_204d48:
	tst.b $3c(a0)
	beq.s loc_204d7a
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204d5e
	move.w #$fe00,d1
loc_204d5e:
	cmp.w $12(a0),d1
	ble.s loc_204d78
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204d78
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204d78:
	rts
loc_204d7a:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204d88
	move.w #$f040,$12(a0)
loc_204d88:
	rts

sub_204d8a:
	tst.b $2a(a0)
	bne.s loc_204dc4
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204dc4
	move.b $26(a0),d0
	jsr (sub_2006ca).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204dc4
	bmi.s loc_204dc0
	tst.w d0
	beq.s loc_204dbe
	add.w d0,$14(a0)
loc_204dbe:
	rts
loc_204dc0:
	add.w d0,$14(a0)
loc_204dc4:
	rts

sub_204dc6:
	tst.b $2a(a0)
	bne.s loc_204e06
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e06
	move.b $26(a0),d0
	jsr (sub_2006ca).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204dfc
	tst.w d0
	bpl.s loc_204df6
	asr.l #$2,d0
loc_204df6:
	add.w d0,$14(a0)
	rts
loc_204dfc:
	tst.w d0
	bmi.s loc_204e02
	asr.l #$2,d0
loc_204e02:
	add.w d0,$14(a0)
loc_204e06:
	rts

sub_204e08:
	nop
	tst.b $38(a0)
	bne.s loc_204e4a
	tst.w $3e(a0)
	bne.s loc_204e4c
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204e4a
	move.w $14(a0),d0
	bpl.s loc_204e2c
	neg.w d0
loc_204e2c:
	cmpi.w #$280,d0
	bcc.s loc_204e4a
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204e4a:
	rts
loc_204e4c:
	subq.w #$1,$3e(a0)
	rts

sub_204e52:
	btst.b #$1,$2c(a0)
	bne.s loc_204e74
	move.b $26(a0),d0
	beq.s loc_204e74
	bpl.s loc_204e6a
	addq.b #$2,d0
	bcc.s loc_204e68
	moveq #$0,d0
loc_204e68:
	bra.s loc_204e70
loc_204e6a:
	subq.b #$2,d0
	bcc.s loc_204e70
	moveq #$0,d0
loc_204e70:
	move.b d0,$26(a0)
loc_204e74:
	rts

sub_204e76:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200962).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204f5a
	cmpi.b #$80,d0
	beq.w loc_204fbc
	cmpi.b #$c0,d0
	beq.w loc_205018
	bsr.w sub_206b8a
	tst.w d1
	bpl.s loc_204ec8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204ec8:
	bsr.w sub_2069ec
	tst.w d1
	bpl.s loc_204eda
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204eda:
	bsr.w sub_20689c
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204f58
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204ef8
	cmp.b d2,d0
	blt.s loc_204f58
loc_204ef8:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20507a
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f36
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204f28
	asr.w $12(a0)
	bra.s loc_204f4a
loc_204f28:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204f36:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204f4a
	move.w #$fc0,$12(a0)
loc_204f4a:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204f58
	neg.w $14(a0)
loc_204f58:
	rts
loc_204f5a:
	bsr.w sub_206b8a
	tst.w d1
	bpl.s loc_204f74
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204f74:
	bsr.w sub_206a44
	tst.w d1
	bpl.s loc_204f8e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204f8c
	move.w #$0,$12(a0)
loc_204f8c:
	rts
loc_204f8e:
	tst.w $12(a0)
	bmi.s loc_204fba
	bsr.w sub_20689c
	tst.w d1
	bpl.s loc_204fba
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20507a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204fba:
	rts
loc_204fbc:
	bsr.w sub_206b8a
	tst.w d1
	bpl.s loc_204fce
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fce:
	bsr.w sub_2069ec
	tst.w d1
	bpl.s loc_204fe0
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204fe0:
	bsr.w sub_206a44
	tst.w d1
	bpl.s loc_205016
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205000
	move.w #$0,$12(a0)
	rts
loc_205000:
	move.b d3,$26(a0)
	bsr.w sub_2050ec
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205016
	neg.w $14(a0)
loc_205016:
	rts
loc_205018:
	bsr.w sub_2069ec
	tst.w d1
	bpl.s loc_205032
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_205032:
	bsr.w sub_206a44
	tst.w d1
	bpl.s loc_20504c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20504a
	move.w #$0,$12(a0)
loc_20504a:
	rts
loc_20504c:
	tst.w $12(a0)
	bmi.s loc_205078
	bsr.w sub_20689c
	tst.w d1
	bpl.s loc_205078
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_20507a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_205078:
	rts

sub_20507a:
	btst.b #$4,$22(a0)
	beq.s loc_205084
	nop
loc_205084:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_2050de
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_2050be
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_2050ce
loc_2050be:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_2050ce:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2021c6).l
loc_2050de:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_2050ec:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2037c4).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205126
	subi.w #$20,$12(a0)
loc_205126:
	jsr (sub_20649c).l
	bsr.w sub_205142
	bsr.w sub_204b74
	bsr.w sub_204016
	bsr.w sub_2053d4
	jmp (sub_20381a).l

sub_205142:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206e78
	bsr.w sub_204e76
	btst.b #$1,$22(a0)
	bne.s loc_20517c
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_20517c:
	rts
	bsr.w sub_205196
	jsr (sub_203762).l
	bsr.w sub_204016
	bsr.w sub_2053d4
	jmp (sub_20381a).l

sub_205196:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205204
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_2051ca
	clr.b ($ff1508).l
loc_2051ca:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2051e4
	tst.b ($ff0f01).l
	beq.s loc_2051e4
	move.b #$0,($ff1508).l
	bra.s loc_2051fe
loc_2051e4:
	jsr (sub_207840).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205204
loc_2051fe:
	move.w #$3c,$3a(a0)
loc_205204:
	rts
	tst.w $3a(a0)
	beq.w loc_205288
	subq.w #$1,$3a(a0)
	bne.w loc_205288
	move.w #$1,($ff1502).l
	jsr (sub_20215e).l
	move.b #$1,($a01c3e).l
	jsr (sub_20217a).l
	bsr.w sub_20762e
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205256
	cmpi.b #$1,($ff152e).l
	bne.s loc_205256
	bclr.b #$1,($ff151c).l
loc_205256:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_205284
	cmpi.b #$1,($ff152e).l
	bne.s loc_20527e
	tst.b ($ff158e).l
	beq.s loc_205284
	move.b #$1,($ff1522).l
	bra.s loc_205284
loc_20527e:
	clr.b ($ff1522).l
loc_205284:
	bra.w sub_2059e4
loc_205288:
	rts

sub_20528a:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2052b2
	cmpi.b #$5,($ff1506).l
	beq.s loc_2052b2
	cmpi.b #$2,($ff1506).l
	beq.s loc_2052b2
	tst.b ($ff1506).l
	bne.w loc_205374
loc_2052b2:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_2052f0
	tst.b ($ff1506).l
	bne.w loc_205376
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205376
	bra.s loc_2052f8
loc_2052f0:
	cmp.b ($f7af).w,d1
	beq.w loc_205376
loc_2052f8:
	cmp.b ($f7ac).w,d1
	beq.s loc_205328
	cmp.b ($f7ad).w,d1
	beq.s loc_20530c
	bclr.b #$6,$1(a0)
	rts
loc_20530c:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20538e
	btst.b #$1,$22(a0)
	beq.s loc_205328
	bclr.b #$6,$1(a0)
	rts
loc_205328:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20533a
	bclr.b #$6,$1(a0)
	rts
loc_20533a:
	cmpi.b #$e0,d2
	bcs.s loc_205348
	bset.b #$6,$1(a0)
	rts
loc_205348:
	btst.b #$6,$1(a0)
	bne.s loc_205364
	move.b $26(a0),d1
	beq.s loc_205374
	cmpi.b #$80,d1
	bhi.s loc_205374
	bset.b #$6,$1(a0)
	rts
loc_205364:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205374
	bclr.b #$6,$1(a0)
loc_205374:
	rts
loc_205376:
	btst.b #$2,$22(a0)
	bne.s loc_205388
	move.w #$9c,d0
	jsr (sub_2021c6).l
loc_205388:
	jmp (sub_204c08).l
loc_20538e:
	tst.w $12(a0)
	bmi.s loc_2053d2
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2053c6
	cmpi.w #$38,d1
	bcs.s loc_2053be
	cmpi.w #$80,d1
	bcs.s loc_2053d2
loc_2053b6:
	bclr.b #$6,$1(a0)
	rts
loc_2053be:
	bset.b #$6,$1(a0)
	rts
loc_2053c6:
	cmpi.w #$38,d1
	bcs.s loc_2053b6
	cmpi.w #$80,d1
	bcc.s loc_2053be
loc_2053d2:
	rts

sub_2053d4:
	lea (dat_2056c4).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_2053f6
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_2053f6:
	bsr.w sub_205666
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20546e
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20543c
	move.b d0,$1e(a0)

sub_205420:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205434
	bpl.s loc_205434
	cmpi.b #$fd,d0
	bge.s loc_20543e
loc_205434:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20543c:
	rts
loc_20543e:
	addq.b #$1,d0
	bne.s loc_20544e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205434
loc_20544e:
	addq.b #$1,d0
	bne.s loc_205462
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205434
loc_205462:
	addq.b #$1,d0
	bne.s loc_20546c
	move.b $2(a1,d1.w),$1c(a0)
loc_20546c:
	rts
loc_20546e:
	subq.b #$1,$1e(a0)
	bpl.s loc_20543c
	addq.b #$1,d0
	bne.w loc_205528
	tst.b ($ff195b).l
	bne.w loc_2055f0
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205496
	not.b d0
loc_205496:
	btst.b #$1,$2c(a0)
	bne.s loc_2054a4
	addi.b #$10,d0
	bra.s loc_2054a6
loc_2054a4:
	addq.b #$8,d0
loc_2054a6:
	bpl.s loc_2054aa
	moveq #$3,d1
loc_2054aa:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20559c
	move.w $14(a0),d2
	bpl.s loc_2054c8
	neg.w d2
loc_2054c8:
	btst.b #$1,$2c(a0)
	beq.s loc_2054e0
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2058c6).l,a1
	bra.s loc_20550a
loc_2054e0:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2058a0).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20550a
	lea (dat_205744).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20550a
	lea (dat_20573c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20550a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205518
	moveq #$0,d2
loc_205518:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205420
	add.b d3,$1a(a0)
	rts
loc_205528:
	addq.b #$1,d0
	bne.s loc_205598
	move.w $14(a0),d2
	bpl.s loc_205534
	neg.w d2
loc_205534:
	lea (dat_205822).l,a1
	tst.b ($ff195b).l
	bne.s loc_205572
	lea (dat_205754).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205566
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205572
	lea (dat_2058ce).l,a1
	bra.s loc_205572
loc_205566:
	cmpi.w #$600,d2
	bcc.s loc_205572
	lea (dat_20574c).l,a1
loc_205572:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20557c
	moveq #$0,d2
loc_20557c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205420
loc_205598:
	addq.b #$1,d0
	bne.s loc_2055dc
loc_20559c:
	move.w $14(a0),d2
	bmi.s loc_2055a4
	neg.w d2
loc_2055a4:
	addi.w #$800,d2
	bpl.s loc_2055ac
	moveq #$0,d2
loc_2055ac:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205834).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055c6
	lea (dat_20575c).l,a1
loc_2055c6:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205420
loc_2055dc:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_2055f0:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205602
	not.b d0
loc_205602:
	addi.b #$10,d0
	bpl.s loc_20560a
	moveq #$0,d1
loc_20560a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205638
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205528
loc_205638:
	move.w $14(a0),d2
	bpl.s loc_205640
	neg.w d2
loc_205640:
	lea (dat_20581c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205652
	lea (dat_205816).l,a1
loc_205652:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20565c
	moveq #$0,d2
loc_20565c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205420

sub_205666:
	tst.b ($ff195b).l
	beq.s loc_205672
	move.b dat_205674(pc,d0.w),d0
loc_205672:
	rts
dat_205674:
	.incbin 22132, 80
dat_2056c4:
	.incbin 22212, 120
dat_20573c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205744:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20574c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205754:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20575c:
	.incbin 22364, 186
dat_205816:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20581c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205822:
	.incbin 22562, 18
dat_205834:
	.incbin 22580, 108
dat_2058a0:
	.incbin 22688, 38
dat_2058c6:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2058ce:
	.incbin 22734, 56

sub_205906:
	tst.b (a0)
	beq.w loc_205968
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205968
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205968
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_20593a:
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
loc_205954:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205954
	dbf d1,loc_20593a
loc_205968:
	rts

sub_20596a:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2059de
	move.w #$98,d0
	jsr (sub_2021c6).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200962).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_2059cc
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_2059cc:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_2059de:
	rts
loc_2059e0:
	move.w #$e,d0

sub_2059e4:
	cmpi.w #$67,d0
	bne.s loc_2059f2
	move.b #$1,($ff1958).l
loc_2059f2:
	move.w d0,($a12010).l
loc_2059f8:
	move.w ($a12020).l,d0
	beq.s loc_2059f8
	cmp.w ($a12020).l,d0
	bne.s loc_2059f8
	move.w #$0,($a12010).l
loc_205a10:
	move.w ($a12020).l,d0
	bne.s loc_205a10
	move.w ($a12020).l,d0
	bne.s loc_205a10
	rts
	dc.b $00,$00

sub_205a24:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205a40
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205a40:
	subq.b #$1,$1e(a0)
	bpl.s loc_205a80
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205a82
loc_205a5c:
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
loc_205a80:
	rts
loc_205a82:
	addq.b #$1,d0
	bne.s loc_205a92
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205a5c
loc_205a92:
	addq.b #$1,d0
	bne.s loc_205aa6
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205a5c
loc_205aa6:
	addq.b #$1,d0
	bne.s loc_205ab0
	move.b $2(a1,d1.w),$1c(a0)
loc_205ab0:
	addq.b #$1,d0
	bne.s loc_205ab8
	addq.b #$2,$24(a0)
loc_205ab8:
	addq.b #$1,d0
	bne.s loc_205ac6
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205ac6:
	addq.b #$1,d0
	bne.s loc_205ace
	addq.b #$2,$25(a0)
loc_205ace:
	rts
	.incbin 23248, 536

sub_205ce8:
	rts
	.incbin 23786, 116

sub_205d5e:
	tst.b $25(a0)
	bne.s loc_205d8e
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207840).l
	bne.s loc_205d8e
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205d8e:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205d9e(pc,d0.w),d0
	jmp dat_205d9e(pc,d0.w)
dat_205d9e:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205dc6
	andi.b #$7f,$2(a0)
loc_205dc6:
	move.l #$23b6e6,$4(a0)
	bsr.s sub_205d5e
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205df4
	move.w #$100,$1c(a0)
loc_205df4:
	lea (dat_23b6d2).l,a1
	bsr.w sub_205a24
	jmp (sub_20381a).l
	tst.b $25(a0)
	beq.s loc_205e10
	jmp (sub_2038c6).l
loc_205e10:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205e32(pc,d0.w),d0
	jsr dat_205e32(pc,d0.w)
	jmp (sub_20381a).l
dat_205e32:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205e60
	andi.b #$7f,$2(a0)
loc_205e60:
	move.l #$2336d8,$4(a0)
	tst.b $28(a0)
	bne.s loc_205e86
	bsr.w sub_205ef2
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205ee8
loc_205e86:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_20694a).l
	tst.w d1
	bpl.s loc_205ee4
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205ece
	bsr.w sub_205ef2
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205f18
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205ece:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205ee8
loc_205ee4:
	addq.w #$2,$c(a0)
loc_205ee8:
	lea (dat_2336bc).l,a1
	bra.w sub_205a24

sub_205ef2:
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

sub_205f18:
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
	bra.s loc_205ee8
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205ee8
	.incbin 24404, 836
loc_206298:
	bclr.b #$7,($ff156b).l
	beq.s loc_2062e6
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2062e8(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2062bc:
	move.l (a1)+,(a2)+
	dbf d0,loc_2062bc
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2062e6:
	rts
dat_2062e8:
	.incbin 25320, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20631e(pc,d0.w),d0
	jsr dat_20631e(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206318
	jsr (sub_20381a).l
loc_206318:
	jmp (sub_207876).l
dat_20631e:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23b4fa,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206400
	cmpi.b #$6,$24(a1)
	bcc.w loc_206400
	bsr.w sub_206464
	beq.w loc_206400
	tst.b $28(a0)
	bne.s loc_2063b2
	move.w $10(a1),d0
	bpl.s loc_206372
	neg.w d0
loc_206372:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206384
	move.w #$d00,d1
loc_206384:
	cmp.w d1,d0
	bcc.s loc_20638a
	move.w d1,d0
loc_20638a:
	tst.w $10(a1)
	bpl.s loc_206392
	neg.w d0
loc_206392:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_2063e2
	neg.w $14(a1)
	bra.s loc_2063e2
loc_2063b2:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206402
	move.w $12(a1),d0
	bpl.s loc_2063c2
	neg.w d0
loc_2063c2:
	cmpi.w #$d00,d0
	bcc.s loc_2063cc
	move.w #$d00,d0
loc_2063cc:
	tst.w $12(a1)
	bpl.s loc_2063d4
	neg.w d0
loc_2063d4:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_2063e2:
	bset.b #$2,$22(a1)
	bne.s loc_206400
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206400:
	rts
loc_206402:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_20644e
	cmpi.b #$2,$28(a0)
	bne.s loc_20641e
	tst.w $12(a1)
	bpl.s loc_2063e2
	bra.s loc_206424
loc_20641e:
	tst.w $12(a1)
	bmi.s loc_2063e2
loc_206424:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_206436
	btst.l #$2,d1
	beq.s loc_2063e2
	neg.w d0
loc_206436:
	cmpi.b #$2,$28(a0)
	beq.s loc_206444
	bset.b #$1,$22(a1)
loc_206444:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_2063e2
loc_20644e:
	tst.w $10(a1)
	bmi.s loc_2063e2
	btst.l #$0,d1
	beq.w loc_2063e2
	move.w #$f600,d0
	bra.w loc_2063d4

sub_206464:
	tst.b ($ff1906).l
	bne.s loc_206498
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_206498
	cmpi.w #$50,d0
	bcc.s loc_206498
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_206498
	cmpi.w #$50,d0
	bcc.s loc_206498
	moveq #$1,d0
	rts
loc_206498:
	moveq #$0,d0
	rts

sub_20649c:
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_2064f8
	move.w $10(a0),d0
	bpl.s loc_2064b0
	neg.w d0
loc_2064b0:
	cmpi.w #$a00,d0
	bcs.s loc_2064f8
	move.w $c(a0),d2
	move.w $8(a0),d3
	addq.w #$8,d2
	jsr (sub_200e38).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_2064e4
	add.b ($ff156a).l,d1
loc_2064e4:
	add.w d1,d1
	move.w dat_2064fa(pc,d1.w),d1
	lea dat_2064fa(pc,d1.w),a1
loc_2064ee:
	move.w (a1)+,d1
	bmi.s loc_2064f8
	cmp.w d1,d0
	bne.s loc_2064ee
	bra.s loc_20653a
loc_2064f8:
	rts
dat_2064fa:
	.incbin 25850, 64
loc_20653a:
	jsr (sub_207840).l
	bne.s loc_20656a
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $16(a0),d0
	ext.w d0
	add.w d0,$c(a1)
	tst.w $10(a0)
	bpl.s loc_20656a
	bset.b #$0,$22(a1)
loc_20656a:
	rts
	.incbin 25964, 216
loc_206644:
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
	bne.s loc_2066fe
	move.b ($ff1593).l,($ff195b).l
loc_2066fe:
	tst.b ($ff1522).l
	bpl.s loc_206714
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206714:
	rts

sub_206716:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206644
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
	bne.s loc_2067d0
	move.b ($ff1591).l,($ff195b).l
loc_2067d0:
	cmpi.b #$2,($ff1506).l
	bne.s loc_2067f2
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_2067f2:
	tst.b ($ff1522).l
	bpl.s loc_206808
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206808:
	rts

sub_20680a:
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
	bpl.s loc_206846
	move.b d1,d0
	bpl.s loc_206840
	subq.b #$1,d0
loc_206840:
	addi.b #$20,d0
	bra.s loc_206850
loc_206846:
	move.b d1,d0
	bpl.s loc_20684c
	addq.b #$1,d0
loc_20684c:
	addi.b #$1f,d0
loc_206850:
	andi.b #$c0,d0
	beq.w loc_206920
	cmpi.b #$80,d0
	beq.w loc_206abc
	andi.b #$38,d1
	bne.s loc_206868
	addq.w #$8,d2
loc_206868:
	cmpi.b #$40,d0
	beq.w loc_206b92
	bra.w loc_2069f4

sub_206874:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206b1a
	cmpi.b #$80,d0
	beq.w sub_206a44
	cmpi.b #$c0,d0
	beq.w loc_206984

sub_20689c:
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
	jsr (sub_201020).l
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
	jsr (sub_201020).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206900:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_20690e
	move.b ($f768).w,d3
	exg d0,d1
loc_20690e:
	btst.l #$0,d3
	beq.s loc_206916
	move.b d2,d3
loc_206916:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206920:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201020).l
	move.b #$0,d2
loc_20693c:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206948
	move.b d2,d3
loc_206948:
	rts

sub_20694a:
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
	jsr (sub_201020).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206982
	move.b #$0,d3
loc_206982:
	rts
loc_206984:
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
	jsr (sub_201190).l
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
	jsr (sub_201190).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206900

sub_2069ec:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2069f4:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201190).l
	move.b #$c0,d2
	bra.w loc_20693c
	dc.b $d6,$68,$00,$08,$34,$28,$00,$0c
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201190).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a42
	move.b #$c0,d3
loc_206a42:
	rts

sub_206a44:
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
	jsr (sub_201020).l
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
	jsr (sub_201020).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206900

sub_206ab4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206abc:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201020).l
	move.b #$80,d2
	bra.w loc_20693c
	.incbin 27360, 58
loc_206b1a:
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
	jsr (sub_201190).l
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
	jsr (sub_201190).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206900

sub_206b8a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b92:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201190).l
	move.b #$40,d2
	bra.w loc_20693c
	.incbin 27574, 48

sub_206be6:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206c0a
	addi.w #$c,d3
	moveq #$a,d5
loc_206c0a:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206c18:
	tst.b $1(a1)
	bpl.s loc_206c24
	move.b $20(a1),d0
	bne.s loc_206c30
loc_206c24:
	lea $40(a1),a1
	dbf d6,loc_206c18
	moveq #$0,d0
	rts
loc_206c30:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206fca).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206c58
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206c5e
	bra.w loc_206c24
loc_206c58:
	cmp.w d4,d0
	bhi.w loc_206c24
loc_206c5e:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206c76
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206c7c
	bra.w loc_206c24
loc_206c76:
	cmp.w d5,d0
	bhi.w loc_206c24
loc_206c7c:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206cf0
	cmpi.b #$c0,d1
	beq.w loc_206ed0
	tst.b d1
	bmi.w sub_206dba
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206cb4
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206cb2
	addq.b #$2,$24(a1)
loc_206cb2:
	rts
loc_206cb4:
	tst.w $12(a0)
	bpl.s loc_206cde
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206cee
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206cee
	addq.b #$4,$25(a1)
	rts
loc_206cde:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206cee
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206cee:
	rts

sub_206cf0:
	tst.b ($ff1521).l
	bne.s loc_206d0a
	tst.b ($ff151f).l
	bne.s loc_206d0a
	cmpi.b #$2,$1c(a0)
	bne.w sub_206dba
loc_206d0a:
	tst.b $21(a1)
	beq.s loc_206d34
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206d32
	bset.b #$7,$22(a1)
loc_206d32:
	rts
loc_206d34:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206d4c
	moveq #$6,d0
loc_206d4c:
	move.w d0,$3e(a1)
	move.w dat_206dac(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206d66
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206d66:
	bsr.w sub_20ae02
	move.w #$96,d0
	jsr (sub_2021c6).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206d9c
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206da4
	neg.w $12(a0)
	rts
loc_206d9c:
	addi.w #$100,$12(a0)
	rts
loc_206da4:
	subi.w #$100,$12(a0)
	rts
dat_206dac:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206dba:
	tst.b ($ff1521).l
	bne.s loc_206dca
	tst.b ($ff151f).l
	beq.s loc_206dce
loc_206dca:
	moveq #$ffffffff,d0
	rts
loc_206dce:
	nop
	tst.w $30(a0)
	bne.s loc_206dca
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206e04
	tst.w ($ff1512).l
	beq.w loc_206e6e
	jsr (sub_207840).l
	bne.s loc_206e04
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206e04:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206e1a
	move.b #$0,($ff156f).l
loc_206e1a:
	move.b #$4,$24(a0)
	bsr.w sub_20507a
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206e4a
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206e4a:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206e58
	neg.w $10(a0)
loc_206e58:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206e6e:
	tst.w ($ff1588).l
	bne.w loc_206e04

sub_206e78:
	tst.w ($ff1906).l
	bne.s loc_206ecc
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_20507a
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2021c6).l
loc_206ecc:
	moveq #$ffffffff,d0
	rts
loc_206ed0:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206f68
	cmpi.b #$23,d1
	beq.w loc_206f68
	cmpi.b #$2d,d1
	beq.w loc_206fbe
	cmpi.b #$31,d1
	beq.w loc_206fbe
	cmpi.b #$35,d1
	beq.w loc_206fb0
	cmpi.b #$3a,d1
	beq.w loc_206fb0
	cmpi.b #$3b,d1
	beq.w loc_206fb0
	tst.b ($f7aa).w
	beq.w loc_206f66
	cmpi.b #$1,($f7aa).w
	beq.s loc_206f30
	cmpi.b #$4,($f7aa).w
	beq.s loc_206f52
	cmpi.b #$5,($f7aa).w
	beq.s loc_206f60
loc_206f30:
	cmpi.b #$3c,d1
	blt.s loc_206f66
	cmpi.b #$3f,d1
	bgt.s loc_206f66
	bsr.w sub_206cf0
	tst.b $20(a1)
	bne.s loc_206f4a
	addq.b #$3,$21(a1)
loc_206f4a:
	clr.b $20(a1)
	bra.w loc_206f68
loc_206f52:
	cmpi.b #$3f,d1
	beq.s loc_206f74
	cmpi.b #$3e,d1
	beq.s loc_206f6e
	bra.s loc_206f66
loc_206f60:
	cmpi.b #$3d,d1
	beq.s loc_206f6e
loc_206f66:
	rts
loc_206f68:
	addq.b #$1,$21(a1)
	rts
loc_206f6e:
	bsr.w sub_206dba
	bra.s loc_206f68
loc_206f74:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206fae
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206fae
	neg.w $10(a0)
loc_206fae:
	rts
loc_206fb0:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206fbc
	addq.b #$1,$21(a1)
loc_206fbc:
	rts
loc_206fbe:
	btst.b #$2,$22(a0)
	beq.w sub_206cf0
	bra.s loc_206f68
dat_206fca:
	.incbin 28618, 126
loc_207048:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20705e
	move.l #$4000,(dat_2071d8).l
	bra.s loc_20707e
loc_20705e:
	addi.l #$2000,(dat_2071d8).l
	cmpi.l #$80000,(dat_2071d8).l
	bls.s loc_20707e
	move.l #$80000,(dat_2071d8).l
loc_20707e:
	move.l (dat_2071d8).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207090
	sub.l d0,$c(a0)
loc_207090:
	btst.b #$1,($f604).w
	beq.s loc_20709c
	add.l d0,$c(a0)
loc_20709c:
	btst.b #$2,($f604).w
	beq.s loc_2070a8
	sub.l d0,$8(a0)
loc_2070a8:
	btst.b #$3,($f604).w
	beq.s loc_2070b4
	add.l d0,$8(a0)
loc_2070b4:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200e38).l
	move.w (a1),($ff194e).l
	lea (dat_2071dc).l,a2
	btst.b #$6,($f605).w
	beq.s loc_2070f6
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2070f0
	move.b #$0,d1
loc_2070f0:
	move.b d1,($ff1904).l
loc_2070f6:
	btst.b #$7,($f605).w
	beq.s loc_207116
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207110
	add.b (a2),d1
loc_207110:
	move.b d1,($ff1904).l
loc_207116:
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
	beq.s loc_2071a2
	bsr.w sub_207840
	bne.s loc_2071a2
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
loc_2071a2:
	btst.b #$4,($f605).w
	beq.s loc_2071d2
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2071d2:
	jmp (sub_20381a).l
dat_2071d8:
	dc.b $00,$00,$40,$00
dat_2071dc:
	.incbin 29148, 1106

sub_20762e:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20763c:
	clr.l (a2)+
	dbf d0,loc_20763c
	rts

sub_207644:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207652(pc,d0.w),d0
	jmp dat_207652(pc,d0.w)
dat_207652:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2078f2).l,a0
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
	bcc.s loc_207690
	moveq #$0,d6
loc_207690:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207698:
	cmp.w (a0),d6
	bls.s loc_2076aa
	tst.b $4(a0)
	bpl.s loc_2076a6
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2076a6:
	addq.w #$8,a0
	bra.s loc_207698
loc_2076aa:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2076ca
loc_2076b8:
	cmp.w (a0),d6
	bls.s loc_2076ca
	tst.b $4(a0)
	bpl.s loc_2076c6
	addq.b #$1,$1(a2)
loc_2076c6:
	addq.w #$8,a0
	bra.s loc_2076b8
loc_2076ca:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2077b4
	bge.s loc_20775a
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207736
loc_207704:
	cmp.w -$8(a0),d6
	bge.s loc_207736
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20771a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20771a:
	bsr.w sub_2077d8
	bne.s loc_207724
	subq.w #$8,a0
	bra.s loc_207704
loc_207724:
	tst.b $4(a0)
	bpl.s loc_207734
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207734:
	addq.w #$8,a0
loc_207736:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207742:
	cmp.w -$8(a0),d6
	bgt.s loc_207754
	tst.b -$4(a0)
	bpl.s loc_207750
	subq.b #$1,(a2)
loc_207750:
	subq.w #$8,a0
	bra.s loc_207742
loc_207754:
	move.l a0,($f770).w
	rts
loc_20775a:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_20776e:
	cmp.w (a0),d6
	bls.s loc_207790
	tst.b $4(a0)
	bpl.s loc_20777c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20777c:
	bsr.w sub_2077d8
	beq.s loc_20776e
	tst.b $4(a0)
	bpl.s loc_207790
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207790:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2077b0
loc_20779e:
	cmp.w (a0),d6
	bls.s loc_2077b0
	tst.b $4(a0)
	bpl.s loc_2077ac
	addq.b #$1,$1(a2)
loc_2077ac:
	addq.w #$8,a0
	bra.s loc_20779e
loc_2077b0:
	move.l a0,($f774).w
loc_2077b4:
	rts

sub_2077b6:
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

sub_2077d8:
	bsr.s sub_2077b6
	beq.s loc_2077ea
	tst.b $4(a0)
	bpl.s loc_2077f0
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2077f0
loc_2077ea:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2077f0:
	bsr.w sub_207840
	bne.s loc_20783e
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
	bpl.s loc_207820
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207820:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207832
	nop
	nop
	nop
	nop
loc_207832:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_20783e:
	rts

sub_207840:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_207848:
	tst.b (a1)
	beq.s loc_207854
	lea $40(a1),a1
	dbf d0,loc_207848
loc_207854:
	rts

sub_207856:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207874
loc_207868:
	tst.b (a1)
	beq.s loc_207874
	lea $40(a1),a1
	dbf d0,loc_207868
loc_207874:
	rts

sub_207876:
	move.w $8(a0),d0

sub_20787a:
	tst.b $1(a0)
	bmi.s loc_2078e4
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2078e4
loc_207898:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2078da
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2078d2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2078ca
	moveq #$0,d1
	bra.s loc_2078d2
loc_2078ca:
	cmpi.w #$3,d1
	bcs.s loc_2078d2
	moveq #$2,d1
loc_2078d2:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2078da:
	jsr (sub_2038c6).l
	moveq #$1,d0
	rts
loc_2078e4:
	btst.b #$7,($ff152e).l
	bne.s loc_207898
	moveq #$0,d0
	rts
dat_2078f2:
	.incbin 30962, 6602

sub_2092bc:
	btst.b #$3,$22(a0)
	beq.s loc_20932c
	btst.b #$3,$22(a1)
	beq.s loc_20932c
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_20932c
	tst.b $2a(a1)
	beq.s loc_2092ee
	move.w #$ab,d0
	jsr (sub_2021c6).l
loc_2092ee:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_20931a
	cmpi.b #$17,$1c(a1)
	beq.s loc_20931a
	bclr.b #$0,$2c(a1)
loc_20931a:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_20932c
	bclr.b #$1,$22(a1)
loc_20932c:
	rts

sub_20932e:
	cmpi.b #$4,$24(a1)
	bne.s loc_209340
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_209340:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_2093a0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209362
	bclr.b #$3,$22(a0)
	bra.w sub_2092bc
loc_209362:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_2093a0
	tst.b ($ff195b).l
	beq.s loc_20938a
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_20939a
loc_20938a:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_20939a:
	move.b #$0,$1c(a1)
loc_2093a0:
	bset.b #$3,$22(a1)
	beq.s loc_2093c2
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_2093fa
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_2093c2:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_2093ee
	cmpi.b #$2,$24(a0)
	beq.s loc_2093f4
loc_2093ee:
	move.w $10(a1),$14(a1)
loc_2093f4:
	bclr.b #$1,$22(a1)
loc_2093fa:
	rts
loc_2093fc:
	move.b #$2,$25(a0)
	bra.s sub_20940a
	dc.b $11,$7c,$00,$01,$00,$25

sub_20940a:
	cmpi.b #$17,$1c(a1)
	beq.w loc_2096be
	btst.b #$6,$2c(a1)
	bne.w loc_2096be
	cmpi.b #$6,$24(a1)
	bcc.w loc_2096be
	tst.b $0(a1)
	beq.w loc_2096be
	tst.b $1(a0)
	bpl.w loc_2096be
	tst.b ($ff1906).l
	bne.w loc_2096be
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_2096be
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_2096be
	cmpi.b #$2b,$1c(a1)
	bne.s loc_209478
	btst.b #$3,$22(a0)
	bne.s loc_20948a
	bra.w loc_2096be
loc_209478:
	cmpi.b #$1,$25(a0)
	bne.s loc_20948a
	tst.w $12(a1)
	beq.s loc_20948a
	bmi.w loc_2096be
loc_20948a:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_2096be
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_2096be
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_2094c0
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_2094c0:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_2094ce
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_2094ce:
	cmp.w d4,d5
	bcs.w loc_209562
	cmpi.b #$1,$25(a0)
	beq.w loc_2096be
	cmpi.b #$a,$0(a0)
	bne.s loc_2094f0
	btst.b #$1,$22(a1)
	bne.w loc_2096be
loc_2094f0:
	cmpi.b #$4,d5
	bls.w loc_2096be
	bsr.w sub_20970e
	move.l d0,-(a7)
	bsr.w sub_2092bc
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_20951a
	tst.w $10(a1)
	beq.s loc_20954a
	bpl.s loc_209522
	bra.s loc_20954a
loc_20951a:
	tst.w $10(a1)
	beq.s loc_20954a
	bpl.s loc_20954a
loc_209522:
	bsr.w sub_2096ce
	btst.b #$1,$22(a1)
	bne.s loc_209540
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209540:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20954a:
	bsr.w sub_209784
	bsr.w sub_2096ce
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209562:
	cmpi.b #$19,$0(a0)
	bne.s loc_209574
	btst.b #$2,$22(a1)
	bne.w loc_2096be
loc_209574:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20958a
	bmi.w loc_20965a
loc_20958a:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20959c
	tst.w $12(a1)
	beq.s loc_20959c
	bmi.w loc_2096be
loc_20959c:
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
	beq.s loc_2095e8
	bpl.s loc_2095c8
	neg.b d0
loc_2095c8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20680a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2095e8
	tst.w $10(a0)
	bpl.s loc_2095e4
	neg.w d1
loc_2095e4:
	add.w d1,$8(a1)
loc_2095e8:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209652
	tst.w $12(a0)
	bmi.s loc_209626
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20689c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209626
	add.w d1,$c(a1)
	bra.w loc_2096be
loc_209626:
	tst.w $12(a0)
	bpl.s loc_209652
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ab4).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209652
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e78).l
	movem.l (a7)+,a0-a1
	bra.s loc_2096be
loc_209652:
	bsr.w sub_20932e
	moveq #$1,d0
	rts
loc_20965a:
	cmpi.b #$1,$25(a0)
	beq.s loc_2096be
	cmpi.b #$9,$0(a0)
	beq.s loc_2096be
	cmpi.b #$a,$0(a0)
	bne.s loc_209684
	cmpi.b #$2,$25(a0)
	beq.s loc_2096a4
	btst.b #$1,$1(a0)
	bne.s loc_2096a4
	bra.s loc_2096be
loc_209684:
	btst.b #$1,$22(a1)
	bne.s loc_2096a4
	tst.w $12(a0)
	beq.s loc_2096a4
	bmi.s loc_2096a4
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e78).l
	movem.l (a7)+,a0-a1
loc_2096a4:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209784
	bsr.w sub_2092bc
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_2096be:
	bsr.w sub_209784
	bsr.w sub_2092bc
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_2096ce:
	tst.w $10(a0)
	beq.s loc_20970c
	cmpi.b #$a,$0(a0)
	beq.s loc_20970c
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2096e8
	neg.b d0
loc_2096e8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20680a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_20970c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e78).l
	movem.l (a7)+,a0-a1
loc_20970c:
	rts

sub_20970e:
	cmpi.b #$a,$0(a0)
	bne.s loc_20971e
	move.b #$0,$20(a1)
	rts
loc_20971e:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209772
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209782
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209740
	tst.w $10(a2)
	beq.s loc_209782
loc_209740:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209752
	cmp.w $8(a2),d1
	bcs.s loc_209782
	bra.s loc_209758
loc_209752:
	cmp.w $8(a2),d1
	bcc.s loc_209782
loc_209758:
	cmpi.b #$15,$0(a0)
	beq.s loc_209782
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206e78).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209772:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209782:
	rts

sub_209784:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20979e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20979e
	move.b #$0,$20(a1)
loc_20979e:
	rts
	.incbin 38816, 374
loc_209916:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209924(pc,d0.w),d0
	jmp dat_209924(pc,d0.w)
dat_209924:
	.incbin 39204, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_209916
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20997a
	tst.b $1(a0)
	bpl.s loc_209982
loc_20997a:
	move.w dat_2099d4(pc,d0.w),d1
	jsr dat_2099d4(pc,d1.w)
loc_209982:
	bsr.w sub_20381a
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2099b4
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2099b4:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2038c6
	rts
dat_2099d4:
	.incbin 39380, 26
	addq.b #$2,$24(a0)
	move.l #$209d56,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209a44
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$209d5c,$4(a0)
	bra.s loc_209a86
loc_209a44:
	btst.l #$3,d0
	beq.s loc_209a72
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209da6,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20d3a0).l
	move.l (a7)+,d0
	bra.s loc_209a86
loc_209a72:
	btst.b #$1,$1(a0)
	beq.s loc_209a86
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209a86:
	btst.l #$1,d0
	beq.s loc_209a92
	bset.b #$5,$2(a0)
loc_209a92:
	andi.w #$2,d0
	move.w dat_209a9e(pc,d0.w),$30(a0)
	rts
dat_209a9e:
	dc.b $f0,$00,$f6,$00

sub_209aa2:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20940a).l
	tst.b $1(a0)
	bpl.s loc_209abe
	lea ($d000).w,a1
	bsr.s sub_209aa2
	bne.s loc_209ac0
loc_209abe:
	rts
loc_209ac0:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2021c6).l
	lea (dat_209d48).l,a1
	bra.w sub_205a24
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_209b14:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20940a).l
	tst.b $1(a0)
	bpl.s loc_209b36
	lea ($d000).w,a1
	bsr.s sub_209b14
	btst.b #$5,$22(a0)
	bne.s loc_209b38
loc_209b36:
	rts
loc_209b38:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209b66
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209b66:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209b80
	move.b #$0,$1c(a1)
loc_209b80:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2021c6).l
	.incbin 39834, 28

sub_209bb6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (loc_2093fc).l
	tst.b $1(a0)
	bpl.s loc_209bd2
	lea ($d000).w,a1
	bsr.s sub_209bb6
	bne.s loc_209bd4
loc_209bd2:
	rts
loc_209bd4:
	move.b #$10,$24(a0)
	subq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	neg.w $12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jsr (sub_2021c6).l
	lea (dat_209d48).l,a1
	bra.w sub_205a24
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 39968, 296
dat_209d48:
	.incbin 40264, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209e42(pc,d0.w),d1
	jmp dat_209e42(pc,d1.w)
dat_209e42:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_209e4c:
	.incbin 40524, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209ea4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209e9c
	moveq #$0,d1
	bra.s loc_209ea4
loc_209e9c:
	cmpi.w #$3,d1
	bcs.s loc_209ea4
	moveq #$2,d1
loc_209ea4:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209ec0
	moveq #$6,d1
loc_209ec0:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_209e4c).l,a1
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
	beq.s loc_209f10
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209f08
	moveq #$0,d0
	bra.s loc_209f10
loc_209f08:
	cmpi.w #$3,d0
	bcs.s loc_209f10
	moveq #$2,d0
loc_209f10:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209fde
	dbf d0,loc_209f10
	bclr.b #$7,(a2)
	bra.s loc_209f66
loc_209f22:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209f4e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209f46
	moveq #$0,d0
	bra.s loc_209f4e
loc_209f46:
	cmpi.w #$3,d0
	bcs.s loc_209f4e
	moveq #$2,d0
loc_209f4e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209fde
	dbf d0,loc_209f4e
	bclr.b #$7,(a2)
	bsr.w sub_207856
	bne.w loc_209fea
loc_209f66:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$20a2b0,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209fbc
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209fbc
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209fbc:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209fde:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209f22
loc_209fea:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_20a010
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20a008
	moveq #$0,d0
	bra.s loc_20a010
loc_20a008:
	cmpi.w #$3,d0
	bcs.s loc_20a010
	moveq #$2,d0
loc_20a010:
	lea $1(a2),a3
loc_20a014:
	btst.b #$0,-(a3)
	bne.w sub_2038c6
	dbf d0,loc_20a014
	tst.b $1(a0)
	bmi.s loc_20a044
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_20a0be
loc_20a044:
	tst.w ($ff190e).l
	bne.s loc_20a054
	move.b ($ff1913).l,$1a(a0)
loc_20a054:
	bra.w sub_20381a
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_20a0c2
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a0a4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a09c
	moveq #$0,d1
	bra.s loc_20a0a4
loc_20a09c:
	cmpi.w #$3,d1
	bcs.s loc_20a0a4
	moveq #$2,d1
loc_20a0a4:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20a2a8).l,a1
	bsr.w sub_205a24
	bra.w sub_20381a
loc_20a0be:
	bra.w sub_2038c6

sub_20a0c2:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_20a112
	bset.b #$1,($ff150d).l
	beq.s loc_20a0fc
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_20a112
	bset.b #$2,($ff150d).l
	bne.s loc_20a112
loc_20a0fc:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_2059e4).l
loc_20a112:
	jmp (sub_2021c6).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a126(pc,d0.w),d1
	jmp dat_20a126(pc,d1.w)
dat_20a126:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_20a142
	move.w d0,d5
loc_20a142:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_20a152
loc_20a14a:
	bsr.w sub_207840
	bne.w loc_20a208
loc_20a152:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$20a2b0,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a1b0
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_20a1b0
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_20a1b0:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_20a1f8
	move.w d4,d0
	jsr (sub_2006ca).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_20a1f8
	subi.w #$80,d4
	bcc.s loc_20a1f8
	move.w #$288,d4
loc_20a1f8:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20a14a
loc_20a208:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2021c6).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2037c4
	addi.w #$18,$12(a0)
	bmi.s loc_20a268
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20a268
	jsr (sub_20694a).l
	tst.w d1
	bpl.s loc_20a268
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20a268:
	tst.b ($ff1916).l
	beq.s loc_20a2a4
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a2a4
	bra.w sub_20381a
	.incbin 41602, 34
loc_20a2a4:
	bra.w sub_2038c6
dat_20a2a8:
	.incbin 41640, 402
loc_20a43a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a468(pc,d0.w),d0
	jsr dat_20a468(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_20a466
	cmpi.w #$5a,($f786).w
	bcs.s loc_20a460
	btst.b #$0,($ff1505).l
	bne.s loc_20a466
loc_20a460:
	jmp (sub_20381a).l
loc_20a466:
	rts
dat_20a468:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20aa42,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_20a49c
	move.b #$13,$1a(a0)
loc_20a49c:
	rts
loc_20a49e:
	tst.b ($ff0f01).l
	beq.s loc_20a4ac
	jmp (sub_2038c6).l
loc_20a4ac:
	cmpi.b #$a,$28(a0)
	beq.w loc_20a43a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a4d0(pc,d0.w),d0
	jsr dat_20a4d0(pc,d0.w)
	jsr (sub_20381a).l
	jmp (sub_207876).l
dat_20a4d0:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aa42,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a51e
	tst.b $29(a0)
	bne.s loc_20a51e
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_20a51e:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a5ea
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a546
	addq.b #$2,$1a(a0)
loc_20a546:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a55a
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a55a:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a5c0
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a58c
	tst.b $29(a0)
	beq.s loc_20a584
	tst.b ($ff1956).l
	beq.s loc_20a5c0
	bra.s loc_20a58c
loc_20a584:
	tst.b ($ff1956).l
	bne.s loc_20a5c0
loc_20a58c:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a5ea
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a5ba
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a5ba:
	jsr (sub_2059e4).l
loc_20a5c0:
	rts
	.incbin 42434, 40

sub_20a5ea:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a622
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a61a
	moveq #$0,d1
	bra.s loc_20a622
loc_20a61a:
	cmpi.w #$3,d1
	bcs.s loc_20a622
	moveq #$2,d1
loc_20a622:
	add.w d1,d0
	rts

sub_20a626:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a648
	tst.b ($ff1956).l
	beq.s loc_20a640
	tst.b $29(a0)
	bne.s loc_20a648
	rts
loc_20a640:
	tst.b $29(a0)
	beq.s loc_20a648
	rts
loc_20a648:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_20940a).l
	tst.b $28(a0)
	bne.s loc_20a66a
	tst.b ($ff0f01).l
	beq.s loc_20a66a
	jmp (sub_207876).l
loc_20a66a:
	cmpi.b #$8,$28(a0)
	bcc.w loc_20a49e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a682(pc,d0.w),d1
	jmp dat_20a682(pc,d1.w)
dat_20a682:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20aa42,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a6cc
	tst.b $29(a0)
	bne.s loc_20a6cc
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a6cc:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a5ea
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a6f8
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a6f8:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a752
	move.b $25(a0),d0
	beq.s loc_20a732
	bsr.w sub_203762
	jsr (sub_20694a).l
	tst.w d1
	bpl.w loc_20a740
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a740
loc_20a732:
	tst.b $1(a0)
	bpl.s loc_20a740
	lea ($d000).w,a1
	bsr.w sub_20a626
loc_20a740:
	tst.w ($ff190e).l
	bne.s loc_20a752
	lea (dat_20a9ba).l,a1
	bsr.w sub_205a24
loc_20a752:
	bsr.w sub_20381a
	jmp (sub_207876).l
	.incbin 42844, 606
dat_20a9ba:
	.incbin 43450, 586
loc_20ac04:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ac18(pc,d0.w),d0
	jsr dat_20ac18(pc,d0.w)
	jmp (sub_20381a).l
dat_20ac18:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20ac58,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_20ac52
	jmp (sub_2038c6).l
loc_20ac52:
	subq.w #$2,$c(a0)
	rts
	.incbin 44120, 82
	tst.b $28(a0)
	bmi.w loc_20ac04
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20acc0(pc,d0.w),d0
	jmp dat_20acc0(pc,d0.w)
dat_20acc0:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20ad5a,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20acf0
	move.b #$3,$1a(a0)
	bra.s loc_20ad10
loc_20acf0:
	tst.w ($ff1588).l
	beq.s loc_20acfe
	move.b #$2,$1a(a0)
loc_20acfe:
	tst.b $28(a0)
	beq.s loc_20ad10
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20ad10:
	tst.b $28(a0)
	bne.s loc_20ad54
	tst.b $29(a0)
	beq.s loc_20ad40
	tst.w ($ff1512).l
	beq.s loc_20ad2c
	bclr.b #$5,$2(a0)
	bra.s loc_20ad54
loc_20ad2c:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20ad54
	eori.b #$20,$2(a0)
	bra.s loc_20ad54
loc_20ad40:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20ad54
	move.b #$2,$1a(a0)
loc_20ad54:
	jmp (sub_20381a).l
	.incbin 44378, 168

sub_20ae02:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20ae1e
	move.l d1,(a3)
loc_20ae1e:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20ae48
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_2059e4).l
loc_20ae48:
	rts
loc_20ae4a:
	tst.w ($ff1588).l
	beq.s loc_20aea0
	bsr.w sub_20b09c
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
	lea (dat_20b1fc).l,a2
	moveq #$2,d6
	bsr.w sub_20b254
	bra.w loc_20aefa
loc_20aea0:
	tst.b ($ff1511).l
	beq.s loc_20aec4
	bpl.s loc_20aeae
	bsr.w sub_20b046
loc_20aeae:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20b136
loc_20aec4:
	tst.b ($ff150f).l
	beq.s loc_20aefa
	bpl.s loc_20aed2
	bsr.w sub_20b032
loc_20aed2:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20aef6
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20aef6:
	bsr.w sub_20b12c
loc_20aefa:
	tst.w ($ff1588).l
	bne.w loc_20afa6
	tst.b ($ff1510).l
	beq.w loc_20afa6
	tst.w ($f63a).w
	bne.w loc_20afa6
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20b004
	tst.b ($f7cc).w
	bne.s loc_20af50
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20af50
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20af50
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20af50
	move.b #$9,(a1)
loc_20af50:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20b242
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20b24c
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20afa2
	move.w #$63,d1
loc_20afa2:
	bsr.w sub_20b24c
loc_20afa6:
	tst.b ($ff150e).l
	beq.s loc_20afb8
	clr.b ($ff150e).l
	bsr.w sub_20b222
loc_20afb8:
	tst.b ($f7d6).w
	beq.s loc_20b002
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20afd8
	move.l #$6d400001,d0
loc_20afd8:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20b0ba
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aff8
	move.l #$6e800001,d0
loc_20aff8:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20b0ba
loc_20b002:
	rts
loc_20b004:
	btst.b #$7,($ff152e).l
	bne.s loc_20b030
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206e78
	move.b #$1,($ff150c).l
loc_20b030:
	rts

sub_20b032:
	move.l #$73600002,($c00004).l
	lea dat_20b098(pc),a2
	move.w #$2,d2
	bra.s loc_20b062

sub_20b046:
	lea ($c00000).l,a6
	bsr.w sub_20b222
	move.l #$70600002,($c00004).l
	lea dat_20b090(pc),a2
	move.w #$6,d2
loc_20b062:
	lea (dat_2330bc).l,a1
loc_20b068:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20b084
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20b078:
	move.l (a3)+,(a6)
	dbf d1,loc_20b078
loc_20b07e:
	dbf d2,loc_20b068
	rts
loc_20b084:
	move.l #$0,(a6)
	dbf d1,loc_20b084
	bra.s loc_20b07e
dat_20b090:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20b098:
	dc.b $ff,$ff,$00,$00

sub_20b09c:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20b218
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20b218

sub_20b0ba:
	lea (dat_20b1f4).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b0ca:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b0ce:
	sub.l d3,d1
	bcs.s loc_20b0d6
	addq.w #$1,d2
	bra.s loc_20b0ce
loc_20b0d6:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b0e0
	move.w #$1,d4
loc_20b0e0:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20b0ec
	tst.w d6
	bne.s loc_20b11e
loc_20b0ec:
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
loc_20b112:
	addi.l #$400000,d0
	dbf d6,loc_20b0ca
	rts
loc_20b11e:
	moveq #$f,d5
loc_20b120:
	move.l #$0,(a6)
	dbf d5,loc_20b120
	bra.s loc_20b112

sub_20b12c:
	lea (dat_20b1fc).l,a2
	moveq #$2,d6
	bra.s loc_20b13e

sub_20b136:
	lea (dat_20b1f0).l,a2
	moveq #$5,d6
loc_20b13e:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b146:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b14a:
	sub.l d3,d1
	bcs.s loc_20b152
	addq.w #$1,d2
	bra.s loc_20b14a
loc_20b152:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b15c
	move.w #$1,d4
loc_20b15c:
	tst.w d4
	beq.s loc_20b18a
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
loc_20b18a:
	addi.l #$400000,d0
	dbf d6,loc_20b146
	rts
	.incbin 45462, 32
loc_20b1b6:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b1ba:
	sub.l d3,d1
	bcs.s loc_20b1c2
	addq.w #$1,d2
	bra.s loc_20b1ba
loc_20b1c2:
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
	dbf d6,loc_20b1b6
	rts
dat_20b1f0:
	dc.b $00,$01,$86,$a0
dat_20b1f4:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20b1fc:
	dc.b $00,$00,$00,$64
dat_20b200:
	dc.b $00,$00,$00,$0a
dat_20b204:
	dc.b $00,$00,$00,$01
dat_20b208:
	.incbin 45576, 16

sub_20b218:
	moveq #$3,d6
	lea (dat_20b208).l,a2
	bra.s sub_20b254

sub_20b222:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20b238
	moveq #$9,d1
loc_20b238:
	lea (dat_20b204).l,a2
	moveq #$0,d6
	bra.s sub_20b254

sub_20b242:
	lea (dat_20b204).l,a2
	moveq #$0,d6
	bra.s sub_20b254

sub_20b24c:
	lea (dat_20b200).l,a2
	moveq #$1,d6

sub_20b254:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20b25c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20b260:
	sub.l d3,d1
	bcs.s loc_20b268
	addq.w #$1,d2
	bra.s loc_20b260
loc_20b268:
	add.l d3,d1
	tst.w d2
	beq.s loc_20b272
	move.w #$1,d4
loc_20b272:
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
	dbf d6,loc_20b25c
	rts
	.incbin 45736, 2726
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bd6c(pc,d0.w),d0
	jsr dat_20bd6c(pc,d0.w)
	jsr (sub_20381a).l
	jmp (sub_207876).l
dat_20bd6c:
	dc.b $00,$08,$00,$4c,$00,$d4,$00,$e0
	tst.b $28(a0)
	beq.s loc_20bd80
	bset.b #$1,$1(a0)
loc_20bd80:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$34d,$2(a0)
	tst.b ($ff1956).l
	bne.s loc_20bd9e
	ori.b #$80,$2(a0)
loc_20bd9e:
	move.l #$20be86,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	tst.b $2a(a0)
	beq.s loc_20bdc4
	subq.b #$1,$2a(a0)
	bra.s loc_20be16
loc_20bdc4:
	move.b $17(a6),d0
	ext.w d0
	move.b $17(a0),d1
	ext.w d1
	add.w d0,d1
	move.w $8(a0),d0
	sub.w $8(a6),d0
	add.w d1,d0
	bmi.s loc_20be18
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20be18
	move.b $16(a6),d0
	ext.w d0
	move.b $16(a0),d1
	ext.w d1
	add.w d0,d1
	move.w $c(a0),d0
	sub.w $c(a6),d0
	add.w d1,d0
	bmi.s loc_20be18
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20be18
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	eori.b #$1,($ff1956).l
loc_20be16:
	rts
loc_20be18:
	btst.b #$7,$2(a0)
	beq.s loc_20be2a
	tst.b ($ff1956).l
	bne.s loc_20be34
	rts
loc_20be2a:
	tst.b ($ff1956).l
	beq.s loc_20be34
	rts
loc_20be34:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	rts
	.incbin 48704, 240
	cmpi.b #$4,$24(a0)
	bcs.s loc_20bf44
	tst.b $3e(a0)
	beq.s loc_20bf44
	jmp (sub_2038c6).l
loc_20bf44:
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20bf54
	cmpi.b #$6,($d024).w
	bcc.s loc_20bf6a
loc_20bf54:
	move.w dat_20bfb2(pc,d0.w),d0
	jsr dat_20bfb2(pc,d0.w)
	cmpi.b #$4,$24(a0)
	bne.s loc_20bf6a
	tst.b $28(a0)
	bne.s loc_20bf70
loc_20bf6a:
	jsr (sub_20381a).l
loc_20bf70:
	cmpi.b #$2,$24(a0)
	bne.s loc_20bfb0
	move.l $2a(a0),-(a7)
	move.l $36(a0),-(a7)
	move.l $3a(a0),-(a7)
	move.w $34(a0),d0
	jsr (sub_20787a).l
	bne.s loc_20bf98
	move.l (a7)+,d0
	move.l (a7)+,d0
	move.l (a7)+,d0
	rts
loc_20bf98:
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
loc_20bfb0:
	rts
dat_20bfb2:
	.incbin 49074, 16
	addq.b #$2,$24(a0)
	move.w $8(a0),$34(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c94e,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	move.b $28(a0),d0
	cmpi.b #$2,d0
	bcs.s loc_20c00c
	subq.b #$1,d0
	move.b d0,$29(a0)
	move.b d0,$1b(a0)
	move.b #$0,$28(a0)
loc_20c00c:
	moveq #$2,d6
	move.l a0,-(a7)
loc_20c010:
	jsr (sub_207856).l
	beq.s loc_20c020
	movea.l (a7)+,a0
	jmp (sub_2038c6).l
loc_20c020:
	movea.l a1,a0
	dbf d6,loc_20c010
	movea.l (a7)+,a0
	moveq #$2,d6
	move.b #$4,d1
loc_20c02e:
	jsr (sub_207856).l
	move.b #$1e,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a0),$8(a1)
	move.w $8(a0),$34(a1)
	move.w $c(a0),$c(a1)
	cmpi.b #$2,d6
	bne.s loc_20c072
	move.w #$520,$2(a1)
	move.l #$209d5c,$4(a1)
	move.b #$5,$18(a1)
	move.l a1,$2a(a0)
	bra.s loc_20c09c
loc_20c072:
	move.w #$300,$2(a1)
	move.l #$20c94e,$4(a1)
	move.b #$20,$17(a1)
	move.b #$20,$16(a1)
	cmpi.w #$1,d6
	bne.s loc_20c098
	move.l a1,$36(a0)
	bra.s loc_20c09c
loc_20c098:
	move.l a1,$3a(a0)
loc_20c09c:
	move.b $28(a0),$28(a1)
	move.l a0,$2a(a1)
	move.b d1,$24(a1)
	cmpi.w #$2,d6
	bne.s loc_20c0b2
	addq.b #$4,d1
loc_20c0b2:
	addq.b #$2,d1
	dbf d6,loc_20c02e
	tst.b $29(a0)
	bne.s loc_20c0d2
	movea.l $2a(a0),a1
	cmpi.b #$6,$24(a1)
	bcs.s loc_20c0d4
	cmpi.b #$2,$29(a1)
	beq.s loc_20c0d4
loc_20c0d2:
	rts
loc_20c0d4:
	lea (dat_20c942).l,a1
	jmp (sub_205a24).l
	tst.b $28(a0)
	bne.s loc_20c0ee
	bsr.w sub_20c0f0
	bra.w loc_20c4b8
loc_20c0ee:
	rts

sub_20c0f0:
	lea (dat_20c194).l,a2
	lea (dat_20c1b2).l,a3
	tst.b $28(a0)
	beq.s loc_20c122
	lea (dat_20c19e).l,a2
	lea (dat_20c1d6).l,a3
	cmpi.b #$1,$28(a0)
	beq.s loc_20c122
	lea (dat_20c1a8).l,a2
	lea (dat_20c1fa).l,a3
loc_20c122:
	move.w #$520,$2(a0)
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	btst.l #$0,d0
	bne.s loc_20c13e
	move.w #$4f2,$2(a0)
loc_20c13e:
	move.w d0,d1
	move.b dat_20c17e(pc,d0.w),d0
	add.w d0,d0
	add.w d0,d0
	move.l dat_20c188(pc,d0.w),$4(a0)
	andi.b #$fc,$1(a0)
	move.b $0(a2,d1.w),d0
	or.b d0,$1(a0)
	add.w d1,d1
	add.w d1,d1
	move.w $0(a3,d1.w),d0
	move.w $8(a1),$8(a0)
	add.w d0,$8(a0)
	move.w $2(a3,d1.w),d0
	move.w $c(a1),$c(a0)
	add.w d0,$c(a0)
	rts
dat_20c17e:
	dc.b $02,$00,$02,$01,$02,$00,$02,$01
	dc.b $02,$00
dat_20c188:
	dc.b $00,$20,$9d,$5c,$00,$20,$9d,$56
	dc.b $00,$20,$9d,$a6
dat_20c194:
	dc.b $00,$00,$00,$00,$01,$01,$01,$00
	dc.b $00,$00
dat_20c19e:
	dc.b $02,$00,$00,$00,$01,$01,$03,$02
	dc.b $02,$00
dat_20c1a8:
	dc.b $01,$01,$03,$02,$02,$00,$00,$00
	dc.b $01,$00
dat_20c1b2:
	.incbin 49586, 36
dat_20c1d6:
	.incbin 49622, 36
dat_20c1fa:
	.incbin 49658, 202

sub_20c2c4:
	lea (dat_20c40a).l,a2
	lea (dat_20c414).l,a3
	lea (dat_20c43c).l,a4
	tst.b $28(a0)
	beq.s loc_20c2f4
	lea (dat_20c428).l,a3
	lea (dat_20c450).l,a4
	tst.b $29(a0)
	beq.s loc_20c2f4
	lea (dat_20c464).l,a4
loc_20c2f4:
	lea (dat_20c768).l,a5
	bra.s loc_20c332

sub_20c2fc:
	lea (dat_20c40a).l,a2
	lea (dat_20c41e).l,a3
	lea (dat_20c446).l,a4
	tst.b $28(a0)
	beq.s loc_20c32c
	lea (dat_20c432).l,a3
	lea (dat_20c45a).l,a4
	tst.b $29(a0)
	beq.s loc_20c32c
	lea (dat_20c46e).l,a4
loc_20c32c:
	lea (dat_20c772).l,a5
loc_20c332:
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	move.b $0(a2,d0.w),$1a(a0)
	andi.b #$fc,$1(a0)
	move.b $0(a3,d0.w),d1
	or.b d1,$1(a0)
	move.b $0(a4,d0.w),d0
	lea (dat_20c478).l,a4
	add.w d0,d0
	add.w d0,d0
	move.w $0(a4,d0.w),d1
	move.w $8(a1),$8(a0)
	add.w d1,$8(a0)
	move.w $2(a4,d0.w),d1
	move.w $c(a1),$c(a0)
	add.w d1,$c(a0)
	tst.b $28(a0)
	beq.s loc_20c3c6
	movea.l $2a(a0),a2
	movea.l $2a(a2),a2
	tst.b $29(a2)
	beq.s loc_20c3ae
	cmpi.b #$2,$29(a2)
	bne.s loc_20c3c6
	tst.b $29(a0)
	bne.s loc_20c3c6
	movea.l a5,a3
	move.l a0,-(a7)
	movea.l a2,a0
	movea.l $2e(a2),a2
	bsr.w sub_20c532
	movea.l (a7)+,a0
	rts
loc_20c3ae:
	tst.b ($ff1906).l
	bne.s loc_20c3c6
	lea ($d000).w,a2
	bsr.s sub_20c3c8
	bne.w loc_20c5e2
	move.b #$0,$29(a0)
loc_20c3c6:
	rts

sub_20c3c8:
	move.w #$18,d2
	move.w #$18,d3
	bra.w loc_20c4d4
	.incbin 50132, 54
dat_20c40a:
	dc.b $04,$02,$04,$03,$04,$02,$04,$03
	dc.b $04,$00
dat_20c414:
	dc.b $00,$00,$00,$00,$02,$02,$02,$00
	dc.b $00,$00
dat_20c41e:
	dc.b $03,$02,$03,$01,$01,$00,$01,$01
	dc.b $03,$00
dat_20c428:
	dc.b $01,$00,$00,$00,$02,$02,$03,$01
	dc.b $01,$00
dat_20c432:
	dc.b $02,$02,$03,$01,$01,$00,$00,$00
	dc.b $02,$00
dat_20c43c:
	dc.b $01,$00,$01,$02,$03,$04,$03,$02
	dc.b $01,$00
dat_20c446:
	dc.b $09,$08,$09,$0a,$0b,$0c,$0b,$0a
	dc.b $09,$00
dat_20c450:
	dc.b $07,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20c45a:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20c464:
	dc.b $0b,$0c,$0d,$0e,$0f,$08,$09,$0a
	dc.b $0b,$00
dat_20c46e:
	dc.b $0f,$08,$09,$0a,$0b,$0c,$0d,$0e
	dc.b $0f,$00
dat_20c478:
	.incbin 50296, 64
loc_20c4b8:
	tst.b ($ff1906).l
	bne.s loc_20c4ca
	lea ($d000).w,a2
	bsr.s sub_20c4cc
	bne.w loc_20c686
loc_20c4ca:
	rts

sub_20c4cc:
	move.w #$20,d2
	move.w #$20,d3
loc_20c4d4:
	cmpi.b #$4,$24(a2)
	bne.s loc_20c4e6
	subq.b #$2,$24(a2)
	move.w #$78,$30(a2)
loc_20c4e6:
	cmpi.b #$2b,$1c(a2)
	beq.s loc_20c52e
	cmpi.b #$6,$24(a2)
	bcc.s loc_20c52e
	move.b $17(a2),d1
	ext.w d1
	add.w d2,d1
	move.w $8(a0),d0
	sub.w $8(a2),d0
	add.w d1,d0
	bmi.s loc_20c52e
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c52e
	move.b $16(a2),d1
	ext.w d1
	add.w d3,d1
	move.w $c(a0),d0
	sub.w $c(a2),d0
	add.w d1,d0
	bmi.s loc_20c52e
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20c52e
	moveq #$1,d0
	rts
loc_20c52e:
	moveq #$0,d0
	rts

sub_20c532:
	moveq #$0,d0
	move.b $1b(a1),d0
	move.w d0,d2
	move.b $0(a3,d0.w),d0
	lea (dat_20c77c).l,a1
	add.w d0,d0
	add.w d0,d0
	move.w $8(a0),$8(a2)
	move.w $0(a1,d0.w),d1
	add.w d1,$8(a2)
	move.w $c(a0),$c(a2)
	move.w $2(a1,d0.w),d1
	add.w d1,$c(a2)
	rts
loc_20c566:
	lea (dat_20c59a).l,a3
	moveq #$0,d0
	move.b $25(a4),d0
	subi.b #$a,d0
	beq.s loc_20c57e
	lea (dat_20c5be).l,a3
loc_20c57e:
	move.b $1b(a1),d0
	add.w d0,d0
	add.w d0,d0
	move.w $0(a3,d0.w),$10(a4)
	move.w $2(a3,d0.w),$12(a4)
	move.b #$1a,$32(a4)
	rts
dat_20c59a:
	.incbin 50586, 36
dat_20c5be:
	.incbin 50622, 36
loc_20c5e2:
	clr.b $3c(a2)
	bset.b #$0,$2c(a2)
	bset.b #$2,$22(a2)
	move.b #$e,$16(a2)
	move.b #$7,$17(a2)
	move.b #$2,$1c(a2)
	movea.l $2a(a0),a4
	movea.l $2a(a4),a4
	addq.b #$2,$24(a4)
	move.b #$1,$29(a4)
	move.l a2,$2e(a4)
	movea.l a5,a3
	movem.l a0-a1,-(a7)
	movea.l a4,a0
	bsr.w sub_20c532
	movem.l (a7)+,a0-a1
	movea.l $2a(a0),a4
	cmpi.b #$a,$24(a0)
	bne.s loc_20c63c
	adda.l #$4,a4
loc_20c63c:
	movea.l $36(a4),a4
	move.b $24(a4),$25(a4)
	movem.l a0-a4,-(a7)
	movea.l $2a(a0),a1
	movea.l $2a(a1),a1
	movea.l a4,a0
	cmpi.b #$a,$24(a0)
	bne.s loc_20c668
	move.b #$2,$28(a1)
	bsr.w sub_20c2c4
	bra.s loc_20c672
loc_20c668:
	move.b #$1,$28(a1)
	bsr.w sub_20c2fc
loc_20c672:
	movem.l (a7)+,a0-a4
	move.b #$e,$24(a4)
	move.b #$1,$29(a4)
	bra.w loc_20c566
loc_20c686:
	clr.b $3c(a2)
	bset.b #$0,$2c(a2)
	bset.b #$2,$22(a2)
	move.b #$e,$16(a2)
	move.b #$7,$17(a2)
	move.b #$2,$1c(a2)
	move.l a2,$2e(a0)
	move.b #$3c,$32(a0)
	addq.b #$2,$24(a0)
	movea.l $2a(a0),a1
	lea (dat_20c754).l,a3
	bsr.w sub_20c532
	btst.l #$0,d2
	bne.s loc_20c71a
	move.w #$e0,d0
	jsr (sub_2006ca).l
	mulu.w #$1000,d0
	mulu.w #$1000,d1
	lsr.l #$8,d0
	lsr.l #$8,d1
	move.w d0,$12(a2)
	move.w d1,$10(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c6f4
	neg.w $12(a2)
loc_20c6f4:
	bclr.b #$0,$22(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c70c
	bset.b #$0,$22(a2)
	neg.w $10(a2)
loc_20c70c:
	bset.b #$1,$22(a2)
	bclr.b #$3,$22(a2)
	rts
loc_20c71a:
	btst.l #$1,d2
	bne.s loc_20c73a
	move.w #$0,$12(a2)
	move.w #$1000,$10(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c70c
	neg.w $10(a2)
	bra.s loc_20c70c
loc_20c73a:
	move.w #$0,$10(a2)
	move.w #$f000,$12(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c70c
	neg.w $12(a2)
	bra.s loc_20c70c
dat_20c754:
	.incbin 51028, 20
dat_20c768:
	dc.b $01,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20c772:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20c77c:
	.incbin 51068, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c7b6(pc,d0.w),d0
	jsr dat_20c7b6(pc,d0.w)
	jsr (sub_20381a).l
	jmp (sub_207876).l
dat_20c7b6:
	dc.b $00,$08,$00,$4c,$00,$50,$00,$7e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c94e,$4(a0)
	move.b #$20,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2,$1a(a0)
	tst.b $28(a0)
	beq.s loc_20c802
	move.b #$0,$1a(a0)
	move.w #$f800,$12(a0)
	move.b #$6,$24(a0)
	bra.s loc_20c834
loc_20c802:
	bra.w loc_20c856
	.incbin 51206, 46
loc_20c834:
	addi.w #$40,$12(a0)
	jsr (sub_2037c4).l
	move.w ($f704).w,d0
	addi.w #$e8,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c854
	jmp (sub_2038c6).l
loc_20c854:
	rts
loc_20c856:
	tst.b ($ff1906).l
	bne.s loc_20c868
	lea ($d000).w,a2
	bsr.s sub_20c86a
	bne.w loc_20c882
loc_20c868:
	rts

sub_20c86a:
	btst.b #$1,$22(a2)
	beq.s loc_20c876
	moveq #$0,d0
	rts
loc_20c876:
	move.w #$20,d2
	move.w #$10,d3
	bra.w loc_20c4d4
loc_20c882:
	clr.b ($d02c).w
	jsr (sub_207840).l
	bne.s loc_20c8c6
	move.b #$8,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
	movea.l a1,a3
	jsr (sub_207840).l
	bne.s loc_20c8c6
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$6,$c(a1)
loc_20c8c6:
	move.w #$ce,d0
	jsr (sub_2021c6).l
	addq.b #$2,$24(a0)
	move.w $8(a0),$2c(a0)
	move.b #$6,$2a(a0)
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcc.s loc_20c916
	move.w #$f000,$10(a2)
	bset.b #$0,$22(a1)
	move.w #$200,$10(a3)
	addi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$800,$10(a0)
	bset.b #$0,$22(a2)
	rts
loc_20c916:
	move.w #$1000,$10(a2)
	bclr.b #$0,$22(a1)
	move.w #$fe00,$10(a3)
	subi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$f800,$10(a0)
	bclr.b #$0,$22(a2)
	rts
dat_20c942:
	.incbin 51522, 192
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ca10(pc,d0.w),d0
	jmp dat_20ca10(pc,d0.w)
dat_20ca10:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_2059e4).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20cae6,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20ca6c
	tst.b ($ff1508).l
	beq.s loc_20ca74
	move.l #$20caea,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20ca74
loc_20ca6c:
	tst.b ($ff1508).l
	bne.s loc_20ca84
loc_20ca74:
	bset.b #$7,($ff156b).l
	jsr (sub_207840).l
	beq.s loc_20ca8a
loc_20ca84:
	jmp (sub_2038c6).l
loc_20ca8a:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20cacc
	move.w #$6e,d0
	jmp (sub_2059e4).l
loc_20cacc:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20cae0
	bge.s loc_20cadc
	neg.w d0
loc_20cadc:
	add.w d0,$8(a0)
loc_20cae0:
	jmp (sub_20381a).l
	.incbin 51942, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cb2c(pc,d0.w),d0
	jmp dat_20cb2c(pc,d0.w)
dat_20cb2c:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20d22a,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20d1ea).l,a2
loc_20cb7a:
	jsr (sub_207840).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20d22a,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20cbcc
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20cbcc:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20cb7a
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20cbf4
	bge.s loc_20cbea
	neg.w d0
loc_20cbea:
	add.w d0,$a(a0)
	jmp (sub_20381a).l
loc_20cbf4:
	addq.b #$4,$24(a0)
	jmp (sub_20381a).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20cc18
	bge.s loc_20cc0e
	neg.w d0
loc_20cc0e:
	add.w d0,$8(a0)
	jmp (sub_20381a).l
loc_20cc18:
	addq.b #$4,$24(a0)
	jmp (sub_20381a).l
	tst.b $1e(a0)
	beq.s loc_20cc32
	subq.b #$1,$1e(a0)
	jmp (sub_20381a).l
loc_20cc32:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20cc4c
	bge.s loc_20cc42
	neg.w d0
loc_20cc42:
	add.w d0,$a(a0)
	jmp (sub_20381a).l
loc_20cc4c:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202390).l
	tst.b $1e(a0)
	beq.s loc_20cc6e
	subq.b #$1,$1e(a0)
	jmp (sub_20381a).l
loc_20cc6e:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20cc88
	bge.s loc_20cc7e
	neg.w d0
loc_20cc7e:
	add.w d0,$8(a0)
	jmp (sub_20381a).l
loc_20cc88:
	jmp (sub_2038c6).l
	tst.l ($f680).w
	bne.s loc_20cca2
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2038c6).l
loc_20cca2:
	rts
	.incbin 52388, 1350
dat_20d1ea:
	.incbin 53738, 344
loc_20d342:
	lea dat_20d394(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20d34e:
	cmp.w (a1)+,d0
	bcs.s loc_20d356
	addq.b #$2,d1
	bra.s loc_20d34e
loc_20d356:
	move.b d1,($ff1574).l
	move.w dat_20d39c(pc,d1.w),d0
	jmp (sub_202390).l

sub_20d366:
	lea dat_20d394(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20d372:
	cmp.w (a1)+,d0
	bcs.s loc_20d37a
	addq.b #$2,d1
	bra.s loc_20d372
loc_20d37a:
	cmp.b ($ff1574).l,d1
	bne.s loc_20d384
	rts
loc_20d384:
	move.b d1,($ff1574).l
	move.w dat_20d398(pc,d1.w),d0
	jmp (loc_2023c2).l
dat_20d394:
	dc.b $1f,$00,$ff,$ff
dat_20d398:
	dc.b $00,$05,$00,$06
dat_20d39c:
	dc.b $00,$02,$00,$04

sub_20d3a0:
	move.w #$4f2,$2(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d3c6(pc,d0.w),d0
	jsr dat_20d3c6(pc,d0.w)
	jsr (sub_20381a).l
	move.w $36(a0),d0
	jmp (sub_20787a).l
dat_20d3c6:
	dc.b $00,$96,$01,$52

sub_20d3ca:
	lea ($d000).w,a1
	move.b #$8,$16(a0)
	jsr (sub_20940a).l
	bne.s loc_20d3ea
	move.b #$c,$16(a0)
	jsr (sub_20940a).l
	beq.s loc_20d414
loc_20d3ea:
	move.b #$8,$16(a0)
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcs.s loc_20d414
	move.w $c(a0),d0
	move.b $16(a0),d1
	ext.w d1
	sub.w d1,d0
	move.b $16(a1),d1
	ext.w d1
	sub.w d1,d0
	addq.w #$2,d0
	move.w d0,$c(a1)
loc_20d414:
	move.b #$8,$16(a0)
	rts
dat_20d41c:
	.incbin 54300, 64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.l #$20d5be,$4(a0)
	move.w #$366,$2(a0)
	move.b #$20,$19(a0)
	move.b #$8,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20d4f4
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	moveq #$0,d1
	moveq #$0,d2
	move.b $28(a0),d1
	andi.w #$f,d1
	move.b d1,$2f(a0)
	move.b d1,d2
	subq.b #$1,d2
loc_20d4ac:
	jsr (sub_207840).l
	bne.s loc_20d4ee
	move.b #$20,$0(a1)
	move.w $36(a0),$36(a1)
	move.w $32(a0),$32(a1)
	move.b $28(a0),$28(a1)
	move.b $2f(a0),$2f(a1)
	move.b d1,$3c(a1)
	move.b #$2,$1a(a1)
	cmp.b $2f(a0),d1
	bne.s loc_20d4ee
	move.b #$1,$1a(a1)
	move.b #$a9,$20(a1)
loc_20d4ee:
	subq.b #$1,d1
	dbf d2,loc_20d4ac
loc_20d4f4:
	moveq #$0,d0
	move.b $28(a0),d0
	andi.b #$f0,d0
	lsr.b #$1,d0
	lea dat_20d41c(pc),a1
	lea $0(a1,d0.w),a1
	move.w (a1)+,$3a(a0)
	move.w (a1)+,$3e(a0)
	move.w (a1)+,$34(a0)
	move.w (a1)+,$38(a0)
	move.l $8(a0),d0
	move.l $c(a0),d1
	movem.l d0-d1,-(a7)
	bsr.w sub_20d554
	movem.l (a7)+,d0-d1
	move.b $2f(a0),d4
	cmp.b $3c(a0),d4
	bne.s loc_20d552
	move.l $8(a0),d2
	move.l $c(a0),d3
	sub.l d0,d2
	sub.l d1,d3
	asr.l #$8,d2
	asr.l #$8,d3
	move.w d2,$10(a0)
	move.w d3,$12(a0)
	bsr.w sub_20d3ca
loc_20d552:
	rts

sub_20d554:
	tst.b $3d(a0)
	bne.s loc_20d574
	move.w $30(a0),d0
	add.w $3e(a0),d0
	move.w d0,$30(a0)
	add.w d0,$3a(a0)
	cmp.w $34(a0),d0
	seq $3d(a0)
	bra.s loc_20d58e
loc_20d574:
	move.w $30(a0),d0
	sub.w $3e(a0),d0
	move.w d0,$30(a0)
	add.w d0,$3a(a0)
	cmp.w $38(a0),d0
	bne.s loc_20d58e
	clr.b $3d(a0)
loc_20d58e:
	move.b $3a(a0),d0
	jsr (sub_2006ca).l
	move.b $3c(a0),d2
	ext.w d2
	asl.w #$4,d2
	mulu.w d2,d0
	mulu.w d2,d1
	asr.l #$4,d0
	asr.w #$4,d0
	asr.l #$4,d1
	asr.w #$4,d1
	add.w $32(a0),d1
	add.w $36(a0),d0
	move.w d1,$c(a0)
	move.w d0,$8(a0)
	rts
	.incbin 54718, 30
	jsr (sub_20ec36).l
	tst.b $24(a0)
	bne.w loc_20d65e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$23e9,$2(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w $8(a0),$3a(a0)
	move.w $c(a0),$2e(a0)
	move.w #$8000,$30(a0)
	lea dat_20d76e(pc),a1
	lea dat_20d6e6(pc),a2
	move.w #$fe00,d0
	move.l #$ffffc000,d1
	tst.b $28(a0)
	beq.s loc_20d64e
	lea dat_20d862(pc),a1
	lea dat_20d72a(pc),a2
	move.w #$ff00,d0
	move.l #$ffffc000,d1
loc_20d64e:
	move.l a1,$4(a0)
	move.l a2,$36(a0)
	move.w d0,$34(a0)
	move.l d1,$3c(a0)
loc_20d65e:
	move.l $8(a0),d6
	add.l $3c(a0),d6
	move.l d6,d0
	swap d0
	sub.w $3a(a0),d0
	bpl.s loc_20d672
	neg.w d0
loc_20d672:
	cmpi.w #$40,d0
	ble.s loc_20d696
	neg.l $3c(a0)
	add.l $3c(a0),d6
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $32(a0)
	move.w #$ff,$1c(a0)
loc_20d696:
	move.l d6,$8(a0)
	move.w $32(a0),d0
	add.w $34(a0),d0
	move.w d0,$32(a0)
	lsr.w #$8,d0
	jsr (sub_2006ca).l
	swap d0
	asr.l #$2,d0
	add.l $2e(a0),d0
	move.l d0,$c(a0)
	movea.l $36(a0),a1
	jsr (sub_205a24).l
	lea dat_20d94c(pc),a1
	moveq #$0,d0
	move.b $1a(a0),d0
	lsr.b #$1,d0
	move.b $0(a1,d0.w),$20(a0)
	jsr (sub_20381a).l
	move.w $3a(a0),d0
	jmp (sub_20787a).l
dat_20d6e6:
	.incbin 55014, 68
dat_20d72a:
	.incbin 55082, 68
dat_20d76e:
	.incbin 55150, 244
dat_20d862:
	.incbin 55394, 234
dat_20d94c:
	.incbin 55628, 2100
	cmpi.b #$ff,$29(a0)
	beq.w loc_20e308
	cmpi.b #$fe,$29(a0)
	beq.w loc_20e6a2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e1a2(pc,d0.w),d0
	jmp dat_20e1a2(pc,d0.w)
dat_20e1a2:
	dc.b $00,$08,$00,$66,$00,$8a,$01,$10
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b $23(a0),d0
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	lea $2(a1,d0.w),a1
	move.l a1,$2a(a0)
	lea (dat_20e86a).l,a1
	move.b $28(a0),d0
	andi.w #$c,d0
	adda.w d0,a1
	move.l a1,$2e(a0)
	btst.b #$0,$28(a0)
	sne d0
	move.b d0,$28(a0)
	move.w #$845d,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20e204
	move.w #$8320,d0
loc_20e204:
	move.w d0,$2(a0)
	move.w #$ff10,d1
	move.w #$1e0,d2
	move.w #$ff10,d3
	move.w #$1e0,d4
	lea ($d000).w,a1
	bsr.w sub_20e732
	bcc.s loc_20e226
	addq.b #$2,$24(a0)
loc_20e226:
	jmp (sub_207876).l
	addq.b #$2,$24(a0)
	movea.l $2a(a0),a6
	btst.b #$0,(a6)
	bne.s loc_20e25a
	jsr (sub_207856).l
	bne.w loc_20e726
	move.w a1,$32(a0)
	bsr.s sub_20e282
	movea.l $2e(a0),a2
	move.w (a2)+,d0
	move.w (a2),d1
	add.w d0,$8(a1)
	add.w d1,$c(a1)
loc_20e25a:
	btst.b #$1,(a6)
	bne.s loc_20e280
	jsr (sub_207856).l
	bne.w loc_20e726
	move.w a1,$34(a0)
	bsr.s sub_20e282
	movea.l $2e(a0),a2
	move.w (a2)+,d0
	move.w (a2),d1
	sub.w d0,$8(a1)
	sub.w d1,$c(a1)
loc_20e280:
	rts

sub_20e282:
	move.w a0,$2a(a1)
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.w $2(a0),$2(a1)
	move.b $23(a0),$36(a1)
	rts
	movea.l $2a(a0),a6
	btst.b #$0,(a6)
	bne.s loc_20e2d6
	move.w $32(a0),d6
	beq.s loc_20e2d6
	movea.w d6,a1
	move.b $0(a1),d6
	cmp.b $0(a0),d6
	beq.s loc_20e2d6
	bset.b #$0,(a6)
	clr.w $32(a0)
loc_20e2d6:
	btst.b #$1,(a6)
	bne.s loc_20e2f6
	move.w $34(a0),d6
	beq.s loc_20e2f6
	movea.w d6,a1
	move.b $0(a1),d6
	cmp.b $0(a0),d6
	beq.s loc_20e2f6
	bset.b #$1,(a6)
	clr.w $34(a0)
loc_20e2f6:
	cmpi.b #$83,(a6)
	beq.w loc_20e72c
	tst.l $32(a0)
	beq.w loc_20e726
	rts
loc_20e308:
	movea.w $2a(a0),a1
	cmpi.b #$23,$0(a1)
	bne.w loc_20e72c
	move.b $23(a1),d0
	cmp.b $36(a0),d0
	bne.w loc_20e72c
	jsr (sub_20ec36).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e336(pc,d0.w),d0
	jmp dat_20e336(pc,d0.w)
dat_20e336:
	.incbin 58166, 22
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$14,$17(a0)
	move.b #$14,$19(a0)
	move.b #$c,$16(a0)
	move.b #$32,$20(a0)
	move.w $8(a0),$2c(a0)
	tst.b $28(a0)
	bne.s loc_20e390
	lea dat_20e7b2(pc),a1
	lea dat_20e74e(pc),a2
	move.l #$ffff0000,d0
	bra.s loc_20e39e
loc_20e390:
	lea dat_20e7fe(pc),a1
	lea dat_20e780(pc),a2
	move.l #$ffff8000,d0
loc_20e39e:
	move.l a1,$4(a0)
	move.l a2,$32(a0)
	move.l d0,$2e(a0)
	lea ($d000).w,a1
	move.w $8(a1),d0
	cmp.w $8(a0),d0
	blt.s loc_20e3c8
	neg.l $2e(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e3c8:
	rts
	move.l $2e(a0),d0
	add.l d0,$8(a0)
	move.w $8(a0),d0
	sub.w $2c(a0),d0
	bpl.s loc_20e3de
	neg.w d0
loc_20e3de:
	cmpi.w #$50,d0
	blt.s loc_20e3fc
	move.l $2e(a0),d0
	sub.l d0,$8(a0)
	neg.l $2e(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e3fc:
	move.w #$ffc8,d1
	move.w #$70,d2
	move.w #$ffb0,d3
	move.w #$a0,d4
	lea ($d000).w,a1
	bsr.w sub_20e732
	bcc.s loc_20e436
	movea.w $2a(a0),a2
	move.w $32(a2),d0
	beq.s loc_20e428
	movea.w d0,a3
	move.b #$4,$24(a3)
loc_20e428:
	move.w $34(a2),d0
	beq.s loc_20e436
	movea.w d0,a4
	move.b #$4,$24(a4)
loc_20e436:
	bra.w loc_20e5b6
	movea.w $2a(a0),a2
	move.w $32(a2),d0
	beq.w loc_20e526
	movea.w d0,a3
	move.w $34(a2),d0
	beq.w loc_20e526
	movea.w d0,a4
	sf d6
	move.w $8(a3),d0
	add.w $8(a4),d0
	asr.w #$1,d0
	sub.w ($f700).w,d0
	cmpi.w #$98,d0
	blt.w loc_20e4aa
	cmpi.w #$a8,d0
	bgt.w loc_20e4d4
	st d6
loc_20e474:
	sf d5
	move.w $c(a3),d0
	add.w $c(a4),d0
	asr.w #$1,d0
	sub.w ($f704).w,d0
	cmpi.w #$68,d0
	blt.w loc_20e500
	cmpi.w #$78,d0
	bgt.w loc_20e512
	st d5
loc_20e496:
	and.b d6,d5
	beq.s loc_20e4a6
	move.b #$6,$24(a3)
	move.b #$6,$24(a4)
loc_20e4a6:
	bra.w loc_20e5b6
loc_20e4aa:
	bset.b #$0,$1(a3)
	bset.b #$0,$1(a4)
	bset.b #$0,$22(a3)
	bset.b #$0,$22(a4)
	move.l $2e(a0),d0
	bpl.s loc_20e4ca
	neg.l d0
loc_20e4ca:
	add.l d0,$8(a3)
	add.l d0,$8(a4)
	bra.s loc_20e474
loc_20e4d4:
	bclr.b #$0,$1(a3)
	bclr.b #$0,$1(a4)
	bclr.b #$0,$22(a3)
	bclr.b #$0,$22(a4)
	move.l $2e(a0),d0
	bpl.s loc_20e4f4
	neg.l d0
loc_20e4f4:
	sub.l d0,$8(a3)
	sub.l d0,$8(a4)
	bra.w loc_20e474
loc_20e500:
	move.l $2e(a0),d0
	bpl.s loc_20e508
	neg.l d0
loc_20e508:
	add.l d0,$c(a3)
	add.l d0,$c(a4)
	bra.s loc_20e496
loc_20e512:
	move.l $2e(a0),d0
	bpl.s loc_20e51a
	neg.l d0
loc_20e51a:
	sub.l d0,$c(a3)
	sub.l d0,$c(a4)
	bra.w loc_20e496
loc_20e526:
	addq.b #$2,$24(a0)
	addq.b #$2,$24(a0)
	move.b #$c,$17(a0)
	move.b #$c,$19(a0)
	move.b #$14,$16(a0)
	move.b #$33,$20(a0)
	move.b #$0,$1(a0)
	move.w $8(a0),d0
	move.w $c(a0),d1
	sub.w ($f700).w,d0
	sub.w ($f704).w,d1
	addi.w #$80,d0
	addi.w #$80,d1
	swap d0
	move.w d1,d0
	move.l d0,$8(a0)
	movea.l $32(a0),a1
	jsr (sub_205a24).l
	jmp (sub_20381a).l
	addq.b #$2,$24(a0)
	move.w #$1ff,$1c(a0)
	move.b #$4,$1(a0)
	move.w $8(a0),d0
	move.w $a(a0),d1
	subi.w #$80,d0
	subi.w #$80,d1
	add.w ($f700).w,d0
	add.w ($f704).w,d1
	move.w d0,$8(a0)
	move.w d1,$c(a0)
loc_20e5ac:
	movea.l $32(a0),a1
	jsr (sub_205a24).l
loc_20e5b6:
	jsr (sub_20381a).l
	move.w $2a(a0),-(a7)
	jsr (sub_207876).l
	movea.w (a7)+,a1
	tst.b (a0)
	beq.s loc_20e5da
	rts
loc_20e5ce:
	move.w $2a(a0),-(a7)
	jsr (sub_2038c6).l
	movea.w (a7)+,a1
loc_20e5da:
	lea $32(a1),a2
	cmpa.w (a2),a0
	beq.s loc_20e5e4
	addq.w #$2,a2
loc_20e5e4:
	clr.w (a2)
	rts
	addq.b #$2,$24(a0)
	move.w #$2ff,$1c(a0)
	tst.b $28(a0)
	bne.s loc_20e5fc
	bsr.w sub_20e628
loc_20e5fc:
	bra.s loc_20e5ac
	addq.b #$2,$24(a0)
	move.w #$3ff,$1c(a0)
	bra.s loc_20e5ac
	subq.w #$2,$c(a0)
	tst.b $1(a0)
	bmi.s loc_20e626
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$a0,d0
	bgt.s loc_20e5ce
loc_20e626:
	bra.s loc_20e5ac

sub_20e628:
	movea.w $2a(a0),a1
	move.w $32(a1),d5
	beq.s loc_20e6a0
	move.w $34(a1),d6
	beq.s loc_20e6a0
	movea.w d5,a5
	movea.w d6,a6
	cmpa.w a0,a5
	bne.s loc_20e6a0
	tst.b $1(a5)
	bpl.s loc_20e6a0
	tst.b $1(a6)
	bpl.s loc_20e6a0
	moveq #$2,d6
	move.w $8(a5),d5
	move.w $c(a5),d4
	move.w $8(a6),d3
	move.w $c(a6),d2
	sub.w d5,d3
	sub.w d4,d2
	asr.w #$2,d3
	asr.w #$2,d2
	addq.w #$7,d4
loc_20e668:
	jsr (sub_207840).l
	bne.s loc_20e6a0
	move.w a5,$2a(a1)
	move.w a6,$2c(a1)
	move.b $0(a5),$0(a1)
	move.b $28(a5),$28(a1)
	move.b #$fe,$29(a1)
	move.w $2(a5),$2(a1)
	add.w d3,d5
	add.w d2,d4
	move.w d5,$8(a1)
	move.w d4,$c(a1)
	dbf d6,loc_20e668
loc_20e6a0:
	rts
loc_20e6a2:
	movea.w $2a(a0),a1
	movea.w $2c(a0),a2
	cmpi.b #$23,$0(a1)
	bne.w loc_20e72c
	cmpi.b #$23,$0(a2)
	bne.w loc_20e72c
	cmpi.b #$10,$24(a1)
	bne.w loc_20e72c
	cmpi.b #$10,$24(a1)
	bne.w loc_20e72c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e6e0(pc,d0.w),d0
	jmp dat_20e6e0(pc,d0.w)
dat_20e6e0:
	dc.b $00,$06,$00,$36,$00,$4c
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$2,$18(a0)
	move.b #$c,$17(a0)
	move.b #$c,$19(a0)
	move.b #$c,$16(a0)
	move.b #$b4,$20(a0)
	move.l #$20e852,$4(a0)
	lea dat_20e84a(pc),a1
	jsr (sub_205a24).l
	jmp (sub_20381a).l
loc_20e726:
	jmp (loc_207898).l
loc_20e72c:
	jmp (sub_2038c6).l

sub_20e732:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_20e74c
	move.w $8(a1),d0
	sub.w $8(a0),d0
	sub.w d3,d0
	sub.w d4,d0
loc_20e74c:
	rts
dat_20e74e:
	.incbin 59214, 50
dat_20e780:
	.incbin 59264, 50
dat_20e7b2:
	.incbin 59314, 76
dat_20e7fe:
	.incbin 59390, 76
dat_20e84a:
	.incbin 59466, 32
dat_20e86a:
	.incbin 59498, 16
	tst.b $24(a0)
	bne.s loc_20e8be
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4376,$2(a0)
	move.l #$20e8e0,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e8d4(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e8be:
	lea ($d000).w,a1
	jsr (sub_20940a).l
	jsr (sub_20381a).l
	jmp (sub_207876).l
dat_20e8d4:
	.incbin 59604, 106
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e95c(pc,d0.w),d0
	jsr dat_20e95c(pc,d0.w)
	jsr (sub_20381a).l
	move.w $2a(a0),d0
	jmp (sub_20787a).l
dat_20e95c:
	dc.b $00,$06,$00,$8c,$00,$ba
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20ea28,$4(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20ea66(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2e(a0)
	lea dat_20ea36(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	lsl.w #$4,d0
	moveq #$0,d1
	move.b $28(a0),d1
	lsl.w #$3,d1
	add.w d1,d0
	adda.w d0,a1
	moveq #$0,d0
	moveq #$0,d1
	move.w (a1)+,d0
	move.w (a1)+,d1
	lsl.l #$8,d0
	lsl.l #$8,d1
	move.l d0,$32(a0)
	move.l d1,$36(a0)
	move.w (a1)+,$2c(a0)
	move.w (a1),$30(a0)
	move.l $32(a0),d0
	move.l $36(a0),d1
	add.l d0,$8(a0)
	add.l d1,$c(a0)
	subq.w #$1,$30(a0)
	bne.s loc_20ea14
	addq.b #$2,$24(a0)
	move.w $2e(a0),$30(a0)
	neg.l $32(a0)
	neg.l $36(a0)
	tst.b $1(a0)
loc_20ea14:
	rts
	subq.w #$1,$30(a0)
	bne.s loc_20ea26
	subq.b #$2,$24(a0)
	move.w $2c(a0),$30(a0)
loc_20ea26:
	rts
	dc.b $00,$02,$02,$f0,$0d,$00,$00,$f0
	dc.b $00,$0d,$10,$00,$f0,$00
dat_20ea36:
	.incbin 59958, 48
dat_20ea66:
	.incbin 60006, 464

sub_20ec36:
	tst.b ($ff156a).l
	beq.s loc_20ec7c
	cmpi.b #$1,($ff152e).l
	bne.s loc_20ec4e
	tst.b $28(a0)
	beq.s loc_20ec7c
loc_20ec4e:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2038c6).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20ec7a
	move.w #$9e,d0
	jsr (sub_2021c6).l
loc_20ec7a:
	addq.l #$4,a7
loc_20ec7c:
	rts

sub_20ec7e:
	tst.b $28(a0)
	bmi.s loc_20ecae
	cmpi.b #$2,($ff152e).l
	bge.s loc_20ec9e
	tst.b ($ff156d).l
	bne.s loc_20ecae
	addq.l #$4,a7
	jmp (sub_207876).l
loc_20ec9e:
	tst.b ($ff156a).l
	bne.s loc_20ecae
	addq.l #$4,a7
	jmp (sub_2038c6).l
loc_20ecae:
	rts
	jsr (sub_20ec7e).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20edc6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ecd0(pc,d0.w),d0
	jmp dat_20ecd0(pc,d0.w)
dat_20ecd0:
	.incbin 60624, 246
loc_20edc6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20edd4(pc,d0.w),d0
	jmp dat_20edd4(pc,d0.w)
dat_20edd4:
	.incbin 60884, 1006
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$4af,$2(a0)
	move.l #$20f256,$4(a0)
	moveq #$8,d0
	moveq #$4,d1
	moveq #$0,d2
	tst.b $28(a0)
	bmi.s loc_20f1f2
	moveq #$14,d0
	moveq #$18,d1
	moveq #$1,d2
loc_20f1f2:
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
	move.b d2,$1c(a0)
	lea dat_20f212(pc),a1
	jsr (sub_205a24).l
	jmp (sub_20381a).l
dat_20f212:
	.incbin 61970, 174
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f2e4(pc,d0.w),d0
	jsr dat_20f2e4(pc,d0.w)
	jsr (sub_20381a).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20f2e2
	jmp (sub_207876).l
loc_20f2e2:
	rts
dat_20f2e4:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20f712(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$20f494,$4(a0)
	move.l #$20f6d2,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20f358
	addq.b #$2,d0
loc_20f358:
	tst.b ($ff152e).l
	bne.s loc_20f362
	addq.b #$1,d0
loc_20f362:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20f382
	tst.b ($ff152e).l
	bne.s loc_20f382
	move.b #$fa,$20(a0)
	subi.w #$10,$c(a0)
loc_20f382:
	tst.b ($ff156a).l
	bne.s loc_20f3ea
	tst.b ($ff152e).l
	bne.s loc_20f3ea
	bsr.w sub_20f466
	tst.b $21(a0)
	beq.s loc_20f3d6
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_20ae02).l
	lea ($d000).w,a1
	jsr (sub_20940a).l
	beq.s loc_20f3d4
	jsr (sub_2092bc).l
loc_20f3d4:
	rts
loc_20f3d6:
	lea ($d000).w,a1
	jsr (sub_20940a).l
	lea dat_20f48c(pc),a1
	jmp (sub_205a24).l
loc_20f3ea:
	rts
	.incbin 62444, 122

sub_20f466:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20f47c
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20f47c:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20f48a
	neg.w $32(a0)
loc_20f48a:
	rts
dat_20f48c:
	.incbin 62604, 646
dat_20f712:
	.incbin 63250, 1028
	tst.b $24(a0)
	bne.s loc_20fb40
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20fb80,$4(a0)
loc_20fb40:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20fb60
	lea ($d000).w,a1
	jsr (sub_20940a).l
	sne $2a(a0)
	bra.s loc_20fb74
loc_20fb60:
	tst.b $2a(a0)
	beq.s loc_20fb74
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr (sub_2092bc).l
loc_20fb74:
	jsr (sub_20381a).l
	jmp (sub_207876).l
	.incbin 64384, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20fba8(pc,d0.w),d0
	jsr dat_20fba8(pc,d0.w)
	move.w $36(a0),d0
	jmp (sub_20787a).l
dat_20fba8:
	dc.b $00,$04,$00,$64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20fd9c,$4(a0)
	move.b #$7f,$19(a0)
	move.b #$7f,$16(a0)
	move.w $8(a0),$36(a0)
	move.b $29(a0),d0
	andi.b #$3,d0
	move.b d0,$30(a0)
	move.b #$1,$18(a0)
	move.w #$a4af,$2(a0)
	btst.b #$3,$29(a0)
	beq.s loc_20fc0c
	move.b #$3,$18(a0)
	move.w #$24af,$2(a0)
	cmpi.b #$1,($ff152e).l
	beq.s loc_20fc0c
	addi.w #$2000,$2(a0)
loc_20fc0c:
	move.w ($f704).w,d0
	addi.w #$70,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20fc5a(pc,d0.w),d0
	jsr dat_20fc5a(pc,d0.w)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	btst.b #$2,$29(a0)
	beq.s loc_20fc48
	cmp.b $30(a0),d0
	bne.s loc_20fc46
	jsr (sub_20381a).l
loc_20fc46:
	rts
loc_20fc48:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20fc58
	jsr (sub_20381a).l
loc_20fc58:
	rts
dat_20fc5a:
	.incbin 64602, 76
loc_20fca6:
	tst.b $3a(a0)
	bne.s loc_20fcec
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea $0(a2,d0.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$3a(a0)
	move.b (a2)+,d1
	move.b (a2)+,d0
	ext.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	bclr.b #$0,$1(a0)
	bclr.b #$0,$22(a0)
	tst.b d1
	beq.s loc_20fcec
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20fcec:
	subq.b #$1,$3a(a0)
	bne.s loc_20fd04
	addq.b #$1,$3c(a0)
	move.b $3c(a0),d0
	cmp.b $3d(a0),d0
	bcs.s loc_20fd04
	clr.b $3c(a0)
loc_20fd04:
	rts
	lea dat_20fd14(pc),a2
	move.b #$8,$3d(a0)
	bra.w loc_20fca6
dat_20fd14:
	.incbin 64788, 62
	lea dat_20fd60(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20fca6
dat_20fd60:
	.incbin 64864, 16
	move.b $28(a0),d0
	subq.b #$4,d0
	bcc.s loc_20fd7a
	moveq #$0,d0
loc_20fd7a:
	move.b d0,$1a(a0)
	rts
	move.b $28(a0),d0
	subq.b #$6,d0
	bcc.s loc_20fd8a
	moveq #$0,d0
loc_20fd8a:
	move.b d0,$1a(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	rts
	.incbin 64924, 154

sub_20fe36:
	jmp (loc_206298).l
dat_20fe3c:
	.incbin 65084, 16
dat_20fe4c:
	.incbin 65100, 65972
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 1536
dat_2336bc:
	.incbin 210620, 3304
dat_2343a4:
	.incbin 213924, 256
dat_2344a4:
	.incbin 214180, 4096
dat_2354a4:
	.incbin 218276, 5120
dat_2368a4:
	.incbin 223396, 20014
dat_23b6d2:
	.incbin 243410, 18734
