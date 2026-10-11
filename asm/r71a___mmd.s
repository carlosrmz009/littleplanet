; R71A__.MMD
; disassembled from the disc; code only, data comes from data/R71A__.MMD at build time
	.file "R71A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$20,$0a
	jmp (loc_201b80).l
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
	bsr.w sub_2020b6
	bsr.w sub_20205e
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2013fa

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
	bsr.w sub_20073e
	bsr.s sub_20025e
	bsr.w sub_20247c
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
	bsr.w sub_20073e
	bsr.s sub_2002ee
	bsr.w sub_20247c
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
	bsr.w sub_20073e
	bsr.s sub_200386
	bsr.w sub_20247c
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
	bsr.w sub_20073e
	bsr.s sub_20041a
	bsr.w sub_20247c
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
	.incbin 1268, 586

sub_20073e:
	move.w #$2300,sr
loc_200742:
	tst.b ($f62a).w
	bne.s loc_200742
	rts

sub_20074a:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200762(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200762(pc,d0.w),d0
	rts
dat_200762:
	.incbin 1890, 640

sub_2009e2:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a3e
	move.w d2,d4
	tst.w d3
	bpl.w loc_2009fc
	neg.w d3
loc_2009fc:
	tst.w d4
	bpl.w loc_200a04
	neg.w d4
loc_200a04:
	cmp.w d3,d4
	bcc.w loc_200a16
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a48(pc,d4.w),d0
	bra.s loc_200a20
loc_200a16:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a48(pc,d3.w),d0
loc_200a20:
	tst.w d1
	bpl.w loc_200a2c
	neg.w d0
	addi.w #$80,d0
loc_200a2c:
	tst.w d2
	bpl.w loc_200a38
	neg.w d0
	addi.w #$100,d0
loc_200a38:
	movem.l (a7)+,d3-d4
	rts
loc_200a3e:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a48:
	.incbin 2632, 258

sub_200b4a:
	btst.b #$3,$22(a0)
	beq.s loc_200b5e
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200b5e:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200b80
	move.b $26(a0),d0
	bpl.s loc_200b7a
	subq.b #$1,d0
loc_200b7a:
	addi.b #$20,d0
	bra.s loc_200b8c
loc_200b80:
	move.b $26(a0),d0
	bpl.s loc_200b88
	addq.b #$1,d0
loc_200b88:
	addi.b #$1f,d0
loc_200b8c:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e16
	cmpi.b #$80,d0
	beq.w loc_200d74
	cmpi.b #$c0,d0
	beq.w loc_200cd8
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
	bsr.w sub_2010a0
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
	bsr.w sub_2010a0
	move.w (a7)+,d0
	bsr.w sub_200cac
	tst.w d1
	beq.s loc_200c1a
	bpl.s loc_200c1c
	cmpi.w #$fff2,d1
	blt.s loc_200c42
	add.w d1,$c(a0)
loc_200c1a:
	rts
loc_200c1c:
	cmpi.w #$e,d1
	bgt.s loc_200c28
loc_200c22:
	add.w d1,$c(a0)
	rts
loc_200c28:
	tst.b $38(a0)
	bne.s loc_200c22
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c42:
	rts
	.incbin 3140, 34
loc_200c66:
	rts
	.incbin 3176, 68

sub_200cac:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200cba
	move.b ($f768).w,d2
	move.w d0,d1
loc_200cba:
	btst.l #$0,d2
	bne.s loc_200cc6
	move.b d2,$26(a0)
	rts
loc_200cc6:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200cd8:
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
	bsr.w sub_201210
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
	bsr.w sub_201210
	move.w (a7)+,d0
	bsr.w sub_200cac
	tst.w d1
	beq.s loc_200d4c
	bpl.s loc_200d4e
	cmpi.w #$fff2,d1
	blt.w loc_200c66
	add.w d1,$8(a0)
loc_200d4c:
	rts
loc_200d4e:
	cmpi.w #$e,d1
	bgt.s loc_200d5a
loc_200d54:
	add.w d1,$8(a0)
	rts
loc_200d5a:
	tst.b $38(a0)
	bne.s loc_200d54
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200d74:
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
	bsr.w sub_2010a0
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
	bsr.w sub_2010a0
	move.w (a7)+,d0
	bsr.w sub_200cac
	tst.w d1
	beq.s loc_200dee
	bpl.s loc_200df0
	cmpi.w #$fff2,d1
	blt.w loc_200c42
	sub.w d1,$c(a0)
loc_200dee:
	rts
loc_200df0:
	cmpi.w #$e,d1
	bgt.s loc_200dfc
loc_200df6:
	sub.w d1,$c(a0)
	rts
loc_200dfc:
	tst.b $38(a0)
	bne.s loc_200df6
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e16:
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
	bsr.w sub_201210
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
	bsr.w sub_201210
	move.w (a7)+,d0
	bsr.w sub_200cac
	tst.w d1
	beq.s loc_200e90
	bpl.s loc_200e92
	cmpi.w #$fff2,d1
	blt.w loc_200c66
	sub.w d1,$8(a0)
loc_200e90:
	rts
loc_200e92:
	cmpi.w #$e,d1
	bgt.s loc_200e9e
loc_200e98:
	sub.w d1,$8(a0)
	rts
loc_200e9e:
	tst.b $38(a0)
	bne.s loc_200e98
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200eb8:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200ece
	andi.w #$380,d0
loc_200ece:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f2e
	bmi.s loc_200f32
	cmpi.b #$5,($ff1506).l
	beq.s loc_200efe
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f04
loc_200efe:
	andi.w #$7fff,$2(a0)
loc_200f04:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f14
	bclr.b #$6,$1(a0)
loc_200f14:
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
loc_200f2e:
	movea.l d1,a1
	rts
loc_200f32:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f9a
	btst.b #$6,$1(a0)
	bne.s loc_200f60
	cmpi.b #$14,d1
	bne.w loc_201084
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201084
loc_200f60:
	cmpi.b #$15,d1
	bne.s loc_200f6e
	move.w #$60,d1
	bra.w loc_201084
loc_200f6e:
	cmpi.b #$1e,d1
	bne.s loc_200f7c
	move.w #$61,d1
	bra.w loc_201084
loc_200f7c:
	cmpi.b #$1f,d1
	bne.s loc_200f8a
	move.w #$62,d1
	bra.w loc_201084
loc_200f8a:
	cmpi.b #$32,d1
	bne.w loc_201084
	move.w #$63,d1
	bra.w loc_201084
loc_200f9a:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201000
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_200fea
	cmpi.b #$6,d1
	beq.s loc_200fea
	tst.b ($ff1956).l
	beq.w loc_201084
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_200ffa
	cmpi.b #$3c,d1
	beq.s loc_200ffa
	cmpi.b #$37,d1
	beq.s loc_200ffa
	cmpi.b #$2f,d1
	beq.s loc_200ffa
	cmpi.b #$16,d1
	beq.s loc_200ffa
	bra.w loc_201084
loc_200fea:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201084
loc_200ffa:
	addq.b #$1,d1
	bra.w loc_201084
loc_201000:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201070
	cmpi.b #$3,$0(a0)
	bcc.w loc_201084
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201084
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_201034
	move.w #$6a,d1
	bra.s loc_201084
loc_201034:
	cmpi.b #$48,d1
	bne.s loc_201040
	move.w #$6b,d1
	bra.s loc_201084
loc_201040:
	cmpi.b #$4a,d1
	bne.s loc_20104c
	move.w #$6c,d1
	bra.s loc_201084
loc_20104c:
	cmpi.b #$10,d1
	bne.s loc_201058
	move.w #$6d,d1
	bra.s loc_201084
loc_201058:
	cmpi.b #$63,d1
	bne.s loc_201064
	move.w #$6e,d1
	bra.s loc_201084
loc_201064:
	cmpi.b #$43,d1
	bne.s loc_201084
	move.w #$6f,d1
	bra.s loc_201084
loc_201070:
	btst.b #$6,$1(a0)
	beq.s loc_201084
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201084
	move.w #$51,d1
loc_201084:
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

sub_2010a0:
	bsr.w sub_200eb8
	cmpi.l #$210000,d1
	beq.s loc_2010ba
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2010ba
	btst.l d5,d4
	bne.s loc_2010c8
loc_2010ba:
	add.w a3,d2
	bsr.w sub_201160
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_2010c8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2010ba
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2010ee
	not.w d1
	neg.b (a4)
loc_2010ee:
	btst.l #$c,d4
	beq.s loc_2010fe
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2010fe:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20111a
	neg.w d0
loc_20111a:
	tst.w d0
	beq.s loc_2010ba
	bmi.s loc_201136
	cmpi.b #$10,d0
	beq.s loc_201152
loc_201126:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201136:
	cmpa.w #$10,a3
	bne.s loc_201146
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201126
loc_201146:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2010ba
loc_201152:
	sub.w a3,d2
	bsr.w sub_201160
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201160:
	bsr.w sub_200eb8
	cmpi.l #$210000,d1
	beq.s loc_20117a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20117a
	btst.l d5,d4
	bne.s loc_201188
loc_20117a:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201188:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20117a
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011ae
	not.w d1
	neg.b (a4)
loc_2011ae:
	btst.l #$c,d4
	beq.s loc_2011be
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2011be:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2344a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2011da
	neg.w d0
loc_2011da:
	tst.w d0
	beq.s loc_20117a
	bmi.s loc_2011f0
loc_2011e0:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2011f0:
	cmpa.w #$10,a3
	bne.s loc_201200
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2011e0
loc_201200:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20117a
	not.w d1
	rts

sub_201210:
	bsr.w sub_200eb8
	cmpi.l #$210000,d1
	beq.s loc_20122a
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20122a
	btst.l d5,d4
	bne.s loc_201238
loc_20122a:
	add.w a3,d3
	bsr.w sub_2012c0
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201238:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20122a
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201266
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201266:
	btst.l #$b,d4
	beq.s loc_20126e
	neg.b (a4)
loc_20126e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20128a
	neg.w d0
loc_20128a:
	tst.w d0
	beq.s loc_20122a
	bmi.s loc_2012a6
	cmpi.b #$10,d0
	beq.s loc_2012b2
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012a6:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20122a
loc_2012b2:
	sub.w a3,d3
	bsr.w sub_2012c0
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_2012c0:
	bsr.w sub_200eb8
	cmpi.l #$210000,d1
	beq.s loc_2012da
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2012da
	btst.l d5,d4
	bne.s loc_2012e8
loc_2012da:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2012e8:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2012da
	lea (dat_2343a4).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201316
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201316:
	btst.l #$b,d4
	beq.s loc_20131e
	neg.b (a4)
loc_20131e:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_2354a4).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20133a
	neg.w d0
loc_20133a:
	tst.w d0
	beq.s loc_2012da
	bmi.s loc_201350
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201350:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2012da
	not.w d1
	rts

sub_201360:
	rts
	.incbin 4962, 152
loc_2013fa:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20141a
	tst.b ($ff0f01).l
	bne.s loc_20141a
	move.b #$1,($ff156a).l
loc_20141a:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201480
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_2076ae
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201480
	move.b #$1,($ff1508).l
loc_201480:
	bset.b #$7,($f600).w
	bsr.w sub_20246e
	tst.b ($ff156e).l
	bne.s loc_2014a6
	btst.b #$7,($ff152e).l
	beq.s loc_2014dc
	bset.b #$0,($ff151d).l
	beq.s loc_2014b2
loc_2014a6:
	bsr.w sub_2003fa
	bclr.b #$0,($ff151d).l
loc_2014b2:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20154c
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_2014da
	bclr.b #$7,($ff152e).l
loc_2014da:
	rts
loc_2014dc:
	bset.b #$0,($ff151d).l
	beq.s loc_2014ea
	bsr.w sub_2002ce
loc_2014ea:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201506
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20152e
loc_201506:
	tst.b ($ff1508).l
	bne.s loc_20154c
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20152e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201536:
	move.l #$0,(a1)+
	dbf d6,loc_201536
	move.b #$c,($f62a).w
	bsr.w sub_20073e
	rts
loc_20154c:
	cmpi.w #$800,($f78e).w
	bne.s loc_20156a
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20156a:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201580
	btst.b #$7,($ff152e).l
	beq.s loc_201586
loc_201580:
	move.l #$eee0eee,d0
loc_201586:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_20158e:
	move.l d0,(a1)+
	dbf d6,loc_20158e
loc_201594:
	move.b #$c,($f62a).w
	bsr.w sub_20073e
	bsr.w sub_20247c
	bne.s loc_201594
	tst.l ($f680).w
	bsr.w sub_201a3a
	moveq #$0,d0
	lea (dat_20f90c).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015be
	bsr.w sub_202582
loc_2015be:
	moveq #$1,d0
	bsr.w sub_202582
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_2015da:
	move.l d0,(a1)+
	dbf d1,loc_2015da
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_2015ec:
	move.l d0,(a1)+
	dbf d1,loc_2015ec
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2015fc:
	move.l d0,(a1)+
	dbf d1,loc_2015fc
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_20160e:
	move.l d0,(a1)+
	dbf d1,loc_20160e
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20161e:
	move.l d0,(a1)+
	dbf d1,loc_20161e
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20162e:
	move.l d0,(a1)+
	dbf d1,loc_20162e
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_202158
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
	bsr.w sub_2027d2
	bsr.w sub_2028e6
	bset.b #$2,($f754).w
	bsr.w sub_2033a6
	bsr.w sub_20329c
	jsr (sub_201360).l
	bsr.w sub_201974
loc_2016ae:
	move.b #$c,($f62a).w
	bsr.w sub_20073e
	bsr.w sub_20247c
	bne.s loc_2016ae
	tst.l ($f680).w
	bne.s loc_2016ae
	bsr.w sub_201900
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a9a
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_201712
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_201712:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201754
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201754:
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
	jsr (sub_20f906).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_2017e4
loc_2017de:
	bsr.w sub_20034c
	bra.s loc_2017f2
loc_2017e4:
	bclr.b #$0,($ff0f22).l
	bne.s loc_2017de
	bsr.w sub_20022c
loc_2017f2:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_201800:
	move.b #$8,($f62a).w
	bsr.w sub_20073e
	tst.b ($f7cc).w
	bne.s loc_20181e
	btst.b #$7,($f605).w
	beq.s loc_20181e
	eori.b #$1,($f63a).w
loc_20181e:
	btst.b #$0,($f63a).w
	beq.w loc_201890
	bsr.w sub_201afe
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_20186e
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_201800
	subq.b #$1,($ff1508).l
	bpl.s loc_201850
	clr.b ($ff1508).l
loc_201850:
	move.w #$e,d0
	jsr (sub_205a64).l
	bsr.w sub_2076ae
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_20187c
loc_20186e:
	andi.b #$70,d0
	beq.w loc_201800
	clr.b ($ff1508).l
loc_20187c:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2013fa
loc_201890:
	bsr.w sub_201b44
	addq.w #$1,($ff1504).l
	jsr (sub_2076c4).l
	jsr (sub_2037ba).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2013fa
	tst.w ($ff1502).l
	bne.w loc_2013fa
	tst.w ($ff1906).l
	bne.s loc_2018d8
	cmpi.b #$6,($d024).w
	bcs.s loc_2018d8
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_2018dc
loc_2018d8:
	bsr.w sub_2028e6
loc_2018dc:
	jsr (sub_203964).l
	tst.w ($ff190e).l
	bne.s loc_2018ee
	bsr.w sub_200184
loc_2018ee:
	jsr (sub_20ce36).l
	bsr.w sub_20247c
	bsr.w sub_2019a6
	bra.w loc_201800

sub_201900:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201918
	move.w #$78,$30(a1)
loc_201918:
	rts
	.incbin 6426, 90

sub_201974:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201986(pc,d0.w),($f796).w
	rts
dat_201986:
	.incbin 6534, 32

sub_2019a6:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019c4
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019c4:
	subq.b #$1,($ff1912).l
	bpl.s loc_2019e2
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_2019e2:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a0a
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a0a
	move.b #$0,($ff1915).l
loc_201a0a:
	tst.b ($ff1916).l
	beq.s loc_201a38
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a38:
	rts

sub_201a3a:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a5c
	cmpi.b #$2,d0
	bne.s loc_201a5c
	add.b ($ff156a).l,d0
loc_201a5c:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a74(pc,d1.w),d0
	jmp (sub_205a64).l
dat_201a74:
	.incbin 6772, 38

sub_201a9a:
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

sub_201afe:
	move.w #$ab,d0
	jsr (sub_202246).l
	bset.b #$7,($f63a).w
	bne.s loc_201b42
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b28
loc_201b1e:
	move.w #$d5,d0
	jmp (sub_205a64).l
loc_201b28:
	tst.b ($ff151f).l
	bne.s loc_201b1e
	tst.b ($ff1520).l
	bne.s loc_201b1e
	move.w #$90,d0
	jmp (sub_205a64).l
loc_201b42:
	rts

sub_201b44:
	bclr.b #$7,($f63a).w
	beq.s loc_201b7e
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201b64
loc_201b5a:
	move.w #$d6,d0
	jmp (sub_205a64).l
loc_201b64:
	tst.b ($ff151f).l
	bne.s loc_201b5a
	tst.b ($ff1520).l
	bne.s loc_201b5a
	move.w #$91,d0
	jmp (sub_205a64).l
loc_201b7e:
	rts
loc_201b80:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201c0c
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201bbc
	move.w #$700,d0
loc_201bb8:
	dbf d0,loc_201bb8
loc_201bbc:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201bf2(pc,d0.w),d0
	jsr dat_201bf2(pc,d0.w)
loc_201bd2:
	jsr (sub_20226a).l
	tst.b ($f63a).w
	bne.s loc_201be6
	bsr.w sub_20201e
	bsr.w sub_20200c
loc_201be6:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201bf2:
	.incbin 7154, 26
loc_201c0c:
	tst.b ($ff1957).l
	beq.w loc_201bd2
	cmpi.b #$2,($ff1506).l
	bne.w loc_201bd2
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201c3a
	move.w #$700,d0
loc_201c36:
	dbf d0,loc_201c36
loc_201c3a:
	move.w #$1,($f6fc).w
	jsr (sub_2021de).l
	tst.b ($f64e).w
	bne.s loc_201c72
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201c96
loc_201c72:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201c96:
	move.w ($f624).w,(a5)
	jsr (sub_2021fa).l
	bra.w loc_201bd2
	.incbin 7332, 60
	jsr (sub_2021de).l
	bsr.w sub_20207a
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
	bsr.w sub_205986
	tst.b ($f767).w
	beq.s loc_201d8e
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201d8e:
	jsr (sub_20f906).l
	jsr (sub_2021fa).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e92
	bsr.w sub_2024ee
	jmp (loc_20a91a).l
	dc.b $4e,$75
	jsr (sub_2021de).l
	bsr.w sub_20207a
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
	jsr (sub_2021fa).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_202e92
	bra.w loc_2024d2
	.incbin 7782, 16
	bsr.w sub_201f62
	cmpi.b #$1,($ff1903).l
	bne.s loc_201e98
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_201e98:
	move.w ($f624).w,(a5)
	bra.w loc_2024d2
	.incbin 7840, 82
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_2021fa).l
	lea ($d000).w,a0
	bsr.w sub_205986
	tst.b ($f767).w
	beq.s loc_201f54
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f54:
	tst.w ($f614).w
	beq.w loc_201f60
	subq.w #$1,($f614).w
loc_201f60:
	rts

sub_201f62:
	jsr (sub_2021de).l
	bsr.w sub_20207a
	tst.b ($f64e).w
	bne.s loc_201f98
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201fbc
loc_201f98:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201fbc:
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
	jmp (sub_2021fa).l
	dc.b $4e,$73

sub_20200c:
	tst.b ($d02a).w
	bne.s loc_20201c
	tst.w ($f786).w
	beq.s loc_20201c
	addq.w #$1,($f786).w
loc_20201c:
	rts

sub_20201e:
	tst.w ($f780).w
	beq.s loc_202028
	addq.w #$1,($f780).w
loc_202028:
	tst.w ($f782).w
	beq.s loc_202032
	addq.w #$1,($f782).w
loc_202032:
	rts
	.incbin 8244, 42

sub_20205e:
	bsr.w sub_2021de
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2021fa

sub_20207a:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_202088
	addq.w #$2,a1

sub_202088:
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

sub_2020b6:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202132).l,a2
	moveq #$12,d7
loc_2020ca:
	move.w (a2)+,(a0)
	dbf d7,loc_2020ca
	move.w (dat_202134).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2020f0:
	move.w d0,(a1)
	dbf d7,loc_2020f0
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202122:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202122
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202132:
	dc.b $80,$04
dat_202134:
	.incbin 8500, 36

sub_202158:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20217a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20217a
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_2021a8:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2021a8
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2021c6:
	move.l d0,(a1)+
	dbf d1,loc_2021c6
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2021d6:
	move.l d0,(a1)+
	dbf d1,loc_2021d6
	rts

sub_2021de:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2021ee:
	btst.b #$0,($a11100).l
	bne.s loc_2021ee
	rts

sub_2021fa:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 8712, 62

sub_202246:
	tst.b ($f00a).w
	bne.s loc_202252
	move.b d0,($f00a).w
	rts
loc_202252:
	tst.b ($f00b).w
	bne.s loc_20225e
	move.b d0,($f00b).w
	rts
loc_20225e:
	tst.b ($f00c).w
	bne.s loc_202268
	move.b d0,($f00c).w
loc_202268:
	rts

sub_20226a:
	jsr (sub_2021de).l
	tst.b ($f00a).w
	beq.s loc_202284
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202284:
	tst.b ($f00b).w
	beq.s loc_202298
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_202298:
	tst.b ($f00c).w
	beq.s loc_2022ac
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_2022ac:
	bra.w sub_2021fa
	.incbin 8880, 32

sub_2022d0:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202392).l,a3
	lea ($c00000).l,a4
	bra.s loc_2022ec

sub_2022e2:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_2023a8).l,a3
loc_2022ec:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2022fa
	adda.w #$a,a3
loc_2022fa:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2023be
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_20231a
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_20231a:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202366
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202342
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202342:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202350:
	lsr.w #$4,d0
loc_202352:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202360
	jmp (a3)

sub_20235c:
	moveq #$0,d4
	moveq #$8,d3
loc_202360:
	dbf d0,loc_202352
	bra.s sub_20231a
loc_202366:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202374
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202374:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202350
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202350
loc_202392:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20235c
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20235c
	rts
dat_2023a8:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20235c
	rts

sub_2023be:
	move.b (a0)+,d0
loc_2023c0:
	cmpi.b #$ff,d0
	bne.s loc_2023c8
	rts
loc_2023c8:
	move.w d0,d7
loc_2023ca:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2023c0
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
	bne.s loc_2023f8
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2023ca
loc_2023f8:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_202404:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_202404
	bra.s loc_2023ca

sub_202410:
	movem.l a1-a2,-(a7)
	lea (dat_20f91c).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_202428:
	tst.l (a2)
	beq.s loc_202430
	addq.w #$6,a2
	bra.s loc_202428
loc_202430:
	move.w (a1)+,d0
	bmi.s loc_20243c
loc_202434:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202434
loc_20243c:
	movem.l (a7)+,a1-a2
	rts
loc_202442:
	movem.l a1-a2,-(a7)
	lea (dat_20f91c).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_20246e
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_202468
loc_202460:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202460
loc_202468:
	movem.l (a7)+,a1-a2
	rts

sub_20246e:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202474:
	clr.l (a2)+
	dbf d0,loc_202474
	rts

sub_20247c:
	tst.l ($f680).w
	beq.s loc_2024d0
	tst.w ($f6f8).w
	bne.s loc_2024d0
	movea.l ($f680).w,a0
	lea (loc_202392).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_20249e
	adda.w #$a,a3
loc_20249e:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2023be
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
loc_2024d0:
	rts
loc_2024d2:
	tst.w ($f6f8).w
	beq.w loc_202570
loc_2024da:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_20250c

sub_2024ee:
	tst.w ($f6f8).w
	beq.s loc_202570
	tst.b ($f744).w
	bne.s loc_2024da
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_20250c:
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
loc_202540:
	movea.w #$8,a5
	bsr.w sub_20235c
	subq.w #$1,($f6f8).w
	beq.s loc_202572
	subq.w #$1,($f6fa).w
	bne.s loc_202540
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202570:
	rts
loc_202572:
	lea ($f680).w,a0
	moveq #$15,d0
loc_202578:
	move.l $6(a0),(a0)+
	dbf d0,loc_202578
	rts

sub_202582:
	lea (dat_20f91c).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202594:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2022d0
	dbf d1,loc_202594
	rts
	.incbin 9652, 542

sub_2027d2:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_20282e).l,a0
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
	bra.w loc_20283a
dat_20282e:
	dc.b $00,$04,$00,$00,$2e,$97,$00,$00
	dc.b $05,$10,$00,$60
loc_20283a:
	tst.b ($ff1522).l
	beq.s loc_20285a
	jsr (sub_206796).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202858
	moveq #$0,d0
loc_202858:
	bra.s loc_202870
loc_20285a:
	lea (dat_2028ac).l,a1
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202870:
	subi.w #$a0,d1
	bcc.s loc_202878
	moveq #$0,d1
loc_202878:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202882
	move.w d2,d1
loc_202882:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_20288e
	moveq #$0,d0
loc_20288e:
	cmp.w ($f72e).w,d0
	blt.s loc_202898
	move.w ($f72e).w,d0
loc_202898:
	move.w d0,($f704).w
	bsr.w sub_2028b4
	lea (dat_2028b0).l,a1
	move.l (a1),($f7ac).w
	rts
dat_2028ac:
	dc.b $00,$40,$01,$8c
dat_2028b0:
	dc.b $84,$86,$7f,$7f

sub_2028b4:
	swap d0
	lsr.l #$2,d0
	move.l d0,d2
	lsr.w #$1,d2
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

sub_2028e6:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_2028f2
	rts
loc_2028f2:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202b08
	bsr.w sub_202ba8
	bsr.w sub_20344e
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202e32
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202dfe
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202dca
	move.w ($f704).w,d0
	lsr.w #$2,d0
	move.w d0,d1
	lsr.w #$1,d1
	add.w d1,d0
	bsr.w sub_202d9a
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
	bsr.w sub_202a08
	move.w ($f708).w,d0
	neg.w d0
	moveq #$3,d6
loc_20299c:
	move.w d0,(a1)+
	dbf d6,loc_20299c
	bsr.w sub_202a4c
	move.w ($f718).w,d0
	neg.w d0
	moveq #$f,d6
loc_2029ae:
	move.w d0,(a1)+
	dbf d6,loc_2029ae
	bsr.w sub_202a8a
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1d,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202ac6
dat_2029d6:
	.incbin 10710, 38
dat_2029fc:
	dc.b $01,$01,$00,$00,$00,$00,$00,$00
	dc.b $00,$00,$00,$00

sub_202a08:
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
loc_202a2c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_2029d6(pc,d6.w),d5
loc_202a36:
	move.w d0,-(a1)
	dbf d5,loc_202a36
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a2c
	adda.w #$58,a1
	rts

sub_202a4c:
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
loc_202a6c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_2029fc(pc,d6.w),d5
loc_202a76:
	move.w d0,(a1)+
	dbf d5,loc_202a76
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202a6c
	rts
dat_202a88:
	dc.b $09,$07

sub_202a8a:
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
loc_202aaa:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202a88(pc,d6.w),d5
loc_202ab4:
	move.w d0,(a1)+
	dbf d5,loc_202ab4
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202aaa
	rts
loc_202ac6:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202ad4(pc,d2.w)
loc_202ad2:
	move.w (a2)+,d0
loc_202ad4:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202ad2
	rts
	.incbin 10986, 30

sub_202b08:
	move.w ($f700).w,d4
	bsr.s sub_202b3c
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202b3a
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202b34
	bset.b #$2,($f754).w
	rts
loc_202b34:
	bset.b #$3,($f754).w
loc_202b3a:
	rts

sub_202b3c:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202b4e
	bcs.s loc_202b7e
	bra.s loc_202b54
loc_202b4e:
	clr.w ($f73a).w
	rts
loc_202b54:
	cmpi.w #$10,d0
	blt.s loc_202b5e
	move.w #$10,d0
loc_202b5e:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202b6c
	move.w ($f72a).w,d0
loc_202b6c:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202b7e:
	cmpi.w #$fff0,d0
	bge.s loc_202b88
	move.w #$fff0,d0
loc_202b88:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202b6c
	move.w ($f728).w,d0
	bra.s loc_202b6c
	.incbin 11160, 16

sub_202ba8:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202bbc
	subq.w #$5,d0
loc_202bbc:
	btst.b #$1,$22(a6)
	beq.s loc_202bdc
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202c28
	subi.w #$40,d0
	bcc.s loc_202c28
	tst.b ($f75c).w
	bne.s loc_202c3a
	bra.s loc_202be8
loc_202bdc:
	sub.w ($f73e).w,d0
	bne.s loc_202bee
	tst.b ($f75c).w
	bne.s loc_202c3a
loc_202be8:
	clr.w ($f73c).w
	rts
loc_202bee:
	cmpi.w #$60,($f73e).w
	bne.s loc_202c16
	move.w $14(a6),d1
	bpl.s loc_202bfe
	neg.w d1
loc_202bfe:
	cmpi.w #$800,d1
	bcc.s loc_202c28
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202c88
	cmpi.w #$fffa,d0
	blt.s loc_202c52
	bra.s loc_202c40
loc_202c16:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202c88
	cmpi.w #$fffe,d0
	blt.s loc_202c52
	bra.s loc_202c40
loc_202c28:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202c88
	cmpi.w #$fff0,d0
	blt.s loc_202c52
	bra.s loc_202c40
loc_202c3a:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202c40:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202c92
	bra.w loc_202c5e
loc_202c52:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c5e:
	cmp.w ($f72c).w,d1
	bgt.s loc_202cb6
	cmpi.w #$ff00,d1
	bgt.s loc_202c82
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cb6
loc_202c82:
	move.w ($f72c).w,d1
	bra.s loc_202cb6
loc_202c88:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202c92:
	cmp.w ($f72e).w,d1
	blt.s loc_202cb6
	subi.w #$800,d1
	bcs.s loc_202cb2
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202cb6
loc_202cb2:
	move.w ($f72e).w,d1
loc_202cb6:
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
	bne.s loc_202cf8
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202cf2
	bset.b #$0,($f754).w
	rts
loc_202cf2:
	bset.b #$1,($f754).w
loc_202cf8:
	rts
	.incbin 11514, 160

sub_202d9a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202dc8
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202dc2
	bset.b #$0,($f756).w
	rts
loc_202dc2:
	bset.b #$1,($f756).w
loc_202dc8:
	rts

sub_202dca:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202dfc
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202df6
	bset.b d6,($f756).w
	bra.s loc_202dfc
loc_202df6:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202dfc:
	rts

sub_202dfe:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202e30
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202e2a
	bset.b d6,($f758).w
	bra.s loc_202e30
loc_202e2a:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202e30:
	rts

sub_202e32:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202e64
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202e5e
	bset.b d6,($f75a).w
	bra.s loc_202e64
loc_202e5e:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202e64:
	rts
	.incbin 11878, 44

sub_202e92:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_202f50
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_203036
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_203038
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_202f4e
	bclr.b #$0,(a2)
	beq.s loc_202f04
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203264
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20303a
loc_202f04:
	bclr.b #$1,(a2)
	beq.s loc_202f1e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203264
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_20303a
loc_202f1e:
	bclr.b #$2,(a2)
	beq.s loc_202f34
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203264
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203090
loc_202f34:
	bclr.b #$3,(a2)
	beq.s loc_202f4e
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203264
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203090
loc_202f4e:
	rts

sub_202f50:
	lea (dat_20331c).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_202f6c
	bclr.b #$1,(a2)
	beq.s loc_202fb6
	move.w #$e0,d4
loc_202f6c:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_202fe6(pc,d0.w),a3
	beq.s loc_202f9e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203264
	movem.l (a7)+,d4-d5
	bsr.w sub_20303a
	movea.l (a7)+,a0
	bra.s loc_202fb6
loc_202f9e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_203266
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203066
	movea.l (a7)+,a0
loc_202fb6:
	tst.b (a2)
	bne.s loc_202fbc
	rts
loc_202fbc:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_202fd0
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_202fd0:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_202ff6
dat_202fe6:
	.incbin 12262, 16
loc_202ff6:
	moveq #$f,d6
	move.l #$800000,d7
loc_202ffe:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20302a
	btst.b d0,(a2)
	beq.s loc_20302a
	add.w d0,d0
	movea.l dat_202fe6(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_20313c
	movem.l (a7)+,d4-d5
	bsr.w sub_203264
	bsr.w sub_2030be
	movem.l (a7)+,d4-d5/a0
loc_20302a:
	addi.w #$10,d4
	dbf d6,loc_202ffe
	clr.b (a2)
	rts

sub_203036:
	rts

sub_203038:
	rts

sub_20303a:
	moveq #$15,d6

sub_20303c:
	move.l #$800000,d7
	move.l d0,d1
loc_203044:
	movem.l d4-d5,-(a7)
	bsr.w sub_20313c
	move.l d1,d0
	bsr.w sub_2030be
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_203044
	rts

sub_203066:
	move.l #$800000,d7
	move.l d0,d1
loc_20306e:
	movem.l d4-d5,-(a7)
	bsr.w sub_20313e
	move.l d1,d0
	bsr.w sub_2030be
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_20306e
	rts

sub_203090:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20309a:
	movem.l d4-d5,-(a7)
	bsr.w sub_20313c
	move.l d1,d0
	bsr.w sub_2030be
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20309a
	rts

sub_2030be:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_2030fa
	btst.b #$3,(a0)
	bne.s loc_2030da
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_2030da:
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
loc_2030fa:
	btst.b #$3,(a0)
	bne.s loc_20311c
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
loc_20311c:
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

sub_20313c:
	add.w (a3),d5

sub_20313e:
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
	beq.s loc_20318c
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
loc_20318c:
	rts
	.incbin 12686, 214

sub_203264:
	add.w (a3),d5

sub_203266:
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
	.incbin 12928, 28

sub_20329c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_2032c6
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_2032ee

sub_2032c6:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032ca:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_203264
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_20303c
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_2032ca
	rts
loc_2032ee:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_2032f2:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20331c).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_20336e
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_2032f2
	rts
dat_20331c:
	.incbin 13084, 66
dat_20335e:
	.incbin 13150, 16

sub_20336e:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_20335e(pc,d0.w),a3
	beq.s loc_203390
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203264
	movem.l (a7)+,d4-d5
	bsr.w sub_20303a
	bra.s loc_2033a4
loc_203390:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_203266
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_203066
loc_2033a4:
	rts

sub_2033a6:
	moveq #$0,d0
	lea (dat_20f90c).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2022e2
	movea.l (a2)+,a0
	bsr.w sub_203400
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_200488
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_2033ea
	jmp (loc_20ce12).l
loc_2033ea:
	btst.b #$1,($ff151c).l
	beq.s loc_2033fe
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2033fe
	bsr.w sub_202410
loc_2033fe:
	rts

sub_203400:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20340a:
	move.l d0,(a3)+
	dbf d1,loc_20340a
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203420
	lea ($a040).w,a3
	moveq #$2,d1

sub_203420:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2368a4).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20343a:
	move.w d1,d0
	movea.l a3,a0
loc_20343e:
	move.b (a1)+,(a0)+
	dbf d0,loc_20343e
	lea $80(a3),a3
	dbf d2,loc_20343a
	rts

sub_20344e:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_2034c8(pc,d0.w),d0
	jsr dat_2034c8(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203474
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203474:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2034a2
	bcc.s loc_2034a4
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203498
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203498:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2034a2:
	rts
loc_2034a4:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2034bc
	btst.b #$1,($d022).w
	beq.s loc_2034bc
	add.w d1,d1
	add.w d1,d1
loc_2034bc:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_2034c8:
	.incbin 13512, 578
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20371c(pc,d0.w),d0
	jmp dat_20371c(pc,d0.w)
dat_20371c:
	dc.b $00,$06,$00,$0e,$00,$16
	move.w #$510,($f726).w
	rts
	.incbin 14122, 144

sub_2037ba:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_2037c2:
	move.b (a0),d0
	beq.s loc_2037d8
	add.w d0,d0
	add.w d0,d0
	lea (dat_203bdc).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_2037d8:
	lea $40(a0),a0
	dbf d7,loc_2037c2
	rts

sub_2037e2:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203820
	bpl.s loc_203812
	btst.b #$1,$2c(a0)
	beq.s loc_203812
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203820
loc_203812:
	btst.b #$2,$2c(a0)
	bne.s loc_203820
	addi.w #$38,$12(a0)
loc_203820:
	tst.w $12(a0)
	bmi.s loc_203834
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203834
	move.w #$1000,$12(a0)
loc_203834:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203844:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203880
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203880
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20387e
	neg.w d1
loc_20387e:
	add.w d1,d0
loc_203880:
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

sub_20389a:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20390a
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203926
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203926
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_2038e4
	cmpi.w #$800,d3
	bcs.s loc_2038f6
	subi.w #$800,d3
	bra.s loc_2038f6
loc_2038e4:
	cmpi.w #$700,($f704).w
	bcs.s loc_2038f6
	cmpi.w #$100,d3
	bcc.s loc_2038f6
	addi.w #$800,d3
loc_2038f6:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203926
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203926
loc_20390a:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203926
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203926:
	rts
	.incbin 14632, 30

sub_203946:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_20394c:
	move.l d1,(a1)+
	dbf d0,loc_20394c
	rts
dat_203954:
	.incbin 14676, 16

sub_203964:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203970:
	tst.w (a4)
	beq.w loc_203a30
	moveq #$2,d6
loc_203978:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_203a28
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_2039de
	movea.l dat_203954(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_2039c2
	cmpi.w #$800,d2
	bcs.s loc_2039d4
	subi.w #$800,d2
	bra.s loc_2039d4
loc_2039c2:
	cmpi.w #$700,$4(a1)
	bcs.s loc_2039d4
	cmpi.w #$100,d2
	bcc.s loc_2039d4
	addi.w #$800,d2
loc_2039d4:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203a00
loc_2039de:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203a00
	.incbin 14824, 24
loc_203a00:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203a1e
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203a22
loc_203a1e:
	bsr.w sub_203a52
loc_203a22:
	bset.b #$7,$1(a0)
loc_203a28:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203978
loc_203a30:
	lea $80(a4),a4
	dbf d7,loc_203970
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203a4a
	move.l #$0,(a2)
	rts
loc_203a4a:
	move.b #$0,-$5(a2)
	rts

sub_203a52:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203a98
	btst.l #$1,d4
	bne.w loc_203ae6
loc_203a64:
	cmpi.b #$50,d5
	beq.s loc_203a96
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
	bne.s loc_203a90
	addq.w #$1,d0
loc_203a90:
	move.w d0,(a2)+
	dbf d1,loc_203a64
loc_203a96:
	rts
loc_203a98:
	btst.l #$1,d4
	bne.w loc_203b2c
loc_203aa0:
	cmpi.b #$50,d5
	beq.s loc_203ae4
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
	bne.s loc_203ade
	addq.w #$1,d0
loc_203ade:
	move.w d0,(a2)+
	dbf d1,loc_203aa0
loc_203ae4:
	rts
loc_203ae6:
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
	bne.s loc_203b24
	addq.w #$1,d0
loc_203b24:
	move.w d0,(a2)+
	dbf d1,loc_203ae6
loc_203b2a:
	rts
loc_203b2c:
	cmpi.b #$50,d5
	beq.s loc_203b7e
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
	bne.s loc_203b78
	addq.w #$1,d0
loc_203b78:
	move.w d0,(a2)+
	dbf d1,loc_203b2c
loc_203b7e:
	rts
	.incbin 15232, 92
dat_203bdc:
	.incbin 15324, 246

sub_203cd2:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203ce4
	move.w #$0,(a1)
	rts
loc_203ce4:
	tst.w (a1)
	bne.s loc_203cee
	move.b #$1,$1(a1)
loc_203cee:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203d38
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203d2a
	neg.w $10(a0)
loc_203d2a:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205a64
loc_203d38:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203d56
	cmpa.w #$d040,a0
	beq.s loc_203d56
	tst.b ($ff1906).l
	beq.s loc_203d56
	jmp (loc_2070c8).l
loc_203d56:
	move.b $2a(a0),d0
	beq.s loc_203d80
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203d72
	cmpi.b #$2d,d0
	bcs.s loc_203d7c
	move.b #$2d,d0
	bra.s loc_203d7c
loc_203d72:
	cmpi.b #$1e,d0
	bcs.s loc_203d7c
	move.b #$1e,d0
loc_203d7c:
	move.b d0,$2a(a0)
loc_203d80:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203d8e(pc,d0.w),d1
	jmp dat_203d8e(pc,d1.w)
dat_203d8e:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203d98:
	tst.b ($d300).w
	bne.s loc_203dd6
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203dd6:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203dfe
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203dfe:
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203e32:
	tst.b ($ff1506).l
	bne.s loc_203e98
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203e98
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203e9c
	cmpi.b #$2f,d1
	bne.s loc_203e9a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203e98
	tst.b $2c(a0)
	beq.s loc_203e98
	jsr (sub_2078c0).l
	bne.s loc_203e98
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203e90
	moveq #$0,d0
loc_203e90:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203e98:
	rts
loc_203e9a:
	rts

sub_203e9c:
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

sub_203ec2:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203ece
	neg.w d0
loc_203ece:
	btst.b #$1,$2c(a0)
	beq.s loc_203ede
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203f06
loc_203ede:
	cmpi.w #$600,d0
	bcs.s loc_203f06
	tst.w $14(a0)
	bpl.s loc_203ef8
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203f14
	move.w #$e0,d1
	bra.s loc_203f14
loc_203ef8:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203f14
	move.w #$60,d1
	bra.s loc_203f14
loc_203f06:
	cmpi.w #$a0,d1
	beq.s loc_203f14
	bcc.s loc_203f12
	addq.w #$2,d1
	bra.s loc_203f14
loc_203f12:
	subq.w #$2,d1
loc_203f14:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203ec2
	bsr.w sub_203e32
	tst.w ($ff1588).l
	beq.s loc_203f3a
	btst.b #$4,($f605).w
	beq.s loc_203f3a
	move.b #$1,($ff1906).l
	rts
loc_203f3a:
	tst.b ($f7cc).w
	bne.s loc_203f46
	move.w ($f604).w,($f602).w
loc_203f46:
	btst.b #$0,$2c(a0)
	beq.s loc_203f6a
	cmpi.b #$6,($ff1506).l
	bne.s loc_203f64
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203f82
loc_203f64:
	bsr.w sub_20424c
	bra.s loc_203f82
loc_203f6a:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203fc8(pc,d0.w),d1
	jsr dat_203fc8(pc,d1.w)
	jsr (sub_20651c).l
loc_203f82:
	bsr.s sub_203fd6
	bsr.w sub_204096
	bsr.w sub_2040b0
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203faa
	tst.b $1c(a0)
	bne.s loc_203faa
	move.b $1d(a0),$1c(a0)
loc_203faa:
	bsr.w sub_205454
	tst.b $2c(a0)
	bmi.s loc_203fc2
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203fc2
	jsr (sub_206c66).l
loc_203fc2:
	bsr.w sub_20530a
	rts
dat_203fc8:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203fd6:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203ffa
	move.w $30(a0),d0
	beq.s loc_203fec
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203ffa
loc_203fec:
	btst.b #$6,$2c(a0)
	bne.s loc_203ffa
	jsr (sub_20389a).l
loc_203ffa:
	tst.b ($ff151f).l
	beq.s loc_20403e
	tst.w $32(a0)
	beq.s loc_20403e
	subq.w #$1,$32(a0)
	bne.s loc_20403e
	tst.b ($ff1520).l
	bne.s loc_204036
	tst.b ($ff1958).l
	bne.s loc_204036
	tst.b ($ff152e).l
	bne.s loc_204030
	move.w #$e,d0
	jsr (sub_205a64).l
loc_204030:
	jsr (sub_201a3a).l
loc_204036:
	move.b #$0,($ff151f).l
loc_20403e:
	tst.b ($ff1520).l
	beq.s loc_204094
	tst.w $34(a0)
	beq.s loc_204094
	subq.w #$1,$34(a0)
	bne.s loc_204094
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_20408c
	tst.b ($ff1958).l
	bne.s loc_20408c
	tst.b ($ff152e).l
	bne.s loc_204086
	move.w #$e,d0
	jsr (sub_205a64).l
loc_204086:
	jsr (sub_201a3a).l
loc_20408c:
	move.b #$0,($ff1520).l
loc_204094:
	rts

sub_204096:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2040b0:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2040bc
loc_2040ba:
	rts
loc_2040bc:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2040ce
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2040ba
loc_2040ce:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204112
	bset.b #$6,$22(a0)
	bne.s loc_2040ba
	bsr.w sub_205d68
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2040ba
	bra.s loc_20414a
loc_204112:
	tst.w $12(a0)
	beq.s loc_20411a
	bpl.s loc_2040ba
loc_20411a:
	bclr.b #$6,$22(a0)
	beq.s loc_2040ba
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2040ba
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20414a
	move.w #$f000,$12(a0)
loc_20414a:
	jsr (sub_2078c0).l
	bne.s loc_20415e
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_20415e:
	rts

sub_204160:
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
	bcs.s loc_20423a
	move.l #$50000,d0
loc_20423a:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_20424c:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204272
	tst.b ($ff152e).l
	beq.s loc_204268
	cmpi.b #$2,($ff152e).l
	bne.s loc_204272
loc_204268:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204322
loc_204272:
	tst.b $2a(a0)
	bne.w loc_204330
	tst.b ($f784).w
	beq.w loc_204330
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204290
	neg.w d0
loc_204290:
	tst.w ($f786).w
	bne.s loc_20429c
	move.w #$1,($f786).w
loc_20429c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2042b2
	move.b #$1,($ff1502).l
	bra.w loc_205a60
loc_2042b2:
	cmpi.w #$d2,d1
	bcs.s loc_204306
	cmpi.b #$2,($ff1522).l
	beq.s loc_204304
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2042dc
	move.w #$82,d0
	jsr (sub_205a64).l
	moveq #$0,d0
loc_2042dc:
	add.b ($f784).w,d0
	bpl.s loc_2042e6
	moveq #$0,d0
	bra.s loc_2042ee
loc_2042e6:
	cmpi.b #$3,d0
	bcs.s loc_2042ee
	moveq #$2,d0
loc_2042ee:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204160
	move.b #$2,($ff1522).l
loc_204304:
	rts
loc_204306:
	cmpi.w #$5a,d1
	bcc.s loc_20431e
	cmp.w d2,d0
	bcc.w loc_203d98
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_20431e:
	cmp.w d2,d0
	bcc.s loc_204330
loc_204322:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204330:
	rts
	bsr.w sub_203cd2
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204362
	tst.b ($ff195b).l
	beq.s loc_204350
	cmpi.b #$79,$1a(a0)
	bne.s loc_20438c
	bra.s loc_204358
loc_204350:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20438c
loc_204358:
	bsr.w sub_204bf4
	jmp (sub_2037e2).l
loc_204362:
	bsr.w sub_20443a
	bsr.w sub_20424c
	bsr.w sub_204cde
	bsr.w sub_204e0a
	bsr.w sub_2044ae
	bsr.w sub_204c60
	bsr.w sub_204bf4
	jsr (sub_203844).l
	bsr.w sub_200b4a
	bsr.w sub_204e88
loc_20438c:
	rts
	tst.b ($f7c7).w
	bne.s loc_2043a8
	cmpi.b #$15,$1c(a0)
	beq.s loc_2043a8
	tst.w $12(a0)
	bmi.s loc_2043a8
	move.b #$0,$1c(a0)
loc_2043a8:
	bsr.w sub_20443a
	bsr.w sub_20424c
	bsr.w sub_204dc8
	bsr.w sub_204b14
	bsr.w sub_204bf4
	jsr (sub_2037e2).l
	btst.b #$6,$22(a0)
	beq.s loc_2043d0
	subi.w #$28,$12(a0)
loc_2043d0:
	bsr.w sub_204ed2
	bsr.w sub_204ef6
	rts
	bsr.w sub_20443a
	bsr.w sub_20424c
	bsr.w sub_204cde
	bsr.w sub_204e46
	bsr.w sub_20494e
	bsr.w sub_204bf4
	tst.b $2a(a0)
	bne.s loc_2043fe
	jsr (sub_203844).l
loc_2043fe:
	bsr.w sub_200b4a
	bsr.w sub_204e88
	rts
	bsr.w sub_20443a
	bsr.w sub_20424c
	bsr.w sub_204dc8
	bsr.w sub_204b14
	bsr.w sub_204bf4
	jsr (sub_2037e2).l
	btst.b #$6,$22(a0)
	beq.s loc_204430
	subi.w #$28,$12(a0)
loc_204430:
	bsr.w sub_204ed2
	bsr.w sub_204ef6
	rts

sub_20443a:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2044a6
	tst.w ($ff1506).l
	bne.s loc_2044a6
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2044a8).l,a2
loc_20446e:
	move.b (a2)+,d0
	bmi.s loc_20447e
	cmp.b d0,d1
	bne.s loc_20446e
	bset.b #$1,$2c(a0)
	rts
loc_20447e:
	bclr.b #$1,$2c(a0)
	beq.s loc_2044a6
	tst.w $12(a0)
	bpl.s loc_2044a6
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2044a6
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2044a6
	neg.w $10(a0)
loc_2044a6:
	rts
dat_2044a8:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2044ae:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_2047d8
	tst.w $3e(a0)
	bne.w loc_204788
	btst.b #$2,($f602).w
	beq.s loc_2044d6
	bsr.w sub_204868
loc_2044d6:
	btst.b #$3,($f602).w
	beq.s loc_2044e2
	bsr.w sub_2048de
loc_2044e2:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204788
	tst.w $14(a0)
	beq.s loc_204502
	tst.b $2a(a0)
	beq.w loc_204788
	bra.s loc_20450e
loc_204502:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_20450e:
	btst.b #$3,$22(a0)
	beq.s loc_204560
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2045b8
	cmpi.b #$1e,$0(a1)
	bne.s loc_204540
	move.b #$0,$1c(a0)
	bra.w loc_204788
loc_204540:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20459c
	cmp.w d2,d1
	bge.s loc_20458a
	bra.s loc_2045b8
loc_204560:
	jsr (sub_2069ca).l
	cmpi.w #$c,d1
	blt.s loc_2045b8
	move.w #$ab,d0
	jsr (sub_202246).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204594
loc_20458a:
	btst.b #$0,$22(a0)
	bne.s loc_2045a4
	bra.s loc_2045ae
loc_204594:
	cmpi.b #$3,$37(a0)
	bne.s loc_2045b8
loc_20459c:
	btst.b #$0,$22(a0)
	bne.s loc_2045ae
loc_2045a4:
	move.b #$32,$1c(a0)
	bra.w loc_204788
loc_2045ae:
	move.b #$6,$1c(a0)
	bra.w loc_204788
loc_2045b8:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2045cc
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2045cc:
	btst.b #$7,($f788).w
	bne.w loc_2046d0
	btst.b #$6,($f788).w
	bne.w loc_2046f0
	btst.b #$1,($f602).w
	bne.w loc_2046f0
	andi.b #$f,($f788).w
	beq.s loc_204604
	btst.b #$0,($f603).w
	beq.s loc_204618
	bset.b #$7,($f788).w
	bra.w loc_2047ac
loc_204604:
	btst.b #$0,($f603).w
	beq.w loc_204618
	move.b #$1,($f788).w
	bra.w loc_2047ac
loc_204618:
	btst.b #$0,($f602).w
	beq.s loc_204694
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204676
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204648
	asr.w #$1,d2
	sub.w d2,d1
loc_204648:
	btst.b #$0,$22(a0)
	beq.s loc_204654
	neg.w d0
	neg.w d1
loc_204654:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20466a
	cmp.w d0,d1
	ble.s loc_204670
	bra.s loc_20466e
loc_20466a:
	cmp.w d1,d0
	ble.s loc_204670
loc_20466e:
	move.w d1,d0
loc_204670:
	move.w d0,$14(a0)
	rts
loc_204676:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204690
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_202246).l
loc_204690:
	bra.w loc_2047ac
loc_204694:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2046b4
	move.w #$ab,d0
	jsr (sub_202246).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2046f0
loc_2046b4:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202246).l
	bra.w loc_204788
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2046d0:
	btst.b #$0,($f602).w
	beq.s loc_2046f0
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_2047ac
	addq.w #$2,($f73e).w
	bra.w loc_2047ac
loc_2046f0:
	btst.b #$6,($f788).w
	bne.w loc_20476c
	andi.b #$f,($f788).w
	beq.s loc_204714
	btst.b #$1,($f603).w
	beq.s loc_204726
	bset.b #$6,($f788).w
	bra.w loc_2047ac
loc_204714:
	btst.b #$1,($f603).w
	beq.s loc_204726
	move.b #$1,($f788).w
	bra.w loc_2047ac
loc_204726:
	btst.b #$1,($f602).w
	beq.s loc_204788
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20476a
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20476a
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20475c
	neg.w $14(a0)
loc_20475c:
	move.w #$9c,d0
	jsr (sub_202246).l
	bsr.w sub_204c88
loc_20476a:
	bra.s loc_2047ac
loc_20476c:
	btst.b #$1,($f602).w
	beq.s loc_204788
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_2047ac
	subq.w #$2,($f73e).w
	bra.s loc_2047ac
loc_204788:
	cmpi.w #$60,($f73e).w
	bne.s loc_2047a2
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_2047ac
	move.b #$0,($f788).w
	bra.s loc_2047ac
loc_2047a2:
	bcc.s loc_2047a8
	addq.w #$4,($f73e).w
loc_2047a8:
	subq.w #$2,($f73e).w
loc_2047ac:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_2047d8
	move.w $14(a0),d0
	beq.s loc_2047d8
	bmi.s loc_2047cc
	sub.w d5,d0
	bcc.s loc_2047c6
	move.w #$0,d0
loc_2047c6:
	move.w d0,$14(a0)
	bra.s loc_2047d8
loc_2047cc:
	add.w d5,d0
	bcc.s loc_2047d4
	move.w #$0,d0
loc_2047d4:
	move.w d0,$14(a0)
loc_2047d8:
	move.b $26(a0),d0
	jsr (sub_20074a).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_2047f6:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204866
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204866
	bmi.s loc_20480e
	neg.w d1
loc_20480e:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_20688a
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204866
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204862
	cmpi.b #$40,d0
	beq.s loc_204850
	cmpi.b #$80,d0
	beq.s loc_20484a
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20484a:
	sub.w d1,$12(a0)
	rts
loc_204850:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204862:
	add.w d1,$12(a0)
loc_204866:
	rts

sub_204868:
	tst.b $2a(a0)
	bne.s loc_2048dc
	move.w $14(a0),d0
	beq.s loc_204876
	bpl.s loc_2048a6
loc_204876:
	bset.b #$0,$22(a0)
	bne.s loc_20488a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20488a:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20489a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20489a
	move.w d1,d0
loc_20489a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2048a6:
	sub.w d4,d0
	bcc.s loc_2048ae
	move.w #$ff80,d0
loc_2048ae:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2048dc
	cmpi.w #$400,d0
	blt.s loc_2048dc
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202246).l
loc_2048dc:
	rts

sub_2048de:
	tst.b $2a(a0)
	bne.s loc_20494c
	move.w $14(a0),d0
	bmi.s loc_204916
	bclr.b #$0,$22(a0)
	beq.s loc_2048fe
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2048fe:
	cmp.w d6,d0
	bge.s loc_20490a
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_20490a
	move.w d6,d0
loc_20490a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204916:
	add.w d4,d0
	bcc.s loc_20491e
	move.w #$80,d0
loc_20491e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20494c
	cmpi.w #$fc00,d0
	bgt.s loc_20494c
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_202246).l
loc_20494c:
	rts

sub_20494e:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204a98
	tst.w $3e(a0)
	bne.s loc_204986
	btst.b #$2,($f602).w
	beq.s loc_20497a
	bsr.w sub_204ace
loc_20497a:
	btst.b #$3,($f602).w
	beq.s loc_204986
	bsr.w sub_204af2
loc_204986:
	tst.b $2a(a0)
	beq.w loc_204a30
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2049a6
	asr.w #$1,d2
	sub.w d2,d1
loc_2049a6:
	btst.b #$0,$22(a0)
	beq.s loc_2049b2
	neg.w d0
	neg.w d1
loc_2049b2:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_2049c8
	cmp.w d0,d1
	ble.s loc_2049ce
	bra.s loc_2049cc
loc_2049c8:
	cmp.w d1,d0
	ble.s loc_2049ce
loc_2049cc:
	move.w d1,d0
loc_2049ce:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204a02
	rts
loc_2049dc:
	move.w #$ab,d0
	jsr (sub_202246).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204a62
loc_204a02:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_2049dc
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_202246).l
	btst.b #$0,$22(a0)
	bne.s loc_204a28
	bsr.w sub_204af2
	bra.s loc_204a30
loc_204a28:
	bsr.w sub_204ace
	bra.s loc_204a30
	dc.b $4e,$75
loc_204a30:
	move.w $14(a0),d0
	beq.s loc_204a52
	bmi.s loc_204a46
	sub.w d5,d0
	bcc.s loc_204a40
	move.w #$0,d0
loc_204a40:
	move.w d0,$14(a0)
	bra.s loc_204a52
loc_204a46:
	add.w d5,d0
	bcc.s loc_204a4e
	move.w #$0,d0
loc_204a4e:
	move.w d0,$14(a0)
loc_204a52:
	tst.w $14(a0)
	bne.s loc_204a98
	move.w #$ab,d0
	jsr (sub_202246).l
loc_204a62:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204a82
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204a92
loc_204a82:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204a92:
	move.b #$5,$1c(a0)
loc_204a98:
	move.b $26(a0),d0
	jsr (sub_20074a).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204abc
	move.w #$1000,d1
loc_204abc:
	cmpi.w #$f000,d1
	bge.s loc_204ac6
	move.w #$f000,d1
loc_204ac6:
	move.w d1,$10(a0)
	bra.w loc_2047f6

sub_204ace:
	move.w $14(a0),d0
	beq.s loc_204ad6
	bpl.s loc_204ae4
loc_204ad6:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204ae4:
	sub.w d4,d0
	bcc.s loc_204aec
	move.w #$ff80,d0
loc_204aec:
	move.w d0,$14(a0)
	rts

sub_204af2:
	move.w $14(a0),d0
	bmi.s loc_204b06
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204b06:
	add.w d4,d0
	bcc.s loc_204b0e
	move.w #$80,d0
loc_204b0e:
	move.w d0,$14(a0)
	rts

sub_204b14:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204b4e
	tst.w ($ff1506).l
	bne.s loc_204b4e
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204b46
	cmpi.w #$840,$8(a0)
	bcc.s loc_204b46
	rts
loc_204b46:
	btst.b #$1,$2c(a0)
	bne.s loc_204b7e
loc_204b4e:
	btst.b #$2,($f602).w
	beq.s loc_204b68
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204b68
	move.w d1,d0
loc_204b68:
	btst.b #$3,($f602).w
	beq.s loc_204b7e
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204b7e
	move.w d6,d0
loc_204b7e:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204b94
	bcc.s loc_204b90
	addq.w #$4,($f73e).w
loc_204b90:
	subq.w #$2,($f73e).w
loc_204b94:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204bc2
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204bc2
	bmi.s loc_204bb6
	sub.w d1,d0
	bcc.s loc_204bb0
	move.w #$0,d0
loc_204bb0:
	move.w d0,$10(a0)
	rts
loc_204bb6:
	sub.w d1,d0
	bcs.s loc_204bbe
	move.w #$0,d0
loc_204bbe:
	move.w d0,$10(a0)
loc_204bc2:
	rts
	.incbin 19396, 48

sub_204bf4:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204c48
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204c22
	addi.w #$38,d0
loc_204c22:
	cmp.w d1,d0
	bls.s loc_204c48
loc_204c26:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204c36
	rts
loc_204c36:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206ef8
	move.b #$6,$24(a0)
	rts
loc_204c48:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204c26

sub_204c60:
	tst.b ($f7ca).w
	bne.s loc_204c86
	move.w $14(a0),d0
	bpl.s loc_204c6e
	neg.w d0
loc_204c6e:
	cmpi.w #$80,d0
	bcs.s loc_204c86
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204c86
	btst.b #$1,($f602).w
	bne.s sub_204c88
loc_204c86:
	rts

sub_204c88:
	btst.b #$2,$22(a0)
	beq.s loc_204c92
	bra.s loc_204cc2
loc_204c92:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204cb2
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204cc2
loc_204cb2:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204cc2:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204cdc
	cmpi.w #$200,$14(a0)
	bcc.s loc_204cdc
	move.w #$200,$14(a0)
loc_204cdc:
	rts

sub_204cde:
	tst.b $2a(a0)
	beq.s loc_204ce6
	rts
loc_204ce6:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204cf8
	tst.w $14(a0)
	beq.w loc_204dbe
loc_204cf8:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204dbe
	btst.b #$3,$22(a0)
	beq.s loc_204d14
	jsr (sub_2059ea).l
	beq.s loc_204d44
loc_204d14:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2068f4
	cmpi.w #$6,d1
	blt.w loc_204dbe
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204d3a
	move.w #$380,d2
loc_204d3a:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204d44:
	jsr (sub_20074a).l
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
	jsr (sub_202246).l
	btst.b #$2,$22(a0)
	bne.s loc_204dc0
	tst.b ($ff195b).l
	beq.s loc_204da2
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204db2
loc_204da2:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204db2:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204dbe:
	rts
loc_204dc0:
	bset.b #$4,$22(a0)
	rts

sub_204dc8:
	tst.b $3c(a0)
	beq.s loc_204dfa
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204dde
	move.w #$fe00,d1
loc_204dde:
	cmp.w $12(a0),d1
	ble.s loc_204df8
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204df8
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204df8:
	rts
loc_204dfa:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204e08
	move.w #$f040,$12(a0)
loc_204e08:
	rts

sub_204e0a:
	tst.b $2a(a0)
	bne.s loc_204e44
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e44
	move.b $26(a0),d0
	jsr (sub_20074a).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204e44
	bmi.s loc_204e40
	tst.w d0
	beq.s loc_204e3e
	add.w d0,$14(a0)
loc_204e3e:
	rts
loc_204e40:
	add.w d0,$14(a0)
loc_204e44:
	rts

sub_204e46:
	tst.b $2a(a0)
	bne.s loc_204e86
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204e86
	move.b $26(a0),d0
	jsr (sub_20074a).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204e7c
	tst.w d0
	bpl.s loc_204e76
	asr.l #$2,d0
loc_204e76:
	add.w d0,$14(a0)
	rts
loc_204e7c:
	tst.w d0
	bmi.s loc_204e82
	asr.l #$2,d0
loc_204e82:
	add.w d0,$14(a0)
loc_204e86:
	rts

sub_204e88:
	nop
	tst.b $38(a0)
	bne.s loc_204eca
	tst.w $3e(a0)
	bne.s loc_204ecc
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204eca
	move.w $14(a0),d0
	bpl.s loc_204eac
	neg.w d0
loc_204eac:
	cmpi.w #$280,d0
	bcc.s loc_204eca
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204eca:
	rts
loc_204ecc:
	subq.w #$1,$3e(a0)
	rts

sub_204ed2:
	btst.b #$1,$2c(a0)
	bne.s loc_204ef4
	move.b $26(a0),d0
	beq.s loc_204ef4
	bpl.s loc_204eea
	addq.b #$2,d0
	bcc.s loc_204ee8
	moveq #$0,d0
loc_204ee8:
	bra.s loc_204ef0
loc_204eea:
	subq.b #$2,d0
	bcc.s loc_204ef0
	moveq #$0,d0
loc_204ef0:
	move.b d0,$26(a0)
loc_204ef4:
	rts

sub_204ef6:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_2009e2).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204fda
	cmpi.b #$80,d0
	beq.w loc_20503c
	cmpi.b #$c0,d0
	beq.w loc_205098
	bsr.w sub_206c0a
	tst.w d1
	bpl.s loc_204f48
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f48:
	bsr.w sub_206a6c
	tst.w d1
	bpl.s loc_204f5a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f5a:
	bsr.w sub_20691c
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204fd8
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204f78
	cmp.b d2,d0
	blt.s loc_204fd8
loc_204f78:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050fa
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204fb6
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204fa8
	asr.w $12(a0)
	bra.s loc_204fca
loc_204fa8:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204fb6:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204fca
	move.w #$fc0,$12(a0)
loc_204fca:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204fd8
	neg.w $14(a0)
loc_204fd8:
	rts
loc_204fda:
	bsr.w sub_206c0a
	tst.w d1
	bpl.s loc_204ff4
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204ff4:
	bsr.w sub_206ac4
	tst.w d1
	bpl.s loc_20500e
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_20500c
	move.w #$0,$12(a0)
loc_20500c:
	rts
loc_20500e:
	tst.w $12(a0)
	bmi.s loc_20503a
	bsr.w sub_20691c
	tst.w d1
	bpl.s loc_20503a
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050fa
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20503a:
	rts
loc_20503c:
	bsr.w sub_206c0a
	tst.w d1
	bpl.s loc_20504e
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20504e:
	bsr.w sub_206a6c
	tst.w d1
	bpl.s loc_205060
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205060:
	bsr.w sub_206ac4
	tst.w d1
	bpl.s loc_205096
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205080
	move.w #$0,$12(a0)
	rts
loc_205080:
	move.b d3,$26(a0)
	bsr.w sub_20516c
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_205096
	neg.w $14(a0)
loc_205096:
	rts
loc_205098:
	bsr.w sub_206a6c
	tst.w d1
	bpl.s loc_2050b2
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2050b2:
	bsr.w sub_206ac4
	tst.w d1
	bpl.s loc_2050cc
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2050ca
	move.w #$0,$12(a0)
loc_2050ca:
	rts
loc_2050cc:
	tst.w $12(a0)
	bmi.s loc_2050f8
	bsr.w sub_20691c
	tst.w d1
	bpl.s loc_2050f8
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2050fa
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2050f8:
	rts

sub_2050fa:
	btst.b #$4,$22(a0)
	beq.s loc_205104
	nop
loc_205104:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_20515e
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20513e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20514e
loc_20513e:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20514e:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_202246).l
loc_20515e:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20516c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 20876, 382

sub_20530a:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205332
	cmpi.b #$5,($ff1506).l
	beq.s loc_205332
	cmpi.b #$2,($ff1506).l
	beq.s loc_205332
	tst.b ($ff1506).l
	bne.w loc_2053f4
loc_205332:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205370
	tst.b ($ff1506).l
	bne.w loc_2053f6
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2053f6
	bra.s loc_205378
loc_205370:
	cmp.b ($f7af).w,d1
	beq.w loc_2053f6
loc_205378:
	cmp.b ($f7ac).w,d1
	beq.s loc_2053a8
	cmp.b ($f7ad).w,d1
	beq.s loc_20538c
	bclr.b #$6,$1(a0)
	rts
loc_20538c:
	cmpi.b #$5,($ff1506).l
	beq.w loc_20540e
	btst.b #$1,$22(a0)
	beq.s loc_2053a8
	bclr.b #$6,$1(a0)
	rts
loc_2053a8:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2053ba
	bclr.b #$6,$1(a0)
	rts
loc_2053ba:
	cmpi.b #$e0,d2
	bcs.s loc_2053c8
	bset.b #$6,$1(a0)
	rts
loc_2053c8:
	btst.b #$6,$1(a0)
	bne.s loc_2053e4
	move.b $26(a0),d1
	beq.s loc_2053f4
	cmpi.b #$80,d1
	bhi.s loc_2053f4
	bset.b #$6,$1(a0)
	rts
loc_2053e4:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2053f4
	bclr.b #$6,$1(a0)
loc_2053f4:
	rts
loc_2053f6:
	btst.b #$2,$22(a0)
	bne.s loc_205408
	move.w #$9c,d0
	jsr (sub_202246).l
loc_205408:
	jmp (sub_204c88).l
loc_20540e:
	tst.w $12(a0)
	bmi.s loc_205452
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_205446
	cmpi.w #$38,d1
	bcs.s loc_20543e
	cmpi.w #$80,d1
	bcs.s loc_205452
loc_205436:
	bclr.b #$6,$1(a0)
	rts
loc_20543e:
	bset.b #$6,$1(a0)
	rts
loc_205446:
	cmpi.w #$38,d1
	bcs.s loc_205436
	cmpi.w #$80,d1
	bcc.s loc_20543e
loc_205452:
	rts

sub_205454:
	lea (dat_205744).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205476
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205476:
	bsr.w sub_2056e6
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2054ee
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2054bc
	move.b d0,$1e(a0)

sub_2054a0:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2054b4
	bpl.s loc_2054b4
	cmpi.b #$fd,d0
	bge.s loc_2054be
loc_2054b4:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2054bc:
	rts
loc_2054be:
	addq.b #$1,d0
	bne.s loc_2054ce
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2054b4
loc_2054ce:
	addq.b #$1,d0
	bne.s loc_2054e2
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2054b4
loc_2054e2:
	addq.b #$1,d0
	bne.s loc_2054ec
	move.b $2(a1,d1.w),$1c(a0)
loc_2054ec:
	rts
loc_2054ee:
	subq.b #$1,$1e(a0)
	bpl.s loc_2054bc
	addq.b #$1,d0
	bne.w loc_2055a8
	tst.b ($ff195b).l
	bne.w loc_205670
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205516
	not.b d0
loc_205516:
	btst.b #$1,$2c(a0)
	bne.s loc_205524
	addi.b #$10,d0
	bra.s loc_205526
loc_205524:
	addq.b #$8,d0
loc_205526:
	bpl.s loc_20552a
	moveq #$3,d1
loc_20552a:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_20561c
	move.w $14(a0),d2
	bpl.s loc_205548
	neg.w d2
loc_205548:
	btst.b #$1,$2c(a0)
	beq.s loc_205560
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205946).l,a1
	bra.s loc_20558a
loc_205560:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205920).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20558a
	lea (dat_2057c4).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20558a
	lea (dat_2057bc).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20558a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205598
	moveq #$0,d2
loc_205598:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2054a0
	add.b d3,$1a(a0)
	rts
loc_2055a8:
	addq.b #$1,d0
	bne.s loc_205618
	move.w $14(a0),d2
	bpl.s loc_2055b4
	neg.w d2
loc_2055b4:
	lea (dat_2058a2).l,a1
	tst.b ($ff195b).l
	bne.s loc_2055f2
	lea (dat_2057d4).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2055e6
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2055f2
	lea (dat_20594e).l,a1
	bra.s loc_2055f2
loc_2055e6:
	cmpi.w #$600,d2
	bcc.s loc_2055f2
	lea (dat_2057cc).l,a1
loc_2055f2:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2055fc
	moveq #$0,d2
loc_2055fc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054a0
loc_205618:
	addq.b #$1,d0
	bne.s loc_20565c
loc_20561c:
	move.w $14(a0),d2
	bmi.s loc_205624
	neg.w d2
loc_205624:
	addi.w #$800,d2
	bpl.s loc_20562c
	moveq #$0,d2
loc_20562c:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_2058b4).l,a1
	tst.b ($ff195b).l
	bne.s loc_205646
	lea (dat_2057dc).l,a1
loc_205646:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2054a0
loc_20565c:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205670:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205682
	not.b d0
loc_205682:
	addi.b #$10,d0
	bpl.s loc_20568a
	moveq #$0,d1
loc_20568a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2056b8
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2055a8
loc_2056b8:
	move.w $14(a0),d2
	bpl.s loc_2056c0
	neg.w d2
loc_2056c0:
	lea (dat_20589c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2056d2
	lea (dat_205896).l,a1
loc_2056d2:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2056dc
	moveq #$0,d2
loc_2056dc:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2054a0

sub_2056e6:
	tst.b ($ff195b).l
	beq.s loc_2056f2
	move.b dat_2056f4(pc,d0.w),d0
loc_2056f2:
	rts
dat_2056f4:
	.incbin 22260, 80
dat_205744:
	.incbin 22340, 120
dat_2057bc:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_2057c4:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_2057cc:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_2057d4:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_2057dc:
	.incbin 22492, 186
dat_205896:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20589c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_2058a2:
	.incbin 22690, 18
dat_2058b4:
	.incbin 22708, 108
dat_205920:
	.incbin 22816, 38
dat_205946:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_20594e:
	.incbin 22862, 56

sub_205986:
	tst.b (a0)
	beq.w loc_2059e8
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_2059e8
	move.b d0,(a2)
	lea (dat_22e8ac).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_2059e8
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_2059ba:
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
loc_2059d4:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_2059d4
	dbf d1,loc_2059ba
loc_2059e8:
	rts

sub_2059ea:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205a5e
	move.w #$98,d0
	jsr (sub_202246).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_2009e2).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205a4c
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205a4c:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205a5e:
	rts
loc_205a60:
	move.w #$e,d0

sub_205a64:
	cmpi.w #$67,d0
	bne.s loc_205a72
	move.b #$1,($ff1958).l
loc_205a72:
	move.w d0,($a12010).l
loc_205a78:
	move.w ($a12020).l,d0
	beq.s loc_205a78
	cmp.w ($a12020).l,d0
	bne.s loc_205a78
	move.w #$0,($a12010).l
loc_205a90:
	move.w ($a12020).l,d0
	bne.s loc_205a90
	move.w ($a12020).l,d0
	bne.s loc_205a90
	rts
	dc.b $00,$00

sub_205aa4:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205ac0
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205ac0:
	subq.b #$1,$1e(a0)
	bpl.s loc_205b00
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205b02
loc_205adc:
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
loc_205b00:
	rts
loc_205b02:
	addq.b #$1,d0
	bne.s loc_205b12
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205adc
loc_205b12:
	addq.b #$1,d0
	bne.s loc_205b26
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205adc
loc_205b26:
	addq.b #$1,d0
	bne.s loc_205b30
	move.b $2(a1,d1.w),$1c(a0)
loc_205b30:
	addq.b #$1,d0
	bne.s loc_205b38
	addq.b #$2,$24(a0)
loc_205b38:
	addq.b #$1,d0
	bne.s loc_205b46
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205b46:
	addq.b #$1,d0
	bne.s loc_205b4e
	addq.b #$2,$25(a0)
loc_205b4e:
	rts

sub_205b50:
	move.b ($ff1522).l,($ff1523).l
	move.w ($d008).w,($ff1524).l
	move.w ($d00c).w,($ff1526).l
	move.b ($f64d).w,($ff1543).l
	move.w ($f72e).w,($ff1530).l
	move.w ($f700).w,($ff1532).l
	move.w ($f704).w,($ff1534).l
	move.w ($f708).w,($ff1536).l
	move.w ($f70c).w,($ff1538).l
	move.w ($f710).w,($ff153a).l
	move.w ($f714).w,($ff153c).l
	move.w ($f718).w,($ff153e).l
	move.w ($f71c).w,($ff1540).l
	move.w ($f648).w,($ff1542).l
	move.b ($f64d).w,($ff1543).l
	move.b ($f64e).w,($ff1544).l
	move.l ($ff1514).l,d0
	cmpi.l #$50000,d0
	bcs.s loc_205be6
	move.l #$50000,d0
loc_205be6:
	move.l d0,($ff152a).l
	move.b ($ff195b).l,($ff1591).l
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205c12(pc,d0.w),d0
	jsr dat_205c12(pc,d0.w)
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_205c12:
	dc.b $00,$08,$00,$c4,$00,$fa,$01,$4c
	addq.b #$2,$24(a0)
	move.l #$23b81e,$4(a0)
	move.w #$6cb,$2(a0)
	move.b #$4,$1(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$4,$18(a0)
	move.b ($ff158e).l,d0
	cmp.b $28(a0),d0
	bcs.s loc_205c58
	move.b #$1,$2e(a0)
	bra.s loc_205c5e
loc_205c58:
	move.b #$e3,$20(a0)
loc_205c5e:
	jsr (sub_2078c0).l
	bne.s loc_205cd0
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_205c7a
	addq.b #$2,$24(a1)
loc_205c7a:
	move.l #$23b81e,$4(a1)
	move.w #$6cb,$2(a1)
	move.b #$4,$1(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$3,$18(a1)
	move.b #$1,$1a(a1)
	move.l a0,$30(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$20,$c(a1)
	move.w $8(a0),$2a(a1)
	move.w $c(a0),$2c(a1)
	subi.w #$18,$2c(a1)
	rts
loc_205cd0:
	jmp (sub_203946).l
	tst.b $2e(a0)
	bne.s loc_205d0a
	tst.b $21(a0)
	beq.s loc_205d0a
	clr.b $20(a0)
	move.b #$1,$2e(a0)
	move.b $28(a0),($ff158e).l
	move.b #$1,($ff1522).l
	bsr.w sub_205b50
	move.w #$ae,d0
	jmp (sub_202246).l
loc_205d0a:
	rts
	tst.b $2e(a0)
	bne.s loc_205d22
	movea.l $30(a0),a1
	tst.b $2e(a1)
	beq.s loc_205d5c
	move.b #$1,$2e(a0)
loc_205d22:
	addq.b #$8,$34(a0)
	moveq #$0,d0
	move.b $34(a0),d0
	jsr (sub_20074a).l
	muls.w #$8,d0
	lsr.l #$8,d0
	move.w $2a(a0),$8(a0)
	add.w d0,$8(a0)
	muls.w #$fff8,d1
	lsr.l #$8,d1
	move.w $2c(a0),$c(a0)
	add.w d1,$c(a0)
	tst.b $34(a0)
	bne.s loc_205d5c
	addq.b #$2,$24(a0)
loc_205d5c:
	rts
	dc.b $43,$f9,$00,$23,$b8,$18,$60,$00
	dc.b $fd,$3e

sub_205d68:
	rts
	.incbin 23914, 704
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206044(pc,d0.w),d0
	jsr dat_206044(pc,d0.w)
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_206044:
	.incbin 24644, 494
	beq.s loc_20623a
	andi.b #$7f,$2(a0)
loc_20623a:
	lea (dat_23b372).l,a1
	jsr (sub_205aa4).l
	bra.w loc_2062ea
	.incbin 25162, 160
loc_2062ea:
	move.b ($ff156b).l,d0
	andi.b #$f,d0
	cmpi.b #$8,d0
	bcs.s loc_2062fc
	rts
loc_2062fc:
	cmp.b $24(a0),d0
	beq.s loc_206312
	move.b $24(a0),($ff156b).l
	bset.b #$7,($ff156b).l
loc_206312:
	jmp (sub_20389a).l
loc_206318:
	bclr.b #$7,($ff156b).l
	beq.s loc_206366
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206368(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_20633c:
	move.l (a1)+,(a2)+
	dbf d0,loc_20633c
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206366:
	rts
dat_206368:
	.incbin 25448, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20639e(pc,d0.w),d0
	jsr dat_20639e(pc,d0.w)
	tst.b ($ff1588).l
	beq.s loc_206398
	jsr (sub_20389a).l
loc_206398:
	jmp (sub_2078f6).l
dat_20639e:
	dc.b $00,$04,$00,$26
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$544,$2(a0)
	move.l #$23b49a,$4(a0)
	move.b $28(a0),$1a(a0)
	addq.b #$1,$1a(a0)
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_206480
	cmpi.b #$6,$24(a1)
	bcc.w loc_206480
	bsr.w sub_2064e4
	beq.w loc_206480
	tst.b $28(a0)
	bne.s loc_206432
	move.w $10(a1),d0
	bpl.s loc_2063f2
	neg.w d0
loc_2063f2:
	move.w #$a00,d1
	cmpi.b #$5,($ff1506).l
	bne.s loc_206404
	move.w #$d00,d1
loc_206404:
	cmp.w d1,d0
	bcc.s loc_20640a
	move.w d1,d0
loc_20640a:
	tst.w $10(a1)
	bpl.s loc_206412
	neg.w d0
loc_206412:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	move.b $26(a1),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$80,d0
	bne.s loc_206462
	neg.w $14(a1)
	bra.s loc_206462
loc_206432:
	cmpi.b #$2,$28(a0)
	bcc.s loc_206482
	move.w $12(a1),d0
	bpl.s loc_206442
	neg.w d0
loc_206442:
	cmpi.w #$d00,d0
	bcc.s loc_20644c
	move.w #$d00,d0
loc_20644c:
	tst.w $12(a1)
	bpl.s loc_206454
	neg.w d0
loc_206454:
	move.w d0,$12(a1)
	move.w d0,$14(a1)
	bset.b #$1,$22(a1)
loc_206462:
	bset.b #$2,$22(a1)
	bne.s loc_206480
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206480:
	rts
loc_206482:
	move.b ($f604).w,d1
	cmpi.b #$4,$28(a0)
	beq.s loc_2064ce
	cmpi.b #$2,$28(a0)
	bne.s loc_20649e
	tst.w $12(a1)
	bpl.s loc_206462
	bra.s loc_2064a4
loc_20649e:
	tst.w $12(a1)
	bmi.s loc_206462
loc_2064a4:
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_2064b6
	btst.l #$2,d1
	beq.s loc_206462
	neg.w d0
loc_2064b6:
	cmpi.b #$2,$28(a0)
	beq.s loc_2064c4
	bset.b #$1,$22(a1)
loc_2064c4:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_206462
loc_2064ce:
	tst.w $10(a1)
	bmi.s loc_206462
	btst.l #$0,d1
	beq.w loc_206462
	move.w #$f600,d0
	bra.w loc_206454

sub_2064e4:
	tst.b ($ff1906).l
	bne.s loc_206518
	move.w $8(a1),d0
	sub.w $8(a0),d0
	addi.w #$28,d0
	bmi.s loc_206518
	cmpi.w #$50,d0
	bcc.s loc_206518
	move.w $c(a1),d0
	sub.w $c(a0),d0
	addi.w #$28,d0
	bmi.s loc_206518
	cmpi.w #$50,d0
	bcc.s loc_206518
	moveq #$1,d0
	rts
loc_206518:
	moveq #$0,d0
	rts

sub_20651c:
	move.b ($ff1505).l,d0
	andi.b #$3,d0
	bne.s loc_206578
	move.w $10(a0),d0
	bpl.s loc_206530
	neg.w d0
loc_206530:
	cmpi.w #$a00,d0
	bcs.s loc_206578
	move.w $c(a0),d2
	move.w $8(a0),d3
	addq.w #$8,d2
	jsr (sub_200eb8).l
	move.w (a1),d0
	andi.w #$7ff,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	cmpi.b #$2,d1
	bne.s loc_206564
	add.b ($ff156a).l,d1
loc_206564:
	add.w d1,d1
	move.w dat_20657a(pc,d1.w),d1
	lea dat_20657a(pc,d1.w),a1
loc_20656e:
	move.w (a1)+,d1
	bmi.s loc_206578
	cmp.w d1,d0
	bne.s loc_20656e
	bra.s loc_2065ba
loc_206578:
	rts
dat_20657a:
	.incbin 25978, 64
loc_2065ba:
	jsr (sub_2078c0).l
	bne.s loc_2065ea
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $16(a0),d0
	ext.w d0
	add.w d0,$c(a1)
	tst.w $10(a0)
	bpl.s loc_2065ea
	bset.b #$0,$22(a1)
loc_2065ea:
	rts
	.incbin 26092, 216
loc_2066c4:
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
	bne.s loc_20677e
	move.b ($ff1593).l,($ff195b).l
loc_20677e:
	tst.b ($ff1522).l
	bpl.s loc_206794
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206794:
	rts

sub_206796:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2066c4
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
	bne.s loc_206850
	move.b ($ff1591).l,($ff195b).l
loc_206850:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206872
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206872:
	tst.b ($ff1522).l
	bpl.s loc_206888
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206888:
	rts

sub_20688a:
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
	bpl.s loc_2068c6
	move.b d1,d0
	bpl.s loc_2068c0
	subq.b #$1,d0
loc_2068c0:
	addi.b #$20,d0
	bra.s loc_2068d0
loc_2068c6:
	move.b d1,d0
	bpl.s loc_2068cc
	addq.b #$1,d0
loc_2068cc:
	addi.b #$1f,d0
loc_2068d0:
	andi.b #$c0,d0
	beq.w loc_2069a0
	cmpi.b #$80,d0
	beq.w loc_206b3c
	andi.b #$38,d1
	bne.s loc_2068e8
	addq.w #$8,d2
loc_2068e8:
	cmpi.b #$40,d0
	beq.w loc_206c12
	bra.w loc_206a74

sub_2068f4:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_206b9a
	cmpi.b #$80,d0
	beq.w sub_206ac4
	cmpi.b #$c0,d0
	beq.w loc_206a04

sub_20691c:
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
	jsr (sub_2010a0).l
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
	jsr (sub_2010a0).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206980:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_20698e
	move.b ($f768).w,d3
	exg d0,d1
loc_20698e:
	btst.l #$0,d3
	beq.s loc_206996
	move.b d2,d3
loc_206996:
	rts
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2069a0:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010a0).l
	move.b #$0,d2
loc_2069bc:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2069c8
	move.b d2,d3
loc_2069c8:
	rts

sub_2069ca:
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
	jsr (sub_2010a0).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a02
	move.b #$0,d3
loc_206a02:
	rts
loc_206a04:
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
	jsr (sub_201210).l
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
	jsr (sub_201210).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206980

sub_206a6c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a74:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201210).l
	move.b #$c0,d2
	bra.w loc_2069bc
dat_206a94:
	.incbin 27284, 48

sub_206ac4:
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
	jsr (sub_2010a0).l
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
	jsr (sub_2010a0).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206980

sub_206b34:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206b3c:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010a0).l
	move.b #$80,d2
	bra.w loc_2069bc
	.incbin 27488, 18
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010a0).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206b98
	move.b #$80,d3
loc_206b98:
	rts
loc_206b9a:
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
	jsr (sub_201210).l
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
	jsr (sub_201210).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206980

sub_206c0a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206c12:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201210).l
	move.b #$40,d2
	bra.w loc_2069bc
loc_206c36:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201210).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206c64
	move.b #$40,d3
loc_206c64:
	rts

sub_206c66:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206c8a
	addi.w #$c,d3
	moveq #$a,d5
loc_206c8a:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206c98:
	tst.b $1(a1)
	bpl.s loc_206ca4
	move.b $20(a1),d0
	bne.s loc_206cb0
loc_206ca4:
	lea $40(a1),a1
	dbf d6,loc_206c98
	moveq #$0,d0
	rts
loc_206cb0:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_20704a).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206cd8
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206cde
	bra.w loc_206ca4
loc_206cd8:
	cmp.w d4,d0
	bhi.w loc_206ca4
loc_206cde:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206cf6
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206cfc
	bra.w loc_206ca4
loc_206cf6:
	cmp.w d5,d0
	bhi.w loc_206ca4
loc_206cfc:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206d70
	cmpi.b #$c0,d1
	beq.w loc_206f50
	tst.b d1
	bmi.w sub_206e3a
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206d34
	cmpi.w #$5a,$30(a0)
	bcc.w loc_206d32
	addq.b #$2,$24(a1)
loc_206d32:
	rts
loc_206d34:
	tst.w $12(a0)
	bpl.s loc_206d5e
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206d6e
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206d6e
	addq.b #$4,$25(a1)
	rts
loc_206d5e:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206d6e
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206d6e:
	rts

sub_206d70:
	tst.b ($ff1521).l
	bne.s loc_206d8a
	tst.b ($ff151f).l
	bne.s loc_206d8a
	cmpi.b #$2,$1c(a0)
	bne.w sub_206e3a
loc_206d8a:
	tst.b $21(a1)
	beq.s loc_206db4
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206db2
	bset.b #$7,$22(a1)
loc_206db2:
	rts
loc_206db4:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206dcc
	moveq #$6,d0
loc_206dcc:
	move.w d0,$3e(a1)
	move.w dat_206e2c(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206de6
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206de6:
	bsr.w sub_20a8d2
	move.w #$96,d0
	jsr (sub_202246).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206e1c
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206e24
	neg.w $12(a0)
	rts
loc_206e1c:
	addi.w #$100,$12(a0)
	rts
loc_206e24:
	subi.w #$100,$12(a0)
	rts
dat_206e2c:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206e3a:
	tst.b ($ff1521).l
	bne.s loc_206e4a
	tst.b ($ff151f).l
	beq.s loc_206e4e
loc_206e4a:
	moveq #$ffffffff,d0
	rts
loc_206e4e:
	nop
	tst.w $30(a0)
	bne.s loc_206e4a
	movea.l a1,a2
	tst.b ($ff151e).l
	bne.s loc_206e84
	tst.w ($ff1512).l
	beq.w loc_206eee
	jsr (sub_2078c0).l
	bne.s loc_206e84
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_206e84:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206e9a
	move.b #$0,($ff156f).l
loc_206e9a:
	move.b #$4,$24(a0)
	bsr.w sub_2050fa
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206eca
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206eca:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206ed8
	neg.w $10(a0)
loc_206ed8:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206eee:
	tst.w ($ff1588).l
	bne.w loc_206e84

sub_206ef8:
	tst.w ($ff1906).l
	bne.s loc_206f4c
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2050fa
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_202246).l
loc_206f4c:
	moveq #$ffffffff,d0
	rts
loc_206f50:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_206fe8
	cmpi.b #$23,d1
	beq.w loc_206fe8
	cmpi.b #$2d,d1
	beq.w loc_20703e
	cmpi.b #$31,d1
	beq.w loc_20703e
	cmpi.b #$35,d1
	beq.w loc_207030
	cmpi.b #$3a,d1
	beq.w loc_207030
	cmpi.b #$3b,d1
	beq.w loc_207030
	tst.b ($f7aa).w
	beq.w loc_206fe6
	cmpi.b #$1,($f7aa).w
	beq.s loc_206fb0
	cmpi.b #$4,($f7aa).w
	beq.s loc_206fd2
	cmpi.b #$5,($f7aa).w
	beq.s loc_206fe0
loc_206fb0:
	cmpi.b #$3c,d1
	blt.s loc_206fe6
	cmpi.b #$3f,d1
	bgt.s loc_206fe6
	bsr.w sub_206d70
	tst.b $20(a1)
	bne.s loc_206fca
	addq.b #$3,$21(a1)
loc_206fca:
	clr.b $20(a1)
	bra.w loc_206fe8
loc_206fd2:
	cmpi.b #$3f,d1
	beq.s loc_206ff4
	cmpi.b #$3e,d1
	beq.s loc_206fee
	bra.s loc_206fe6
loc_206fe0:
	cmpi.b #$3d,d1
	beq.s loc_206fee
loc_206fe6:
	rts
loc_206fe8:
	addq.b #$1,$21(a1)
	rts
loc_206fee:
	bsr.w sub_206e3a
	bra.s loc_206fe8
loc_206ff4:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_20702e
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_20702e
	neg.w $10(a0)
loc_20702e:
	rts
loc_207030:
	cmpi.b #$2,$1c(a0)
	bne.s loc_20703c
	addq.b #$1,$21(a1)
loc_20703c:
	rts
loc_20703e:
	btst.b #$2,$22(a0)
	beq.w sub_206d70
	bra.s loc_206fe8
dat_20704a:
	.incbin 28746, 126
loc_2070c8:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_2070de
	move.l #$4000,(dat_207258).l
	bra.s loc_2070fe
loc_2070de:
	addi.l #$2000,(dat_207258).l
	cmpi.l #$80000,(dat_207258).l
	bls.s loc_2070fe
	move.l #$80000,(dat_207258).l
loc_2070fe:
	move.l (dat_207258).l,d0
	btst.b #$0,($f604).w
	beq.s loc_207110
	sub.l d0,$c(a0)
loc_207110:
	btst.b #$1,($f604).w
	beq.s loc_20711c
	add.l d0,$c(a0)
loc_20711c:
	btst.b #$2,($f604).w
	beq.s loc_207128
	sub.l d0,$8(a0)
loc_207128:
	btst.b #$3,($f604).w
	beq.s loc_207134
	add.l d0,$8(a0)
loc_207134:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200eb8).l
	move.w (a1),($ff194e).l
	lea (dat_20725c).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207176
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207170
	move.b #$0,d1
loc_207170:
	move.b d1,($ff1904).l
loc_207176:
	btst.b #$7,($f605).w
	beq.s loc_207196
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207190
	add.b (a2),d1
loc_207190:
	move.b d1,($ff1904).l
loc_207196:
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
	beq.s loc_207222
	bsr.w sub_2078c0
	bne.s loc_207222
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
loc_207222:
	btst.b #$4,($f605).w
	beq.s loc_207252
	move.b #$0,($ff1906).l
	move.l #$22df20,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207252:
	jmp (sub_20389a).l
dat_207258:
	dc.b $00,$00,$40,$00
dat_20725c:
	.incbin 29276, 1106

sub_2076ae:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2076bc:
	clr.l (a2)+
	dbf d0,loc_2076bc
	rts

sub_2076c4:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2076d2(pc,d0.w),d0
	jmp dat_2076d2(pc,d0.w)
dat_2076d2:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207972).l,a0
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
	bcc.s loc_207710
	moveq #$0,d6
loc_207710:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_207718:
	cmp.w (a0),d6
	bls.s loc_20772a
	tst.b $4(a0)
	bpl.s loc_207726
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207726:
	addq.w #$8,a0
	bra.s loc_207718
loc_20772a:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20774a
loc_207738:
	cmp.w (a0),d6
	bls.s loc_20774a
	tst.b $4(a0)
	bpl.s loc_207746
	addq.b #$1,$1(a2)
loc_207746:
	addq.w #$8,a0
	bra.s loc_207738
loc_20774a:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207834
	bge.s loc_2077da
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077b6
loc_207784:
	cmp.w -$8(a0),d6
	bge.s loc_2077b6
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20779a
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20779a:
	bsr.w sub_207858
	bne.s loc_2077a4
	subq.w #$8,a0
	bra.s loc_207784
loc_2077a4:
	tst.b $4(a0)
	bpl.s loc_2077b4
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2077b4:
	addq.w #$8,a0
loc_2077b6:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2077c2:
	cmp.w -$8(a0),d6
	bgt.s loc_2077d4
	tst.b -$4(a0)
	bpl.s loc_2077d0
	subq.b #$1,(a2)
loc_2077d0:
	subq.w #$8,a0
	bra.s loc_2077c2
loc_2077d4:
	move.l a0,($f770).w
	rts
loc_2077da:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_2077ee:
	cmp.w (a0),d6
	bls.s loc_207810
	tst.b $4(a0)
	bpl.s loc_2077fc
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2077fc:
	bsr.w sub_207858
	beq.s loc_2077ee
	tst.b $4(a0)
	bpl.s loc_207810
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207810:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207830
loc_20781e:
	cmp.w (a0),d6
	bls.s loc_207830
	tst.b $4(a0)
	bpl.s loc_20782c
	addq.b #$1,$1(a2)
loc_20782c:
	addq.w #$8,a0
	bra.s loc_20781e
loc_207830:
	move.l a0,($f774).w
loc_207834:
	rts

sub_207836:
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

sub_207858:
	bsr.s sub_207836
	beq.s loc_20786a
	tst.b $4(a0)
	bpl.s loc_207870
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207870
loc_20786a:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207870:
	bsr.w sub_2078c0
	bne.s loc_2078be
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
	bpl.s loc_2078a0
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2078a0:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2078b2
	nop
	nop
	nop
	nop
loc_2078b2:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2078be:
	rts

sub_2078c0:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2078c8:
	tst.b (a1)
	beq.s loc_2078d4
	lea $40(a1),a1
	dbf d0,loc_2078c8
loc_2078d4:
	rts

sub_2078d6:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_2078f4
loc_2078e8:
	tst.b (a1)
	beq.s loc_2078f4
	lea $40(a1),a1
	dbf d0,loc_2078e8
loc_2078f4:
	rts

sub_2078f6:
	move.w $8(a0),d0

sub_2078fa:
	tst.b $1(a0)
	bmi.s loc_207964
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207964
loc_207918:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20795a
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207952
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20794a
	moveq #$0,d1
	bra.s loc_207952
loc_20794a:
	cmpi.w #$3,d1
	bcs.s loc_207952
	moveq #$2,d1
loc_207952:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20795a:
	jsr (sub_203946).l
	moveq #$1,d0
	rts
loc_207964:
	btst.b #$7,($ff152e).l
	bne.s loc_207918
	moveq #$0,d0
	rts
dat_207972:
	.incbin 31090, 5146

sub_208d8c:
	btst.b #$3,$22(a0)
	beq.s loc_208dfc
	btst.b #$3,$22(a1)
	beq.s loc_208dfc
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_208dfc
	tst.b $2a(a1)
	beq.s loc_208dbe
	move.w #$ab,d0
	jsr (sub_202246).l
loc_208dbe:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208dea
	cmpi.b #$17,$1c(a1)
	beq.s loc_208dea
	bclr.b #$0,$2c(a1)
loc_208dea:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208dfc
	bclr.b #$1,$22(a1)
loc_208dfc:
	rts

sub_208dfe:
	cmpi.b #$4,$24(a1)
	bne.s loc_208e10
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_208e10:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208e70
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208e32
	bclr.b #$3,$22(a0)
	bra.w sub_208d8c
loc_208e32:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208e70
	tst.b ($ff195b).l
	beq.s loc_208e5a
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208e6a
loc_208e5a:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208e6a:
	move.b #$0,$1c(a1)
loc_208e70:
	bset.b #$3,$22(a1)
	beq.s loc_208e92
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208eca
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208e92:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208ebe
	cmpi.b #$2,$24(a0)
	beq.s loc_208ec4
loc_208ebe:
	move.w $10(a1),$14(a1)
loc_208ec4:
	bclr.b #$1,$22(a1)
loc_208eca:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06
	dc.b $11,$7c,$00,$01,$00,$25

sub_208eda:
	cmpi.b #$17,$1c(a1)
	beq.w loc_20918e
	btst.b #$6,$2c(a1)
	bne.w loc_20918e
	cmpi.b #$6,$24(a1)
	bcc.w loc_20918e
	tst.b $0(a1)
	beq.w loc_20918e
	tst.b $1(a0)
	bpl.w loc_20918e
	tst.b ($ff1906).l
	bne.w loc_20918e
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_20918e
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_20918e
	cmpi.b #$2b,$1c(a1)
	bne.s loc_208f48
	btst.b #$3,$22(a0)
	bne.s loc_208f5a
	bra.w loc_20918e
loc_208f48:
	cmpi.b #$1,$25(a0)
	bne.s loc_208f5a
	tst.w $12(a1)
	beq.s loc_208f5a
	bmi.w loc_20918e
loc_208f5a:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_20918e
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_20918e
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208f90
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208f90:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208f9e
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208f9e:
	cmp.w d4,d5
	bcs.w loc_209032
	cmpi.b #$1,$25(a0)
	beq.w loc_20918e
	cmpi.b #$a,$0(a0)
	bne.s loc_208fc0
	btst.b #$1,$22(a1)
	bne.w loc_20918e
loc_208fc0:
	cmpi.b #$4,d5
	bls.w loc_20918e
	bsr.w sub_2091de
	move.l d0,-(a7)
	bsr.w sub_208d8c
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208fea
	tst.w $10(a1)
	beq.s loc_20901a
	bpl.s loc_208ff2
	bra.s loc_20901a
loc_208fea:
	tst.w $10(a1)
	beq.s loc_20901a
	bpl.s loc_20901a
loc_208ff2:
	bsr.w sub_20919e
	btst.b #$1,$22(a1)
	bne.s loc_209010
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_209010:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20901a:
	bsr.w sub_209254
	bsr.w sub_20919e
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_209032:
	cmpi.b #$19,$0(a0)
	bne.s loc_209044
	btst.b #$2,$22(a1)
	bne.w loc_20918e
loc_209044:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20905a
	bmi.w loc_20912a
loc_20905a:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20906c
	tst.w $12(a1)
	beq.s loc_20906c
	bmi.w loc_20918e
loc_20906c:
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
	beq.s loc_2090b8
	bpl.s loc_209098
	neg.b d0
loc_209098:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20688a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2090b8
	tst.w $10(a0)
	bpl.s loc_2090b4
	neg.w d1
loc_2090b4:
	add.w d1,$8(a1)
loc_2090b8:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_209122
	tst.w $12(a0)
	bmi.s loc_2090f6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20691c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2090f6
	add.w d1,$c(a1)
	bra.w loc_20918e
loc_2090f6:
	tst.w $12(a0)
	bpl.s loc_209122
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206b34).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_209122
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ef8).l
	movem.l (a7)+,a0-a1
	bra.s loc_20918e
loc_209122:
	bsr.w sub_208dfe
	moveq #$1,d0
	rts
loc_20912a:
	cmpi.b #$1,$25(a0)
	beq.s loc_20918e
	cmpi.b #$9,$0(a0)
	beq.s loc_20918e
	cmpi.b #$a,$0(a0)
	bne.s loc_209154
	cmpi.b #$2,$25(a0)
	beq.s loc_209174
	btst.b #$1,$1(a0)
	bne.s loc_209174
	bra.s loc_20918e
loc_209154:
	btst.b #$1,$22(a1)
	bne.s loc_209174
	tst.w $12(a0)
	beq.s loc_209174
	bmi.s loc_209174
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ef8).l
	movem.l (a7)+,a0-a1
loc_209174:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_209254
	bsr.w sub_208d8c
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_20918e:
	bsr.w sub_209254
	bsr.w sub_208d8c
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_20919e:
	tst.w $10(a0)
	beq.s loc_2091dc
	cmpi.b #$a,$0(a0)
	beq.s loc_2091dc
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2091b8
	neg.b d0
loc_2091b8:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20688a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2091dc
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ef8).l
	movem.l (a7)+,a0-a1
loc_2091dc:
	rts

sub_2091de:
	cmpi.b #$a,$0(a0)
	bne.s loc_2091ee
	move.b #$0,$20(a1)
	rts
loc_2091ee:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_209242
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_209252
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_209210
	tst.w $10(a2)
	beq.s loc_209252
loc_209210:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_209222
	cmp.w $8(a2),d1
	bcs.s loc_209252
	bra.s loc_209228
loc_209222:
	cmp.w $8(a2),d1
	bcc.s loc_209252
loc_209228:
	cmpi.b #$15,$0(a0)
	beq.s loc_209252
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206ef8).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_209242:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_209252:
	rts

sub_209254:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_20926e
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_20926e
	move.b #$0,$20(a1)
loc_20926e:
	rts
	.incbin 37488, 374
loc_2093e6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2093f4(pc,d0.w),d0
	jmp dat_2093f4(pc,d0.w)
dat_2093f4:
	.incbin 37876, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2093e6
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20944a
	tst.b $1(a0)
	bpl.s loc_209452
loc_20944a:
	move.w dat_2094a4(pc,d0.w),d1
	jsr dat_2094a4(pc,d1.w)
loc_209452:
	bsr.w sub_20389a
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_209484
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_209484:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203946
	rts
dat_2094a4:
	.incbin 38052, 26
	addq.b #$2,$24(a0)
	move.l #$209826,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_209514
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20982c,$4(a0)
	bra.s loc_209556
loc_209514:
	btst.l #$3,d0
	beq.s loc_209542
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$209876,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20ce70).l
	move.l (a7)+,d0
	bra.s loc_209556
loc_209542:
	btst.b #$1,$1(a0)
	beq.s loc_209556
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_209556:
	btst.l #$1,d0
	beq.s loc_209562
	bset.b #$5,$2(a0)
loc_209562:
	andi.w #$2,d0
	move.w dat_20956e(pc,d0.w),$30(a0)
	rts
dat_20956e:
	dc.b $f0,$00,$f6,$00

sub_209572:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208eda).l
	tst.b $1(a0)
	bpl.s loc_20958e
	lea ($d000).w,a1
	bsr.s sub_209572
	bne.s loc_209590
loc_20958e:
	rts
loc_209590:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_202246).l
	.incbin 38338, 34

sub_2095e4:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208eda).l
	tst.b $1(a0)
	bpl.s loc_209606
	lea ($d000).w,a1
	bsr.s sub_2095e4
	btst.b #$5,$22(a0)
	bne.s loc_209608
loc_209606:
	rts
loc_209608:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_209636
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_209636:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_209650
	move.b #$0,$1c(a1)
loc_209650:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_202246).l
	.incbin 38506, 150
	btst.b #$5,$22(a0)
	bne.s loc_20970a
	rts
loc_20970a:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_20074a).l
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
	beq.s loc_209748
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_209748:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_20976a
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_20976a:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_202246).l
	lea (dat_209818).l,a1
	bra.w sub_205aa4
	.incbin 38812, 124
dat_209818:
	.incbin 38936, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209912(pc,d0.w),d1
	jmp dat_209912(pc,d1.w)
dat_209912:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20991c:
	.incbin 39196, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209974
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20996c
	moveq #$0,d1
	bra.s loc_209974
loc_20996c:
	cmpi.w #$3,d1
	bcs.s loc_209974
	moveq #$2,d1
loc_209974:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209990
	moveq #$6,d1
loc_209990:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20991c).l,a1
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
	beq.s loc_2099e0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2099d8
	moveq #$0,d0
	bra.s loc_2099e0
loc_2099d8:
	cmpi.w #$3,d0
	bcs.s loc_2099e0
	moveq #$2,d0
loc_2099e0:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209aae
	dbf d0,loc_2099e0
	bclr.b #$7,(a2)
	bra.s loc_209a36
loc_2099f2:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209a1e
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209a16
	moveq #$0,d0
	bra.s loc_209a1e
loc_209a16:
	cmpi.w #$3,d0
	bcs.s loc_209a1e
	moveq #$2,d0
loc_209a1e:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209aae
	dbf d0,loc_209a1e
	bclr.b #$7,(a2)
	bsr.w sub_2078d6
	bne.w loc_209aba
loc_209a36:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209d80,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a8c
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209a8c
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209a8c:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209aae:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2099f2
loc_209aba:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209ae0
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_209ad8
	moveq #$0,d0
	bra.s loc_209ae0
loc_209ad8:
	cmpi.w #$3,d0
	bcs.s loc_209ae0
	moveq #$2,d0
loc_209ae0:
	lea $1(a2),a3
loc_209ae4:
	btst.b #$0,-(a3)
	bne.w sub_203946
	dbf d0,loc_209ae4
	tst.b $1(a0)
	bmi.s loc_209b14
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209b8e
loc_209b14:
	tst.w ($ff190e).l
	bne.s loc_209b24
	move.b ($ff1913).l,$1a(a0)
loc_209b24:
	bra.w sub_20389a
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209b92
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209b74
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209b6c
	moveq #$0,d1
	bra.s loc_209b74
loc_209b6c:
	cmpi.w #$3,d1
	bcs.s loc_209b74
	moveq #$2,d1
loc_209b74:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_209d78).l,a1
	bsr.w sub_205aa4
	bra.w sub_20389a
loc_209b8e:
	bra.w sub_203946

sub_209b92:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209be2
	bset.b #$1,($ff150d).l
	beq.s loc_209bcc
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209be2
	bset.b #$2,($ff150d).l
	bne.s loc_209be2
loc_209bcc:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a64).l
loc_209be2:
	jmp (sub_202246).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209bf6(pc,d0.w),d1
	jmp dat_209bf6(pc,d1.w)
dat_209bf6:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_209c12
	move.w d0,d5
loc_209c12:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_209c22
loc_209c1a:
	bsr.w sub_2078c0
	bne.w loc_209cd8
loc_209c22:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$209d80,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209c80
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_209c80
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_209c80:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_209cc8
	move.w d4,d0
	jsr (sub_20074a).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_209cc8
	subi.w #$80,d4
	bcc.s loc_209cc8
	move.w #$288,d4
loc_209cc8:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_209c1a
loc_209cd8:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_202246).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_203844
	addi.w #$18,$12(a0)
	bmi.s loc_209d38
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_209d38
	jsr (sub_2069ca).l
	tst.w d1
	bpl.s loc_209d38
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_209d38:
	tst.b ($ff1916).l
	beq.s loc_209d74
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_209d74
	bra.w sub_20389a
	.incbin 40274, 34
loc_209d74:
	bra.w sub_203946
dat_209d78:
	.incbin 40312, 402
loc_209f0a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209f38(pc,d0.w),d0
	jsr dat_209f38(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_209f36
	cmpi.w #$5a,($f786).w
	bcs.s loc_209f30
	btst.b #$0,($ff1505).l
	bne.s loc_209f36
loc_209f30:
	jmp (sub_20389a).l
loc_209f36:
	rts
dat_209f38:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$20a512,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209f6c
	move.b #$13,$1a(a0)
loc_209f6c:
	rts
loc_209f6e:
	tst.b ($ff0f01).l
	beq.s loc_209f7c
	jmp (sub_203946).l
loc_209f7c:
	cmpi.b #$a,$28(a0)
	beq.w loc_209f0a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209fa0(pc,d0.w),d0
	jsr dat_209fa0(pc,d0.w)
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_209fa0:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a512,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209fee
	tst.b $29(a0)
	bne.s loc_209fee
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209fee:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_20a0ba
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_20a016
	addq.b #$2,$1a(a0)
loc_20a016:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a02a
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_20a02a:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_20a090
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a05c
	tst.b $29(a0)
	beq.s loc_20a054
	tst.b ($ff1956).l
	beq.s loc_20a090
	bra.s loc_20a05c
loc_20a054:
	tst.b ($ff1956).l
	bne.s loc_20a090
loc_20a05c:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_20a0ba
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_20a08a
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_20a08a:
	jsr (sub_205a64).l
loc_20a090:
	rts
	.incbin 41106, 40

sub_20a0ba:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20a0f2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20a0ea
	moveq #$0,d1
	bra.s loc_20a0f2
loc_20a0ea:
	cmpi.w #$3,d1
	bcs.s loc_20a0f2
	moveq #$2,d1
loc_20a0f2:
	add.w d1,d0
	rts

sub_20a0f6:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a118
	tst.b ($ff1956).l
	beq.s loc_20a110
	tst.b $29(a0)
	bne.s loc_20a118
	rts
loc_20a110:
	tst.b $29(a0)
	beq.s loc_20a118
	rts
loc_20a118:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208eda).l
	tst.b $28(a0)
	bne.s loc_20a13a
	tst.b ($ff0f01).l
	beq.s loc_20a13a
	jmp (sub_2078f6).l
loc_20a13a:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209f6e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a152(pc,d0.w),d1
	jmp dat_20a152(pc,d1.w)
dat_20a152:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$20a512,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20a19c
	tst.b $29(a0)
	bne.s loc_20a19c
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20a19c:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_20a0ba
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_20a1c8
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_20a1c8:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_20a222
	move.b $25(a0),d0
	beq.s loc_20a202
	bsr.w sub_2037e2
	jsr (sub_2069ca).l
	tst.w d1
	bpl.w loc_20a210
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_20a210
loc_20a202:
	tst.b $1(a0)
	bpl.s loc_20a210
	lea ($d000).w,a1
	bsr.w sub_20a0f6
loc_20a210:
	tst.w ($ff190e).l
	bne.s loc_20a222
	lea (dat_20a48a).l,a1
	bsr.w sub_205aa4
loc_20a222:
	bsr.w sub_20389a
	jmp (sub_2078f6).l
	.incbin 41516, 606
dat_20a48a:
	.incbin 42122, 586
loc_20a6d4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a6e8(pc,d0.w),d0
	jsr dat_20a6e8(pc,d0.w)
	jmp (sub_20389a).l
dat_20a6e8:
	.incbin 42728, 146
	tst.b $28(a0)
	bmi.w loc_20a6d4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a790(pc,d0.w),d0
	jmp dat_20a790(pc,d0.w)
dat_20a790:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a82a,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a7c0
	move.b #$3,$1a(a0)
	bra.s loc_20a7e0
loc_20a7c0:
	tst.w ($ff1588).l
	beq.s loc_20a7ce
	move.b #$2,$1a(a0)
loc_20a7ce:
	tst.b $28(a0)
	beq.s loc_20a7e0
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a7e0:
	tst.b $28(a0)
	bne.s loc_20a824
	tst.b $29(a0)
	beq.s loc_20a810
	tst.w ($ff1512).l
	beq.s loc_20a7fc
	bclr.b #$5,$2(a0)
	bra.s loc_20a824
loc_20a7fc:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a824
	eori.b #$20,$2(a0)
	bra.s loc_20a824
loc_20a810:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a824
	move.b #$2,$1a(a0)
loc_20a824:
	jmp (sub_20389a).l
	.incbin 43050, 168

sub_20a8d2:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a8ee
	move.l d1,(a3)
loc_20a8ee:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a918
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205a64).l
loc_20a918:
	rts
loc_20a91a:
	tst.w ($ff1588).l
	beq.s loc_20a970
	bsr.w sub_20ab6c
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
	lea (dat_20accc).l,a2
	moveq #$2,d6
	bsr.w sub_20ad24
	bra.w loc_20a9ca
loc_20a970:
	tst.b ($ff1511).l
	beq.s loc_20a994
	bpl.s loc_20a97e
	bsr.w sub_20ab16
loc_20a97e:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20ac06
loc_20a994:
	tst.b ($ff150f).l
	beq.s loc_20a9ca
	bpl.s loc_20a9a2
	bsr.w sub_20ab02
loc_20a9a2:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a9c6
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a9c6:
	bsr.w sub_20abfc
loc_20a9ca:
	tst.w ($ff1588).l
	bne.w loc_20aa76
	tst.b ($ff1510).l
	beq.w loc_20aa76
	tst.w ($f63a).w
	bne.w loc_20aa76
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20aad4
	tst.b ($f7cc).w
	bne.s loc_20aa20
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aa20
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20aa20
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20aa20
	move.b #$9,(a1)
loc_20aa20:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20ad12
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20ad1c
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20aa72
	move.w #$63,d1
loc_20aa72:
	bsr.w sub_20ad1c
loc_20aa76:
	tst.b ($ff150e).l
	beq.s loc_20aa88
	clr.b ($ff150e).l
	bsr.w sub_20acf2
loc_20aa88:
	tst.b ($f7d6).w
	beq.s loc_20aad2
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aaa8
	move.l #$6d400001,d0
loc_20aaa8:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20ab8a
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20aac8
	move.l #$6e800001,d0
loc_20aac8:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20ab8a
loc_20aad2:
	rts
loc_20aad4:
	btst.b #$7,($ff152e).l
	bne.s loc_20ab00
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206ef8
	move.b #$1,($ff150c).l
loc_20ab00:
	rts

sub_20ab02:
	move.l #$73600002,($c00004).l
	lea dat_20ab68(pc),a2
	move.w #$2,d2
	bra.s loc_20ab32

sub_20ab16:
	lea ($c00000).l,a6
	bsr.w sub_20acf2
	move.l #$70600002,($c00004).l
	lea dat_20ab60(pc),a2
	move.w #$6,d2
loc_20ab32:
	lea (dat_2330bc).l,a1
loc_20ab38:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20ab54
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20ab48:
	move.l (a3)+,(a6)
	dbf d1,loc_20ab48
loc_20ab4e:
	dbf d2,loc_20ab38
	rts
loc_20ab54:
	move.l #$0,(a6)
	dbf d1,loc_20ab54
	bra.s loc_20ab4e
dat_20ab60:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20ab68:
	dc.b $ff,$ff,$00,$00

sub_20ab6c:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20ace8
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20ace8

sub_20ab8a:
	lea (dat_20acc4).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ab9a:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ab9e:
	sub.l d3,d1
	bcs.s loc_20aba6
	addq.w #$1,d2
	bra.s loc_20ab9e
loc_20aba6:
	add.l d3,d1
	tst.w d2
	beq.s loc_20abb0
	move.w #$1,d4
loc_20abb0:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20abbc
	tst.w d6
	bne.s loc_20abee
loc_20abbc:
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
loc_20abe2:
	addi.l #$400000,d0
	dbf d6,loc_20ab9a
	rts
loc_20abee:
	moveq #$f,d5
loc_20abf0:
	move.l #$0,(a6)
	dbf d5,loc_20abf0
	bra.s loc_20abe2

sub_20abfc:
	lea (dat_20accc).l,a2
	moveq #$2,d6
	bra.s loc_20ac0e

sub_20ac06:
	lea (dat_20acc0).l,a2
	moveq #$5,d6
loc_20ac0e:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ac16:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ac1a:
	sub.l d3,d1
	bcs.s loc_20ac22
	addq.w #$1,d2
	bra.s loc_20ac1a
loc_20ac22:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ac2c
	move.w #$1,d4
loc_20ac2c:
	tst.w d4
	beq.s loc_20ac5a
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
loc_20ac5a:
	addi.l #$400000,d0
	dbf d6,loc_20ac16
	rts
	.incbin 44134, 90
dat_20acc0:
	dc.b $00,$01,$86,$a0
dat_20acc4:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20accc:
	dc.b $00,$00,$00,$64
dat_20acd0:
	dc.b $00,$00,$00,$0a
dat_20acd4:
	dc.b $00,$00,$00,$01
dat_20acd8:
	.incbin 44248, 16

sub_20ace8:
	moveq #$3,d6
	lea (dat_20acd8).l,a2
	bra.s sub_20ad24

sub_20acf2:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20ad08
	moveq #$9,d1
loc_20ad08:
	lea (dat_20acd4).l,a2
	moveq #$0,d6
	bra.s sub_20ad24

sub_20ad12:
	lea (dat_20acd4).l,a2
	moveq #$0,d6
	bra.s sub_20ad24

sub_20ad1c:
	lea (dat_20acd0).l,a2
	moveq #$1,d6

sub_20ad24:
	moveq #$0,d4
	lea (dat_2330bc).l,a1
loc_20ad2c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20ad30:
	sub.l d3,d1
	bcs.s loc_20ad38
	addq.w #$1,d2
	bra.s loc_20ad30
loc_20ad38:
	add.l d3,d1
	tst.w d2
	beq.s loc_20ad42
	move.w #$1,d4
loc_20ad42:
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
	dbf d6,loc_20ad2c
	rts
	.incbin 44408, 2726
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b83c(pc,d0.w),d0
	jsr dat_20b83c(pc,d0.w)
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_20b83c:
	dc.b $00,$08,$00,$4c,$00,$d4,$00,$e0
	tst.b $28(a0)
	beq.s loc_20b850
	bset.b #$1,$1(a0)
loc_20b850:
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$34d,$2(a0)
	tst.b ($ff1956).l
	bne.s loc_20b86e
	ori.b #$80,$2(a0)
loc_20b86e:
	move.l #$20b956,$4(a0)
	move.b #$18,$17(a0)
	move.b #$18,$19(a0)
	move.b #$18,$16(a0)
	tst.b $2a(a0)
	beq.s loc_20b894
	subq.b #$1,$2a(a0)
	bra.s loc_20b8e6
loc_20b894:
	move.b $17(a6),d0
	ext.w d0
	move.b $17(a0),d1
	ext.w d1
	add.w d0,d1
	move.w $8(a0),d0
	sub.w $8(a6),d0
	add.w d1,d0
	bmi.s loc_20b8e8
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20b8e8
	move.b $16(a6),d0
	ext.w d0
	move.b $16(a0),d1
	ext.w d1
	add.w d0,d1
	move.w $c(a0),d0
	sub.w $c(a6),d0
	add.w d1,d0
	bmi.s loc_20b8e8
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20b8e8
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	eori.b #$1,($ff1956).l
loc_20b8e6:
	rts
loc_20b8e8:
	btst.b #$7,$2(a0)
	beq.s loc_20b8fa
	tst.b ($ff1956).l
	bne.s loc_20b904
	rts
loc_20b8fa:
	tst.b ($ff1956).l
	beq.s loc_20b904
	rts
loc_20b904:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	rts
	lea (dat_20b948).l,a1
	jmp (sub_205aa4).l
	ori.w #$8000,$2(a0)
	move.b #$4,$18(a0)
	tst.b ($ff1956).l
	beq.s loc_20b93c
	andi.w #$7fff,$2(a0)
	move.b #$0,$18(a0)
loc_20b93c:
	move.b #$0,$1b(a0)
	subq.b #$4,$24(a0)
	rts
dat_20b948:
	.incbin 47432, 184
	cmpi.b #$4,$24(a0)
	bcs.s loc_20ba14
	tst.b $3e(a0)
	beq.s loc_20ba14
	jmp (sub_203946).l
loc_20ba14:
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20ba24
	cmpi.b #$6,($d024).w
	bcc.s loc_20ba3a
loc_20ba24:
	move.w dat_20ba82(pc,d0.w),d0
	jsr dat_20ba82(pc,d0.w)
	cmpi.b #$4,$24(a0)
	bne.s loc_20ba3a
	tst.b $28(a0)
	bne.s loc_20ba40
loc_20ba3a:
	jsr (sub_20389a).l
loc_20ba40:
	cmpi.b #$2,$24(a0)
	bne.s loc_20ba80
	move.l $2a(a0),-(a7)
	move.l $36(a0),-(a7)
	move.l $3a(a0),-(a7)
	move.w $34(a0),d0
	jsr (sub_2078fa).l
	bne.s loc_20ba68
	move.l (a7)+,d0
	move.l (a7)+,d0
	move.l (a7)+,d0
	rts
loc_20ba68:
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
	movea.l (a7)+,a1
	move.b #$1,$3e(a1)
loc_20ba80:
	rts
dat_20ba82:
	.incbin 47746, 16
	addq.b #$2,$24(a0)
	move.w $8(a0),$34(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c41e,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$16(a0)
	move.b #$1,$1a(a0)
	move.b $28(a0),d0
	cmpi.b #$2,d0
	bcs.s loc_20badc
	subq.b #$1,d0
	move.b d0,$29(a0)
	move.b d0,$1b(a0)
	move.b #$0,$28(a0)
loc_20badc:
	moveq #$2,d6
	move.l a0,-(a7)
loc_20bae0:
	jsr (sub_2078d6).l
	beq.s loc_20baf0
	movea.l (a7)+,a0
	jmp (sub_203946).l
loc_20baf0:
	movea.l a1,a0
	dbf d6,loc_20bae0
	movea.l (a7)+,a0
	moveq #$2,d6
	move.b #$4,d1
loc_20bafe:
	jsr (sub_2078d6).l
	move.b #$1e,$0(a1)
	ori.b #$4,$1(a1)
	move.w $8(a0),$8(a1)
	move.w $8(a0),$34(a1)
	move.w $c(a0),$c(a1)
	cmpi.b #$2,d6
	bne.s loc_20bb42
	move.w #$520,$2(a1)
	move.l #$20982c,$4(a1)
	move.b #$5,$18(a1)
	move.l a1,$2a(a0)
	bra.s loc_20bb6c
loc_20bb42:
	move.w #$300,$2(a1)
	move.l #$20c41e,$4(a1)
	move.b #$20,$17(a1)
	move.b #$20,$16(a1)
	cmpi.w #$1,d6
	bne.s loc_20bb68
	move.l a1,$36(a0)
	bra.s loc_20bb6c
loc_20bb68:
	move.l a1,$3a(a0)
loc_20bb6c:
	move.b $28(a0),$28(a1)
	move.l a0,$2a(a1)
	move.b d1,$24(a1)
	cmpi.w #$2,d6
	bne.s loc_20bb82
	addq.b #$4,d1
loc_20bb82:
	addq.b #$2,d1
	dbf d6,loc_20bafe
	tst.b $29(a0)
	bne.s loc_20bba2
	movea.l $2a(a0),a1
	cmpi.b #$6,$24(a1)
	bcs.s loc_20bba4
	cmpi.b #$2,$29(a1)
	beq.s loc_20bba4
loc_20bba2:
	rts
loc_20bba4:
	lea (dat_20c412).l,a1
	jmp (sub_205aa4).l
	tst.b $28(a0)
	bne.s loc_20bbbe
	bsr.w sub_20bbc0
	bra.w loc_20bf88
loc_20bbbe:
	rts

sub_20bbc0:
	lea (dat_20bc64).l,a2
	lea (dat_20bc82).l,a3
	tst.b $28(a0)
	beq.s loc_20bbf2
	lea (dat_20bc6e).l,a2
	lea (dat_20bca6).l,a3
	cmpi.b #$1,$28(a0)
	beq.s loc_20bbf2
	lea (dat_20bc78).l,a2
	lea (dat_20bcca).l,a3
loc_20bbf2:
	move.w #$520,$2(a0)
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	btst.l #$0,d0
	bne.s loc_20bc0e
	move.w #$4f2,$2(a0)
loc_20bc0e:
	move.w d0,d1
	move.b dat_20bc4e(pc,d0.w),d0
	add.w d0,d0
	add.w d0,d0
	move.l dat_20bc58(pc,d0.w),$4(a0)
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
dat_20bc4e:
	dc.b $02,$00,$02,$01,$02,$00,$02,$01
	dc.b $02,$00
dat_20bc58:
	dc.b $00,$20,$98,$2c,$00,$20,$98,$26
	dc.b $00,$20,$98,$76
dat_20bc64:
	dc.b $00,$00,$00,$00,$01,$01,$01,$00
	dc.b $00,$00
dat_20bc6e:
	dc.b $02,$00,$00,$00,$01,$01,$03,$02
	dc.b $02,$00
dat_20bc78:
	dc.b $01,$01,$03,$02,$02,$00,$00,$00
	dc.b $01,$00
dat_20bc82:
	.incbin 48258, 36
dat_20bca6:
	.incbin 48294, 36
dat_20bcca:
	.incbin 48330, 202

sub_20bd94:
	lea (dat_20beda).l,a2
	lea (dat_20bee4).l,a3
	lea (dat_20bf0c).l,a4
	tst.b $28(a0)
	beq.s loc_20bdc4
	lea (dat_20bef8).l,a3
	lea (dat_20bf20).l,a4
	tst.b $29(a0)
	beq.s loc_20bdc4
	lea (dat_20bf34).l,a4
loc_20bdc4:
	lea (dat_20c238).l,a5
	bra.s loc_20be02

sub_20bdcc:
	lea (dat_20beda).l,a2
	lea (dat_20beee).l,a3
	lea (dat_20bf16).l,a4
	tst.b $28(a0)
	beq.s loc_20bdfc
	lea (dat_20bf02).l,a3
	lea (dat_20bf2a).l,a4
	tst.b $29(a0)
	beq.s loc_20bdfc
	lea (dat_20bf3e).l,a4
loc_20bdfc:
	lea (dat_20c242).l,a5
loc_20be02:
	movea.l $2a(a0),a1
	moveq #$0,d0
	move.b $1b(a1),d0
	move.b $0(a2,d0.w),$1a(a0)
	andi.b #$fc,$1(a0)
	move.b $0(a3,d0.w),d1
	or.b d1,$1(a0)
	move.b $0(a4,d0.w),d0
	lea (dat_20bf48).l,a4
	add.w d0,d0
	add.w d0,d0
	move.w $0(a4,d0.w),d1
	move.w $8(a1),$8(a0)
	add.w d1,$8(a0)
	move.w $2(a4,d0.w),d1
	move.w $c(a1),$c(a0)
	add.w d1,$c(a0)
	tst.b $28(a0)
	beq.s loc_20be96
	movea.l $2a(a0),a2
	movea.l $2a(a2),a2
	tst.b $29(a2)
	beq.s loc_20be7e
	cmpi.b #$2,$29(a2)
	bne.s loc_20be96
	tst.b $29(a0)
	bne.s loc_20be96
	movea.l a5,a3
	move.l a0,-(a7)
	movea.l a2,a0
	movea.l $2e(a2),a2
	bsr.w sub_20c002
	movea.l (a7)+,a0
	rts
loc_20be7e:
	tst.b ($ff1906).l
	bne.s loc_20be96
	lea ($d000).w,a2
	bsr.s sub_20be98
	bne.w loc_20c0b2
	move.b #$0,$29(a0)
loc_20be96:
	rts

sub_20be98:
	move.w #$18,d2
	move.w #$18,d3
	bra.w loc_20bfa4
	.incbin 48804, 54
dat_20beda:
	dc.b $04,$02,$04,$03,$04,$02,$04,$03
	dc.b $04,$00
dat_20bee4:
	dc.b $00,$00,$00,$00,$02,$02,$02,$00
	dc.b $00,$00
dat_20beee:
	dc.b $03,$02,$03,$01,$01,$00,$01,$01
	dc.b $03,$00
dat_20bef8:
	dc.b $01,$00,$00,$00,$02,$02,$03,$01
	dc.b $01,$00
dat_20bf02:
	dc.b $02,$02,$03,$01,$01,$00,$00,$00
	dc.b $02,$00
dat_20bf0c:
	dc.b $01,$00,$01,$02,$03,$04,$03,$02
	dc.b $01,$00
dat_20bf16:
	dc.b $09,$08,$09,$0a,$0b,$0c,$0b,$0a
	dc.b $09,$00
dat_20bf20:
	dc.b $07,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20bf2a:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20bf34:
	dc.b $0b,$0c,$0d,$0e,$0f,$08,$09,$0a
	dc.b $0b,$00
dat_20bf3e:
	dc.b $0f,$08,$09,$0a,$0b,$0c,$0d,$0e
	dc.b $0f,$00
dat_20bf48:
	.incbin 48968, 64
loc_20bf88:
	tst.b ($ff1906).l
	bne.s loc_20bf9a
	lea ($d000).w,a2
	bsr.s sub_20bf9c
	bne.w loc_20c156
loc_20bf9a:
	rts

sub_20bf9c:
	move.w #$20,d2
	move.w #$20,d3
loc_20bfa4:
	cmpi.b #$4,$24(a2)
	bne.s loc_20bfb6
	subq.b #$2,$24(a2)
	move.w #$78,$30(a2)
loc_20bfb6:
	cmpi.b #$2b,$1c(a2)
	beq.s loc_20bffe
	cmpi.b #$6,$24(a2)
	bcc.s loc_20bffe
	move.b $17(a2),d1
	ext.w d1
	add.w d2,d1
	move.w $8(a0),d0
	sub.w $8(a2),d0
	add.w d1,d0
	bmi.s loc_20bffe
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20bffe
	move.b $16(a2),d1
	ext.w d1
	add.w d3,d1
	move.w $c(a0),d0
	sub.w $c(a2),d0
	add.w d1,d0
	bmi.s loc_20bffe
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20bffe
	moveq #$1,d0
	rts
loc_20bffe:
	moveq #$0,d0
	rts

sub_20c002:
	moveq #$0,d0
	move.b $1b(a1),d0
	move.w d0,d2
	move.b $0(a3,d0.w),d0
	lea (dat_20c24c).l,a1
	add.w d0,d0
	add.w d0,d0
	move.w $8(a0),$8(a2)
	move.w $0(a1,d0.w),d1
	add.w d1,$8(a2)
	move.w $c(a0),$c(a2)
	move.w $2(a1,d0.w),d1
	add.w d1,$c(a2)
	rts
loc_20c036:
	lea (dat_20c06a).l,a3
	moveq #$0,d0
	move.b $25(a4),d0
	subi.b #$a,d0
	beq.s loc_20c04e
	lea (dat_20c08e).l,a3
loc_20c04e:
	move.b $1b(a1),d0
	add.w d0,d0
	add.w d0,d0
	move.w $0(a3,d0.w),$10(a4)
	move.w $2(a3,d0.w),$12(a4)
	move.b #$1a,$32(a4)
	rts
dat_20c06a:
	.incbin 49258, 36
dat_20c08e:
	.incbin 49294, 36
loc_20c0b2:
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
	bsr.w sub_20c002
	movem.l (a7)+,a0-a1
	movea.l $2a(a0),a4
	cmpi.b #$a,$24(a0)
	bne.s loc_20c10c
	adda.l #$4,a4
loc_20c10c:
	movea.l $36(a4),a4
	move.b $24(a4),$25(a4)
	movem.l a0-a4,-(a7)
	movea.l $2a(a0),a1
	movea.l $2a(a1),a1
	movea.l a4,a0
	cmpi.b #$a,$24(a0)
	bne.s loc_20c138
	move.b #$2,$28(a1)
	bsr.w sub_20bd94
	bra.s loc_20c142
loc_20c138:
	move.b #$1,$28(a1)
	bsr.w sub_20bdcc
loc_20c142:
	movem.l (a7)+,a0-a4
	move.b #$e,$24(a4)
	move.b #$1,$29(a4)
	bra.w loc_20c036
loc_20c156:
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
	lea (dat_20c224).l,a3
	bsr.w sub_20c002
	btst.l #$0,d2
	bne.s loc_20c1ea
	move.w #$e0,d0
	jsr (sub_20074a).l
	mulu.w #$1000,d0
	mulu.w #$1000,d1
	lsr.l #$8,d0
	lsr.l #$8,d1
	move.w d0,$12(a2)
	move.w d1,$10(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c1c4
	neg.w $12(a2)
loc_20c1c4:
	bclr.b #$0,$22(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c1dc
	bset.b #$0,$22(a2)
	neg.w $10(a2)
loc_20c1dc:
	bset.b #$1,$22(a2)
	bclr.b #$3,$22(a2)
	rts
loc_20c1ea:
	btst.l #$1,d2
	bne.s loc_20c20a
	move.w #$0,$12(a2)
	move.w #$1000,$10(a2)
	btst.b #$0,$1(a0)
	beq.s loc_20c1dc
	neg.w $10(a2)
	bra.s loc_20c1dc
loc_20c20a:
	move.w #$0,$10(a2)
	move.w #$f000,$12(a2)
	btst.b #$1,$1(a0)
	beq.s loc_20c1dc
	neg.w $12(a2)
	bra.s loc_20c1dc
dat_20c224:
	.incbin 49700, 20
dat_20c238:
	dc.b $01,$00,$01,$02,$03,$04,$05,$06
	dc.b $07,$00
dat_20c242:
	dc.b $03,$04,$05,$06,$07,$00,$01,$02
	dc.b $03,$00
dat_20c24c:
	.incbin 49740, 32
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c286(pc,d0.w),d0
	jsr dat_20c286(pc,d0.w)
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_20c286:
	dc.b $00,$08,$00,$4c,$00,$50,$00,$7e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$300,$2(a0)
	move.l #$20c41e,$4(a0)
	move.b #$20,$19(a0)
	move.b #$c,$16(a0)
	move.b #$2,$1a(a0)
	tst.b $28(a0)
	beq.s loc_20c2d2
	move.b #$0,$1a(a0)
	move.w #$f800,$12(a0)
	move.b #$6,$24(a0)
	bra.s loc_20c304
loc_20c2d2:
	bra.w loc_20c326
	tst.b $2a(a0)
	beq.s loc_20c2ee
	jsr (sub_203844).l
	subq.b #$1,$2a(a0)
	bne.s loc_20c2ec
	neg.w $10(a0)
loc_20c2ec:
	rts
loc_20c2ee:
	jsr (sub_203844).l
	move.w $8(a0),d0
	cmp.w $2c(a0),d0
	bne.s loc_20c2ec
	subq.b #$2,$24(a0)
	rts
loc_20c304:
	addi.w #$40,$12(a0)
	jsr (sub_203844).l
	move.w ($f704).w,d0
	addi.w #$e8,d0
	cmp.w $c(a0),d0
	bcc.s loc_20c324
	jmp (sub_203946).l
loc_20c324:
	rts
loc_20c326:
	tst.b ($ff1906).l
	bne.s loc_20c338
	lea ($d000).w,a2
	bsr.s sub_20c33a
	bne.w loc_20c352
loc_20c338:
	rts

sub_20c33a:
	btst.b #$1,$22(a2)
	beq.s loc_20c346
	moveq #$0,d0
	rts
loc_20c346:
	move.w #$20,d2
	move.w #$10,d3
	bra.w loc_20bfa4
loc_20c352:
	clr.b ($d02c).w
	jsr (sub_2078c0).l
	bne.s loc_20c396
	move.b #$8,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$28(a1)
	movea.l a1,a3
	jsr (sub_2078c0).l
	bne.s loc_20c396
	move.b #$9,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subq.w #$6,$c(a1)
loc_20c396:
	move.w #$ce,d0
	jsr (sub_202246).l
	addq.b #$2,$24(a0)
	move.w $8(a0),$2c(a0)
	move.b #$6,$2a(a0)
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcc.s loc_20c3e6
	move.w #$f000,$10(a2)
	bset.b #$0,$22(a1)
	move.w #$200,$10(a3)
	addi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$800,$10(a0)
	bset.b #$0,$22(a2)
	rts
loc_20c3e6:
	move.w #$1000,$10(a2)
	bclr.b #$0,$22(a1)
	move.w #$fe00,$10(a3)
	subi.w #$10,$8(a1)
	move.w $10(a2),$14(a2)
	move.w #$f800,$10(a0)
	bclr.b #$0,$22(a2)
	rts
dat_20c412:
	.incbin 50194, 94
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c484(pc,d0.w),d0
	jsr dat_20c484(pc,d0.w)
	jmp (sub_20389a).l
dat_20c484:
	dc.b $00,$06,$00,$1e,$00,$2a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$8338,$2(a0)
	move.l #$20c4bc,$4(a0)
	lea (dat_20c4b4).l,a1
	jmp (sub_205aa4).l
	jmp (sub_203946).l
dat_20c4b4:
	.incbin 50356, 314
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c5fc(pc,d0.w),d0
	jmp dat_20c5fc(pc,d0.w)
dat_20c5fc:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20ccfa,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20ccba).l,a2
loc_20c64a:
	jsr (sub_2078c0).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20ccfa,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20c69c
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20c69c:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20c64a
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c6c4
	bge.s loc_20c6ba
	neg.w d0
loc_20c6ba:
	add.w d0,$a(a0)
	jmp (sub_20389a).l
loc_20c6c4:
	addq.b #$4,$24(a0)
	jmp (sub_20389a).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c6e8
	bge.s loc_20c6de
	neg.w d0
loc_20c6de:
	add.w d0,$8(a0)
	jmp (sub_20389a).l
loc_20c6e8:
	addq.b #$4,$24(a0)
	jmp (sub_20389a).l
	tst.b $1e(a0)
	beq.s loc_20c702
	subq.b #$1,$1e(a0)
	jmp (sub_20389a).l
loc_20c702:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20c71c
	bge.s loc_20c712
	neg.w d0
loc_20c712:
	add.w d0,$a(a0)
	jmp (sub_20389a).l
loc_20c71c:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_202410).l
	tst.b $1e(a0)
	beq.s loc_20c73e
	subq.b #$1,$1e(a0)
	jmp (sub_20389a).l
loc_20c73e:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20c758
	bge.s loc_20c74e
	neg.w d0
loc_20c74e:
	add.w d0,$8(a0)
	jmp (sub_20389a).l
loc_20c758:
	jmp (sub_203946).l
	tst.l ($f680).w
	bne.s loc_20c772
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203946).l
loc_20c772:
	rts
	.incbin 51060, 1350
dat_20ccba:
	.incbin 52410, 344
loc_20ce12:
	lea dat_20ce64(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ce1e:
	cmp.w (a1)+,d0
	bcs.s loc_20ce26
	addq.b #$2,d1
	bra.s loc_20ce1e
loc_20ce26:
	move.b d1,($ff1574).l
	move.w dat_20ce6c(pc,d1.w),d0
	jmp (sub_202410).l

sub_20ce36:
	lea dat_20ce64(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20ce42:
	cmp.w (a1)+,d0
	bcs.s loc_20ce4a
	addq.b #$2,d1
	bra.s loc_20ce42
loc_20ce4a:
	cmp.b ($ff1574).l,d1
	bne.s loc_20ce54
	rts
loc_20ce54:
	move.b d1,($ff1574).l
	move.w dat_20ce68(pc,d1.w),d0
	jmp (loc_202442).l
dat_20ce64:
	dc.b $19,$00,$ff,$ff
dat_20ce68:
	dc.b $00,$05,$00,$06
dat_20ce6c:
	dc.b $00,$02,$00,$04

sub_20ce70:
	move.w #$4f2,$2(a0)
	rts
	.incbin 52856, 564
	jsr (sub_20e706).l
	tst.b $24(a0)
	bne.w loc_20d12e
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
	lea dat_20d23e(pc),a1
	lea dat_20d1b6(pc),a2
	move.w #$fe00,d0
	move.l #$ffffc000,d1
	tst.b $28(a0)
	beq.s loc_20d11e
	lea dat_20d332(pc),a1
	lea dat_20d1fa(pc),a2
	move.w #$ff00,d0
	move.l #$ffffc000,d1
loc_20d11e:
	move.l a1,$4(a0)
	move.l a2,$36(a0)
	move.w d0,$34(a0)
	move.l d1,$3c(a0)
loc_20d12e:
	move.l $8(a0),d6
	add.l $3c(a0),d6
	move.l d6,d0
	swap d0
	sub.w $3a(a0),d0
	bpl.s loc_20d142
	neg.w d0
loc_20d142:
	cmpi.w #$40,d0
	ble.s loc_20d166
	neg.l $3c(a0)
	add.l $3c(a0),d6
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	clr.w $32(a0)
	move.w #$ff,$1c(a0)
loc_20d166:
	move.l d6,$8(a0)
	move.w $32(a0),d0
	add.w $34(a0),d0
	move.w d0,$32(a0)
	lsr.w #$8,d0
	jsr (sub_20074a).l
	swap d0
	asr.l #$2,d0
	add.l $2e(a0),d0
	move.l d0,$c(a0)
	movea.l $36(a0),a1
	jsr (sub_205aa4).l
	lea dat_20d41c(pc),a1
	moveq #$0,d0
	move.b $1a(a0),d0
	lsr.b #$1,d0
	move.b $0(a1,d0.w),$20(a0)
	jsr (sub_20389a).l
	move.w $3a(a0),d0
	jmp (sub_2078fa).l
dat_20d1b6:
	.incbin 53686, 68
dat_20d1fa:
	.incbin 53754, 68
dat_20d23e:
	.incbin 53822, 244
dat_20d332:
	.incbin 54066, 234
dat_20d41c:
	dc.b $2f,$30,$30,$00
	move.b $29(a0),d0
	bpl.s loc_20d440
	addq.b #$1,d0
	beq.s loc_20d42e
	bra.w loc_20d66e
loc_20d42e:
	movea.w $3e(a0),a1
	cmpi.b #$22,$0(a1)
	beq.s loc_20d446
loc_20d43a:
	jmp (sub_203946).l
loc_20d440:
	jsr (sub_20e706).l
loc_20d446:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d46a(pc,d0.w),d0
	jsr dat_20d46a(pc,d0.w)
	lea dat_20d6de(pc),a1
	jsr (sub_205aa4).l
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_20d46a:
	dc.b $00,$04,$00,$fc
	move.b #$31,$20(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2e(a0)
	move.w #$8000,$2c(a0)
	move.w #$8000,$30(a0)
	move.w #$200,d0
	move.w #$100,d1
	moveq #$4,d2
	tst.b $28(a0)
	beq.s loc_20d4a6
	move.w #$100,d0
	move.w #$80,d1
	moveq #$0,d2
loc_20d4a6:
	move.w d0,$36(a0)
	move.w d1,$38(a0)
	move.b d2,$1c(a0)
	movea.w a0,a1
	bsr.s sub_20d532
	moveq #$2,d6
	move.w #$1000,d5
	move.w #$800,d4
	tst.b $28(a0)
	beq.s loc_20d4ce
	move.w #$2000,d5
	move.w #$1000,d4
loc_20d4ce:
	moveq #$0,d3
	moveq #$0,d2
	moveq #$0,d1
loc_20d4d4:
	jsr (sub_2078d6).l
	bne.w loc_20d43a
	move.w a0,$3e(a1)
	addq.b #$1,d1
	move.b d1,d0
	add.b $1c(a0),d0
	move.b d0,$1c(a1)
	sub.w d5,d3
	sub.w d4,d2
	move.w d3,$32(a1)
	move.w d2,$34(a1)
	move.b #$ff,$29(a1)
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l $2a(a0),$2a(a1)
	move.l $2e(a0),$2e(a1)
	move.w $36(a0),$36(a1)
	move.w $38(a0),$38(a1)
	bsr.s sub_20d532
	dbf d6,loc_20d4d4
	rts

sub_20d532:
	move.b #$2,$24(a1)
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.b #$c,$17(a1)
	move.b #$c,$19(a1)
	move.b #$8,$16(a1)
	move.w #$23c6,$2(a1)
	move.l #$20dba4,$4(a1)
	rts
	tst.b $28(a0)
	bne.w loc_20d604
	tst.b $29(a0)
	bmi.w loc_20d604
	tst.w $3a(a0)
	beq.s loc_20d584
	subq.w #$1,$3a(a0)
	bra.w loc_20d604
loc_20d584:
	lea ($d000).w,a2
	bsr.w sub_20d646
	bcc.w loc_20d604
	move.w #$f0,$3a(a0)
	jsr (sub_2078c0).l
	bne.s loc_20d604
	move.b #$8,$1c(a1)
	move.b #$fe,$29(a1)
	move.b #$f1,$20(a1)
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	bsr.w sub_20d532
	move.w d5,d1
	move.w d6,d2
	jsr (sub_2009e2).l
	jsr (sub_20074a).l
	swap d1
	swap d0
	asr.l #$7,d1
	asr.l #$7,d0
	move.l d0,$2e(a1)
	move.l d1,$2a(a1)
	bpl.s loc_20d5f4
	bchg.b #$0,$1(a1)
	bchg.b #$0,$22(a1)
loc_20d5f4:
	tst.b $1(a0)
	bpl.s loc_20d604
	move.w #$a0,d0
	jsr (sub_202246).l
loc_20d604:
	move.w $32(a0),d0
	add.w $36(a0),d0
	move.w d0,$32(a0)
	lsr.w #$8,d0
	jsr (sub_20074a).l
	swap d0
	asr.l #$4,d0
	add.l $2a(a0),d0
	move.l d0,$8(a0)
	move.w $34(a0),d0
	add.w $38(a0),d0
	move.w d0,$34(a0)
	lsr.w #$8,d0
	jsr (sub_20074a).l
	swap d1
	asr.l #$2,d1
	add.l $2e(a0),d1
	move.l d1,$c(a0)
	rts

sub_20d646:
	move.w $c(a2),d0
	sub.w $c(a0),d0
	move.w d0,d6
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20d66c
	move.w $8(a2),d0
	sub.w $8(a0),d0
	move.w d0,d5
	subi.w #$ff88,d0
	subi.w #$f0,d0
loc_20d66c:
	rts
loc_20d66e:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.l $2e(a0),d0
	add.l d0,$c(a0)
	tst.b $21(a0)
	beq.s loc_20d6b0
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203946).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	move.b #$1,$25(a0)
	move.w #$9e,d0
	jmp (sub_202246).l
loc_20d6b0:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bpl.s loc_20d6c0
	neg.w d0
loc_20d6c0:
	cmpi.w #$e0,d0
	bgt.w loc_20d43a
	lea dat_20d6de(pc),a1
	jsr (sub_205aa4).l
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_20d6de:
	.incbin 55006, 2462
loc_20e07c:
	movea.l $32(a0),a1
	jsr (sub_205aa4).l
	jsr (sub_20389a).l
	move.w $2a(a0),-(a7)
	jsr (sub_2078f6).l
	movea.w (a7)+,a1
	tst.b (a0)
	beq.s loc_20e0aa
	rts
loc_20e09e:
	move.w $2a(a0),-(a7)
	jsr (sub_203946).l
	movea.w (a7)+,a1
loc_20e0aa:
	lea $32(a1),a2
	cmpa.w (a2),a0
	beq.s loc_20e0b4
	addq.w #$2,a2
loc_20e0b4:
	clr.w (a2)
	rts
	.incbin 57528, 48
	move.w $c(a1),d0
	sub.w $c(a0),d0
	cmpi.w #$a0,d0
	bgt.s loc_20e09e
	bra.s loc_20e07c
	.incbin 57592, 594
	tst.b $24(a0)
	bne.s loc_20e38e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4376,$2(a0)
	move.l #$20e3b0,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e3a4(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e38e:
	lea ($d000).w,a1
	jsr (sub_208eda).l
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_20e3a4:
	.incbin 58276, 106
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e42c(pc,d0.w),d0
	jsr dat_20e42c(pc,d0.w)
	jsr (sub_20389a).l
	move.w $2a(a0),d0
	jmp (sub_2078fa).l
dat_20e42c:
	dc.b $00,$06,$00,$8c,$00,$ba
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20e4f8,$4(a0)
	move.w $8(a0),$2a(a0)
	lea dat_20e536(pc),a1
	moveq #$0,d0
	move.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2e(a0)
	lea dat_20e506(pc),a1
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
	bne.s loc_20e4e4
	addq.b #$2,$24(a0)
	move.w $2e(a0),$30(a0)
	neg.l $32(a0)
	neg.l $36(a0)
	tst.b $1(a0)
loc_20e4e4:
	rts
	subq.w #$1,$30(a0)
	bne.s loc_20e4f6
	subq.b #$2,$24(a0)
	move.w $2c(a0),$30(a0)
loc_20e4f6:
	rts
	dc.b $00,$02,$02,$f0,$0d,$00,$00,$f0
	dc.b $00,$0d,$10,$00,$f0,$00
dat_20e506:
	.incbin 58630, 48
dat_20e536:
	dc.b $00,$3c,$00,$28,$00,$14
	tst.b $29(a0)
	bne.w loc_20e5c4
	tst.b $24(a0)
	bne.s loc_20e586
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$38e,$2(a0)
	move.l #$20e6c4,$4(a0)
	move.b $28(a0),$1a(a0)
	move.w #$96,$2a(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
loc_20e586:
	subq.w #$1,$2a(a0)
	bne.s loc_20e5b8
	move.w #$96,$2a(a0)
	jsr (sub_2078c0).l
	bne.s loc_20e5b8
	move.b $0(a0),$0(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20e5b8:
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
loc_20e5c4:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e5d8(pc,d0.w),d0
	jsr dat_20e5d8(pc,d0.w)
	jmp (sub_20389a).l
dat_20e5d8:
	dc.b $00,$08,$00,$7c,$00,$98,$00,$c4
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$b5,$20(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	move.w #$386,$2(a0)
	move.l #$20e6f8,$4(a0)
	move.w #$20,$2e(a0)
	move.l #$8000,d0
	btst.b #$0,$28(a0)
	seq $3f(a0)
	bne.s loc_20e630
	neg.l d0
loc_20e630:
	move.l d0,$30(a0)
	lea $8(a0),a1
	move.w $8(a0),d0
	cmpi.b #$2,$28(a0)
	bge.s loc_20e64c
	lea $c(a0),a1
	move.w $c(a0),d0
loc_20e64c:
	move.w a1,$2a(a0)
	move.w d0,$2c(a0)
	move.l $30(a0),d0
	movea.w $2a(a0),a1
	add.l d0,(a1)
	subq.w #$1,$2e(a0)
	bne.s loc_20e66e
	addq.b #$2,$24(a0)
	move.w #$1e,$2e(a0)
loc_20e66e:
	rts
	subq.w #$1,$2e(a0)
	bne.s loc_20e69a
	addq.b #$2,$24(a0)
	move.l #$60000,d0
	move.l #$ffffc000,d1
	btst.b #$0,$28(a0)
	bne.s loc_20e692
	neg.l d0
	neg.l d1
loc_20e692:
	move.l d0,$30(a0)
	move.l d1,$34(a0)
loc_20e69a:
	rts
	move.l $34(a0),d0
	add.l d0,$30(a0)
	move.l $30(a0),d0
	movea.w $2a(a0),a1
	add.l d0,(a1)
	move.w (a1),d0
	sub.w $2c(a0),d0
	smi d0
	cmp.b $3f(a0),d0
	beq.s loc_20e6c2
	jmp (sub_203946).l
loc_20e6c2:
	rts
	.incbin 59076, 66

sub_20e706:
	tst.b ($ff156a).l
	beq.s loc_20e74c
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e71e
	tst.b $28(a0)
	beq.s loc_20e74c
loc_20e71e:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203946).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e74a
	move.w #$9e,d0
	jsr (sub_202246).l
loc_20e74a:
	addq.l #$4,a7
loc_20e74c:
	rts

sub_20e74e:
	tst.b $28(a0)
	bmi.s loc_20e77e
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e76e
	tst.b ($ff156d).l
	bne.s loc_20e77e
	addq.l #$4,a7
	jmp (sub_2078f6).l
loc_20e76e:
	tst.b ($ff156a).l
	bne.s loc_20e77e
	addq.l #$4,a7
	jmp (sub_203946).l
loc_20e77e:
	rts
	jsr (sub_20e74e).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e896
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e7a0(pc,d0.w),d0
	jmp dat_20e7a0(pc,d0.w)
dat_20e7a0:
	.incbin 59296, 246
loc_20e896:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e8a4(pc,d0.w),d0
	jmp dat_20e8a4(pc,d0.w)
dat_20e8a4:
	.incbin 59556, 1518
	lea ($d000).w,a1
	jsr (sub_208eda).l
	beq.s loc_20eea4
	jsr (sub_208d8c).l
loc_20eea4:
	rts
	.incbin 61094, 850
	jsr (sub_20e706).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f218(pc,d0.w),d0
	jsr dat_20f218(pc,d0.w)
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
dat_20f218:
	.incbin 61976, 30
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$e,$17(a0)
	move.b #$e,$19(a0)
	move.b #$9,$16(a0)
	move.b #$2c,$20(a0)
	move.w #$245d,d0
	tst.b ($ff152e).l
	bne.s loc_20f26e
	move.w #$23e9,d0
loc_20f26e:
	move.w d0,$2(a0)
	lea dat_20f4e4(pc),a1
	lea dat_20f48a(pc),a2
	tst.b $28(a0)
	beq.s loc_20f288
	lea dat_20f552(pc),a1
	lea dat_20f4b4(pc),a2
loc_20f288:
	move.l a1,$4(a0)
	move.l a2,$2e(a0)
	rts
	addi.l #$10000,$c(a0)
	jsr (sub_2069ca).l
	tst.w d1
	bpl.s loc_20f2ac
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20f2ac:
	rts
	addq.b #$2,$24(a0)
	move.l #$6000,d0
	move.l #$1000,d1
	bra.w loc_20f426
	bsr.w sub_20f43e
	beq.s loc_20f308
	move.w ($d008).w,d0
	sub.w $8(a0),d0
	spl d1
	subi.w #$ff80,d0
	subi.w #$100,d0
	bcc.s loc_20f2fe
	move.w ($d00c).w,d0
	sub.w $c(a0),d0
	subi.w #$ff80,d0
	subi.w #$100,d0
	bcc.s loc_20f2fe
	btst.b #$0,$1(a0)
	sne d0
	eor.b d1,d0
	bne.s loc_20f2fe
	addq.b #$2,$24(a0)
loc_20f2fe:
	movea.l $2e(a0),a1
	jmp (sub_205aa4).l
loc_20f308:
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts
	.incbin 62234, 268
loc_20f426:
	tst.b $28(a0)
	beq.s loc_20f42e
	move.l d1,d0
loc_20f42e:
	btst.b #$0,$1(a0)
	bne.s loc_20f438
	neg.l d0
loc_20f438:
	move.l d0,$2a(a0)
	rts

sub_20f43e:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	moveq #$0,d3
	move.b $17(a0),d3
	lea (dat_206a94).l,a1
	tst.w $2a(a0)
	bpl.s loc_20f460
	neg.w d3
	lea (loc_206c36).l,a1
loc_20f460:
	jsr (a1)
	tst.w d1
	bmi.s loc_20f47e
	jsr (sub_2069ca).l
	move.w d1,d0
	addq.w #$7,d0
	subi.w #$e,d0
	bcc.s loc_20f47e
	add.w d1,$c(a0)
	moveq #$ffffffff,d0
	rts
loc_20f47e:
	move.l $2a(a0),d0
	sub.l d0,$8(a0)
	moveq #$0,d0
	rts
dat_20f48a:
	.incbin 62602, 42
dat_20f4b4:
	.incbin 62644, 48
dat_20f4e4:
	.incbin 62692, 110
dat_20f552:
	.incbin 62802, 148
	tst.b $24(a0)
	bne.s loc_20f610
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20f650,$4(a0)
loc_20f610:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20f630
	lea ($d000).w,a1
	jsr (sub_208eda).l
	sne $2a(a0)
	bra.s loc_20f644
loc_20f630:
	tst.b $2a(a0)
	beq.s loc_20f644
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr (sub_208d8c).l
loc_20f644:
	jsr (sub_20389a).l
	jmp (sub_2078f6).l
	.incbin 63056, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f678(pc,d0.w),d0
	jsr dat_20f678(pc,d0.w)
	move.w $36(a0),d0
	jmp (sub_2078fa).l
dat_20f678:
	dc.b $00,$04,$00,$64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20f86c,$4(a0)
	move.b #$7f,$19(a0)
	move.b #$7f,$16(a0)
	move.w $8(a0),$36(a0)
	move.b $29(a0),d0
	andi.b #$3,d0
	move.b d0,$30(a0)
	move.b #$1,$18(a0)
	move.w #$a4af,$2(a0)
	btst.b #$3,$29(a0)
	beq.s loc_20f6dc
	move.b #$3,$18(a0)
	move.w #$24af,$2(a0)
	cmpi.b #$1,($ff152e).l
	beq.s loc_20f6dc
	addi.w #$2000,$2(a0)
loc_20f6dc:
	move.w ($f704).w,d0
	addi.w #$70,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20f72a(pc,d0.w),d0
	jsr dat_20f72a(pc,d0.w)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	btst.b #$2,$29(a0)
	beq.s loc_20f718
	cmp.b $30(a0),d0
	bne.s loc_20f716
	jsr (sub_20389a).l
loc_20f716:
	rts
loc_20f718:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20f728
	jsr (sub_20389a).l
loc_20f728:
	rts
dat_20f72a:
	.incbin 63274, 76
loc_20f776:
	tst.b $3a(a0)
	bne.s loc_20f7bc
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
	beq.s loc_20f7bc
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20f7bc:
	subq.b #$1,$3a(a0)
	bne.s loc_20f7d4
	addq.b #$1,$3c(a0)
	move.b $3c(a0),d0
	cmp.b $3d(a0),d0
	bcs.s loc_20f7d4
	clr.b $3c(a0)
loc_20f7d4:
	rts
	lea dat_20f7e4(pc),a2
	move.b #$8,$3d(a0)
	bra.w loc_20f776
dat_20f7e4:
	.incbin 63460, 32
	lea dat_20f812(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20f776
dat_20f812:
	.incbin 63506, 16
	lea dat_20f830(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20f776
dat_20f830:
	.incbin 63536, 16
	move.b $28(a0),d0
	subq.b #$4,d0
	bcc.s loc_20f84a
	moveq #$0,d0
loc_20f84a:
	move.b d0,$1a(a0)
	rts
	move.b $28(a0),d0
	subq.b #$6,d0
	bcc.s loc_20f85a
	moveq #$0,d0
loc_20f85a:
	move.b d0,$1a(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	rts
	.incbin 63596, 154

sub_20f906:
	jmp (loc_206318).l
dat_20f90c:
	.incbin 63756, 16
dat_20f91c:
	.incbin 63772, 1286
	moveq #$0,d0
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
loc_20fe48:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fe48
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
	.incbin 65126, 26
	subq.b #$1,(a2)
	bpl.w loc_20feb8
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fe96
	moveq #$0,d0
loc_20fe96:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fea6:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fea6
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20feb8:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
	.incbin 65220, 65852
dat_220000:
	.incbin 131072, 59564
dat_22e8ac:
	.incbin 190636, 18064
dat_232f3c:
	.incbin 208700, 384
dat_2330bc:
	.incbin 209084, 4840
dat_2343a4:
	.incbin 213924, 256
dat_2344a4:
	.incbin 214180, 4096
dat_2354a4:
	.incbin 218276, 5120
dat_2368a4:
	.incbin 223396, 19150
dat_23b372:
	.incbin 242546, 19598
