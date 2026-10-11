; R83C__.MMD
; disassembled from the disc; code only, data comes from data/R83C__.MMD at build time
	.file "R83C__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18,$4e,$f9
	dc.b $00,$20,$21,$bc
	jmp (loc_201d32).l
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
	bsr.w sub_202268
	bsr.w sub_202210
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_2015ac

sub_200184:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200212).l,a1
	lea (dat_20021a).l,a2
	bsr.w sub_2001d4
	lea (dat_200220).l,a1
	lea (dat_200228).l,a2
	bsr.w sub_2001d4
	lea (dat_20022e).l,a1
	lea (dat_200236).l,a2
	bsr.s sub_2001d4
	tst.b ($ff1507).l
	bne.s loc_2001d2
	lea (dat_20023c).l,a1
	lea (dat_20024a).l,a2
	bra.w sub_2001d4
loc_2001d2:
	rts

sub_2001d4:
	subq.b #$1,(a5)
	bpl.s loc_200208
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
	bcs.s loc_2001f4
	moveq #$0,d0
loc_2001f4:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_200208:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200212:
	dc.b $26,$03,$04,$02,$04,$01,$04,$00
dat_20021a:
	dc.b $0e,$e6,$0c,$a0,$0a,$60
dat_200220:
	dc.b $27,$03,$04,$02,$04,$01,$04,$00
dat_200228:
	dc.b $0c,$a0,$0a,$60,$0e,$e6
dat_20022e:
	dc.b $28,$03,$04,$02,$04,$01,$04,$00
dat_200236:
	dc.b $0a,$60,$0e,$e6,$0c,$a0
dat_20023c:
	dc.b $31,$06,$02,$00,$02,$01,$02,$16
	dc.b $00,$02,$01,$42,$02,$00
dat_20024a:
	.incbin 586, 132

sub_2002ce:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_2002e0:
	move.w d1,(a0)+
	dbf d0,loc_2002e0
	move.w #$15,d4
loc_2002ea:
	move.b #$12,($f62a).w
	bsr.w sub_2008f0
	bsr.s sub_200300
	bsr.w sub_20262e
	dbf d4,loc_2002ea
	rts

sub_200300:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200316:
	bsr.s sub_200344
	dbf d0,loc_200316
	cmpi.b #$1,($ff1506).l
	bne.s loc_200342
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20033c:
	bsr.s sub_200344
	dbf d0,loc_20033c
loc_200342:
	rts

sub_200344:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_20036c
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_20035a
	move.w d1,(a0)+
	rts
loc_20035a:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_200368
	move.w d1,(a0)+
	rts
loc_200368:
	addq.w #$2,(a0)+
	rts
loc_20036c:
	addq.w #$2,a0
	rts
	.incbin 880, 32

sub_200390:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_20039a:
	move.b #$12,($f62a).w
	bsr.w sub_2008f0
	bsr.s sub_2003b0
	bsr.w sub_20262e
	dbf d4,loc_20039a
	rts

sub_2003b0:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003c0:
	bsr.s sub_2003de
	dbf d0,loc_2003c0
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2003d6:
	bsr.s sub_2003de
	dbf d0,loc_2003d6
	rts

sub_2003de:
	move.w (a0),d2
	beq.s loc_20040a
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_2003ee
	subq.w #$2,(a0)+
	rts
loc_2003ee:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_2003fc
	subi.w #$20,(a0)+
	rts
loc_2003fc:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_20040a
	subi.w #$200,(a0)+
	rts
loc_20040a:
	addq.w #$2,a0
	rts

sub_20040e:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200428:
	move.w d1,(a0)+
	dbf d0,loc_200428
	move.w #$15,d4
loc_200432:
	move.b #$12,($f62a).w
	bsr.w sub_2008f0
	bsr.s sub_200448
	bsr.w sub_20262e
	dbf d4,loc_200432
	rts

sub_200448:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_20045e:
	bsr.s sub_20048c
	dbf d0,loc_20045e
	cmpi.b #$1,($ff1506).l
	bne.s loc_20048a
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_200484:
	bsr.s sub_20048c
	dbf d0,loc_200484
loc_20048a:
	rts

sub_20048c:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2004b8
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_2004a4
	cmp.w d2,d1
	bcs.s loc_2004a4
	move.w d1,(a0)+
	rts
loc_2004a4:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_2004b4
	cmp.w d2,d1
	bcs.s loc_2004b4
	move.w d1,(a0)+
	rts
loc_2004b4:
	subq.w #$2,(a0)+
	rts
loc_2004b8:
	addq.w #$2,a0
	rts

sub_2004bc:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_2004c6:
	move.b #$12,($f62a).w
	bsr.w sub_2008f0
	bsr.s sub_2004dc
	bsr.w sub_20262e
	dbf d4,loc_2004c6
	rts

sub_2004dc:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_2004ec:
	bsr.s sub_20050a
	dbf d0,loc_2004ec
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200502:
	bsr.s sub_20050a
	dbf d0,loc_200502
	rts

sub_20050a:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_200546
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200522
	addq.w #$2,(a0)+
	rts
loc_200522:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_200534
	addi.w #$20,(a0)+
	rts
loc_200534:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_200546
	addi.w #$200,(a0)+
	rts
loc_200546:
	addq.w #$2,a0
	rts

sub_20054a:
	lea (dat_2005b6).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_20055e:
	move.l (a2)+,(a3)+
	dbf d7,loc_20055e
	rts

sub_200566:
	lea (dat_2005b6).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_200576:
	move.l (a2)+,(a3)+
	dbf d7,loc_200576
	rts
	.incbin 1406, 56
dat_2005b6:
	.incbin 1462, 826

sub_2008f0:
	move.w #$2300,sr
loc_2008f4:
	tst.b ($f62a).w
	bne.s loc_2008f4
	rts

sub_2008fc:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_200914(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_200914(pc,d0.w),d0
	rts
dat_200914:
	.incbin 2324, 640

sub_200b94:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200bf0
	move.w d2,d4
	tst.w d3
	bpl.w loc_200bae
	neg.w d3
loc_200bae:
	tst.w d4
	bpl.w loc_200bb6
	neg.w d4
loc_200bb6:
	cmp.w d3,d4
	bcc.w loc_200bc8
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200bfa(pc,d4.w),d0
	bra.s loc_200bd2
loc_200bc8:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200bfa(pc,d3.w),d0
loc_200bd2:
	tst.w d1
	bpl.w loc_200bde
	neg.w d0
	addi.w #$80,d0
loc_200bde:
	tst.w d2
	bpl.w loc_200bea
	neg.w d0
	addi.w #$100,d0
loc_200bea:
	movem.l (a7)+,d3-d4
	rts
loc_200bf0:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200bfa:
	.incbin 3066, 258

sub_200cfc:
	btst.b #$3,$22(a0)
	beq.s loc_200d10
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200d10:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200d32
	move.b $26(a0),d0
	bpl.s loc_200d2c
	subq.b #$1,d0
loc_200d2c:
	addi.b #$20,d0
	bra.s loc_200d3e
loc_200d32:
	move.b $26(a0),d0
	bpl.s loc_200d3a
	addq.b #$1,d0
loc_200d3a:
	addi.b #$1f,d0
loc_200d3e:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200fc8
	cmpi.b #$80,d0
	beq.w loc_200f26
	cmpi.b #$c0,d0
	beq.w loc_200e8a
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
	bsr.w sub_201252
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
	bsr.w sub_201252
	move.w (a7)+,d0
	bsr.w sub_200e5e
	tst.w d1
	beq.s loc_200dcc
	bpl.s loc_200dce
	cmpi.w #$fff2,d1
	blt.s loc_200df4
	add.w d1,$c(a0)
loc_200dcc:
	rts
loc_200dce:
	cmpi.w #$e,d1
	bgt.s loc_200dda
loc_200dd4:
	add.w d1,$c(a0)
	rts
loc_200dda:
	tst.b $38(a0)
	bne.s loc_200dd4
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200df4:
	rts
	.incbin 3574, 34
loc_200e18:
	rts
	.incbin 3610, 68

sub_200e5e:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200e6c
	move.b ($f768).w,d2
	move.w d0,d1
loc_200e6c:
	btst.l #$0,d2
	bne.s loc_200e78
	move.b d2,$26(a0)
	rts
loc_200e78:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200e8a:
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
	bsr.w sub_2013c2
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
	bsr.w sub_2013c2
	move.w (a7)+,d0
	bsr.w sub_200e5e
	tst.w d1
	beq.s loc_200efe
	bpl.s loc_200f00
	cmpi.w #$fff2,d1
	blt.w loc_200e18
	add.w d1,$8(a0)
loc_200efe:
	rts
loc_200f00:
	cmpi.w #$e,d1
	bgt.s loc_200f0c
loc_200f06:
	add.w d1,$8(a0)
	rts
loc_200f0c:
	tst.b $38(a0)
	bne.s loc_200f06
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200f26:
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
	bsr.w sub_201252
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
	bsr.w sub_201252
	move.w (a7)+,d0
	bsr.w sub_200e5e
	tst.w d1
	beq.s loc_200fa0
	bpl.s loc_200fa2
	cmpi.w #$fff2,d1
	blt.w loc_200df4
	sub.w d1,$c(a0)
loc_200fa0:
	rts
loc_200fa2:
	cmpi.w #$e,d1
	bgt.s loc_200fae
loc_200fa8:
	sub.w d1,$c(a0)
	rts
loc_200fae:
	tst.b $38(a0)
	bne.s loc_200fa8
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200fc8:
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
	bsr.w sub_2013c2
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
	bsr.w sub_2013c2
	move.w (a7)+,d0
	bsr.w sub_200e5e
	tst.w d1
	beq.s loc_201042
	bpl.s loc_201044
	cmpi.w #$fff2,d1
	blt.w loc_200e18
	sub.w d1,$8(a0)
loc_201042:
	rts
loc_201044:
	cmpi.w #$e,d1
	bgt.s loc_201050
loc_20104a:
	sub.w d1,$8(a0)
	rts
loc_201050:
	tst.b $38(a0)
	bne.s loc_20104a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_20106a:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_201080
	andi.w #$380,d0
loc_201080:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_2010e0
	bmi.s loc_2010e4
	cmpi.b #$5,($ff1506).l
	beq.s loc_2010b0
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010b6
loc_2010b0:
	andi.w #$7fff,$2(a0)
loc_2010b6:
	cmpi.b #$4,($ff1506).l
	bne.s loc_2010c6
	bclr.b #$6,$1(a0)
loc_2010c6:
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
loc_2010e0:
	movea.l d1,a1
	rts
loc_2010e4:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_20114c
	btst.b #$6,$1(a0)
	bne.s loc_201112
	cmpi.b #$14,d1
	bne.w loc_201236
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_201236
loc_201112:
	cmpi.b #$15,d1
	bne.s loc_201120
	move.w #$60,d1
	bra.w loc_201236
loc_201120:
	cmpi.b #$1e,d1
	bne.s loc_20112e
	move.w #$61,d1
	bra.w loc_201236
loc_20112e:
	cmpi.b #$1f,d1
	bne.s loc_20113c
	move.w #$62,d1
	bra.w loc_201236
loc_20113c:
	cmpi.b #$32,d1
	bne.w loc_201236
	move.w #$63,d1
	bra.w loc_201236
loc_20114c:
	cmpi.b #$5,($ff1506).l
	bne.w loc_2011b2
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_20119c
	cmpi.b #$6,d1
	beq.s loc_20119c
	tst.b ($ff1956).l
	beq.w loc_201236
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_2011ac
	cmpi.b #$3c,d1
	beq.s loc_2011ac
	cmpi.b #$37,d1
	beq.s loc_2011ac
	cmpi.b #$2f,d1
	beq.s loc_2011ac
	cmpi.b #$16,d1
	beq.s loc_2011ac
	bra.w loc_201236
loc_20119c:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_201236
loc_2011ac:
	addq.b #$1,d1
	bra.w loc_201236
loc_2011b2:
	cmpi.b #$6,($ff1506).l
	bne.s loc_201222
	cmpi.b #$3,$0(a0)
	bcc.w loc_201236
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_201236
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_2011e6
	move.w #$6a,d1
	bra.s loc_201236
loc_2011e6:
	cmpi.b #$48,d1
	bne.s loc_2011f2
	move.w #$6b,d1
	bra.s loc_201236
loc_2011f2:
	cmpi.b #$4a,d1
	bne.s loc_2011fe
	move.w #$6c,d1
	bra.s loc_201236
loc_2011fe:
	cmpi.b #$10,d1
	bne.s loc_20120a
	move.w #$6d,d1
	bra.s loc_201236
loc_20120a:
	cmpi.b #$63,d1
	bne.s loc_201216
	move.w #$6e,d1
	bra.s loc_201236
loc_201216:
	cmpi.b #$43,d1
	bne.s loc_201236
	move.w #$6f,d1
	bra.s loc_201236
loc_201222:
	btst.b #$6,$1(a0)
	beq.s loc_201236
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_201236
	move.w #$51,d1
loc_201236:
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

sub_201252:
	bsr.w sub_20106a
	cmpi.l #$210000,d1
	beq.s loc_20126c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20126c
	btst.l d5,d4
	bne.s loc_20127a
loc_20126c:
	add.w a3,d2
	bsr.w sub_201312
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_20127a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20126c
	lea (dat_237326).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2012a0
	not.w d1
	neg.b (a4)
loc_2012a0:
	btst.l #$c,d4
	beq.s loc_2012b0
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012b0:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_237426).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_2012cc
	neg.w d0
loc_2012cc:
	tst.w d0
	beq.s loc_20126c
	bmi.s loc_2012e8
	cmpi.b #$10,d0
	beq.s loc_201304
loc_2012d8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012e8:
	cmpa.w #$10,a3
	bne.s loc_2012f8
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_2012d8
loc_2012f8:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20126c
loc_201304:
	sub.w a3,d2
	bsr.w sub_201312
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_201312:
	bsr.w sub_20106a
	cmpi.l #$210000,d1
	beq.s loc_20132c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20132c
	btst.l d5,d4
	bne.s loc_20133a
loc_20132c:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20133a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20132c
	lea (dat_237326).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201360
	not.w d1
	neg.b (a4)
loc_201360:
	btst.l #$c,d4
	beq.s loc_201370
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201370:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_237426).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_20138c
	neg.w d0
loc_20138c:
	tst.w d0
	beq.s loc_20132c
	bmi.s loc_2013a2
loc_201392:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2013a2:
	cmpa.w #$10,a3
	bne.s loc_2013b2
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201392
loc_2013b2:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20132c
	not.w d1
	rts

sub_2013c2:
	bsr.w sub_20106a
	cmpi.l #$210000,d1
	beq.s loc_2013dc
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2013dc
	btst.l d5,d4
	bne.s loc_2013ea
loc_2013dc:
	add.w a3,d3
	bsr.w sub_201472
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_2013ea:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2013dc
	lea (dat_237326).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_201418
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201418:
	btst.l #$b,d4
	beq.s loc_201420
	neg.b (a4)
loc_201420:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_238426).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_20143c
	neg.w d0
loc_20143c:
	tst.w d0
	beq.s loc_2013dc
	bmi.s loc_201458
	cmpi.b #$10,d0
	beq.s loc_201464
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201458:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2013dc
loc_201464:
	sub.w a3,d3
	bsr.w sub_201472
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201472:
	bsr.w sub_20106a
	cmpi.l #$210000,d1
	beq.s loc_20148c
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_20148c
	btst.l d5,d4
	bne.s loc_20149a
loc_20148c:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_20149a:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_20148c
	lea (dat_237326).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2014c8
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2014c8:
	btst.l #$b,d4
	beq.s loc_2014d0
	neg.b (a4)
loc_2014d0:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_238426).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2014ec
	neg.w d0
loc_2014ec:
	tst.w d0
	beq.s loc_20148c
	bmi.s loc_201502
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201502:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_20148c
	not.w d1
	rts

sub_201512:
	rts
	.incbin 5396, 152
loc_2015ac:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_2015cc
	tst.b ($ff0f01).l
	bne.s loc_2015cc
	move.b #$1,($ff156a).l
loc_2015cc:
	move.b #$0,($ff1957).l
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	bset.b #$0,($ff151c).l
	bne.s loc_201632
	clr.b ($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207330
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_201632
	move.b #$1,($ff1508).l
loc_201632:
	bset.b #$7,($f600).w
	bsr.w sub_202620
	tst.b ($ff156e).l
	bne.s loc_201658
	btst.b #$7,($ff152e).l
	beq.s loc_20168e
	bset.b #$0,($ff151d).l
	beq.s loc_201664
loc_201658:
	bsr.w sub_2004bc
	bclr.b #$0,($ff151d).l
loc_201664:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_2016fe
	move.w #$0,($ff1502).l
	cmpi.b #$2,($ff1507).l
	bne.s loc_20168c
	bclr.b #$7,($ff152e).l
loc_20168c:
	rts
loc_20168e:
	bset.b #$0,($ff151d).l
	beq.s loc_20169c
	bsr.w sub_200390
loc_20169c:
	cmpi.w #$2,($ff1502).l
	bne.s loc_2016b8
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_2016e0
loc_2016b8:
	tst.b ($ff1508).l
	bne.s loc_2016fe
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_2016e0:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2016e8:
	move.l #$0,(a1)+
	dbf d6,loc_2016e8
	move.b #$c,($f62a).w
	bsr.w sub_2008f0
	rts
loc_2016fe:
	cmpi.w #$800,($f78e).w
	bne.s loc_20171c
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20171c:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_201732
	btst.b #$7,($ff152e).l
	beq.s loc_201738
loc_201732:
	move.l #$eee0eee,d0
loc_201738:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201740:
	move.l d0,(a1)+
	dbf d6,loc_201740
loc_201746:
	move.b #$c,($f62a).w
	bsr.w sub_2008f0
	bsr.w sub_20262e
	bne.s loc_201746
	tst.l ($f680).w
	bsr.w sub_201bec
	moveq #$0,d0
	lea (dat_20fbee).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_201770
	bsr.w sub_202734
loc_201770:
	moveq #$1,d0
	bsr.w sub_202734
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20178c:
	move.l d0,(a1)+
	dbf d1,loc_20178c
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20179e:
	move.l d0,(a1)+
	dbf d1,loc_20179e
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_2017ae:
	move.l d0,(a1)+
	dbf d1,loc_2017ae
	lea ($ff4000).l,a1
	moveq #$0,d0
	move.w #$3ff,d1
loc_2017c0:
	move.l d0,(a1)+
	dbf d1,loc_2017c0
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_2017d0:
	move.l d0,(a1)+
	dbf d1,loc_2017d0
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_2017e0:
	move.l d0,(a1)+
	dbf d1,loc_2017e0
	move.w #$2700,sr
	move.l #$216c00,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20230a
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
	bsr.w sub_200566
	moveq #$3,d0
	bsr.w sub_20054a
	bsr.w sub_202996
	bsr.w sub_202aee
	bset.b #$2,($f754).w
	bsr.w sub_20350c
	bsr.w sub_203422
	jsr (sub_201512).l
	bsr.w sub_201b26
loc_201860:
	move.b #$c,($f62a).w
	bsr.w sub_2008f0
	bsr.w sub_20262e
	bne.s loc_201860
	tst.l ($f680).w
	bne.s loc_201860
	bsr.w sub_201ab2
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201c4c
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_2018c4
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_2018c4:
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	move.b #$0,($ff156c).l
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_201906
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_201906:
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
	jsr (sub_20fa6e).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_201996
loc_201990:
	bsr.w sub_20040e
	bra.s loc_2019a4
loc_201996:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201990
	bsr.w sub_2002ce
loc_2019a4:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_2019b2:
	move.b #$8,($f62a).w
	bsr.w sub_2008f0
	tst.b ($f7cc).w
	bne.s loc_2019d0
	btst.b #$7,($f605).w
	beq.s loc_2019d0
	eori.b #$1,($f63a).w
loc_2019d0:
	btst.b #$0,($f63a).w
	beq.w loc_201a42
	bsr.w sub_201cb0
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_201a20
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_2019b2
	subq.b #$1,($ff1508).l
	bpl.s loc_201a02
	clr.b ($ff1508).l
loc_201a02:
	move.w #$e,d0
	jsr (sub_205904).l
	bsr.w sub_207330
	clr.b ($ff1522).l
	move.w #$1,($ff1502).l
	bra.s loc_201a2e
loc_201a20:
	andi.b #$70,d0
	beq.w loc_2019b2
	clr.b ($ff1508).l
loc_201a2e:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_2015ac
loc_201a42:
	bsr.w sub_201cf6
	addq.w #$1,($ff1504).l
	jsr (sub_207346).l
	jsr (sub_20363e).l
	cmpi.w #$800,($f78e).w
	beq.w loc_2015ac
	tst.w ($ff1502).l
	bne.w loc_2015ac
	tst.w ($ff1906).l
	bne.s loc_201a8a
	cmpi.b #$6,($d024).w
	bcs.s loc_201a8a
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_201a8e
loc_201a8a:
	bsr.w sub_202aee
loc_201a8e:
	jsr (sub_2037e8).l
	tst.w ($ff190e).l
	bne.s loc_201aa0
	bsr.w sub_200184
loc_201aa0:
	jsr (sub_20d940).l
	bsr.w sub_20262e
	bsr.w sub_201b58
	bra.w loc_2019b2

sub_201ab2:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_201aca
	move.w #$78,$30(a1)
loc_201aca:
	rts
	.incbin 6860, 90

sub_201b26:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	lsl.w #$2,d0
	move.l dat_201b38(pc,d0.w),($f796).w
	rts
dat_201b38:
	.incbin 6968, 32

sub_201b58:
	subq.b #$1,($ff1910).l
	bpl.s loc_201b76
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_201b76:
	subq.b #$1,($ff1912).l
	bpl.s loc_201b94
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_201b94:
	subq.b #$1,($ff1914).l
	bpl.s loc_201bbc
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201bbc
	move.b #$0,($ff1915).l
loc_201bbc:
	tst.b ($ff1916).l
	beq.s loc_201bea
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201bea:
	rts

sub_201bec:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201c0e
	cmpi.b #$2,d0
	bne.s loc_201c0e
	add.b ($ff156a).l,d0
loc_201c0e:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201c26(pc,d1.w),d0
	jmp (sub_205904).l
dat_201c26:
	.incbin 7206, 38

sub_201c4c:
	move.l #$74200002,d0
	moveq #$0,d2
	move.b ($ff152e).l,d2
	bclr.l #$7,d2
	lsl.w #$7,d2
	move.l d0,$4(a6)
	lea (dat_2338b4).l,a1
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

sub_201cb0:
	move.w #$ab,d0
	jsr (sub_2023f8).l
	bset.b #$7,($f63a).w
	bne.s loc_201cf4
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201cda
loc_201cd0:
	move.w #$d5,d0
	jmp (sub_205904).l
loc_201cda:
	tst.b ($ff151f).l
	bne.s loc_201cd0
	tst.b ($ff1520).l
	bne.s loc_201cd0
	move.w #$90,d0
	jmp (sub_205904).l
loc_201cf4:
	rts

sub_201cf6:
	bclr.b #$7,($f63a).w
	beq.s loc_201d30
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201d16
loc_201d0c:
	move.w #$d6,d0
	jmp (sub_205904).l
loc_201d16:
	tst.b ($ff151f).l
	bne.s loc_201d0c
	tst.b ($ff1520).l
	bne.s loc_201d0c
	move.w #$91,d0
	jmp (sub_205904).l
loc_201d30:
	rts
loc_201d32:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201dbe
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201d6e
	move.w #$700,d0
loc_201d6a:
	dbf d0,loc_201d6a
loc_201d6e:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201da4(pc,d0.w),d0
	jsr dat_201da4(pc,d0.w)
loc_201d84:
	jsr (sub_20241c).l
	tst.b ($f63a).w
	bne.s loc_201d98
	bsr.w sub_2021d0
	bsr.w sub_2021be
loc_201d98:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201da4:
	.incbin 7588, 26
loc_201dbe:
	tst.b ($ff1957).l
	beq.w loc_201d84
	cmpi.b #$2,($ff1506).l
	bne.w loc_201d84
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201dec
	move.w #$700,d0
loc_201de8:
	dbf d0,loc_201de8
loc_201dec:
	move.w #$1,($f6fc).w
	jsr (sub_202390).l
	tst.b ($f64e).w
	bne.s loc_201e24
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201e48
loc_201e24:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201e48:
	move.w ($f624).w,(a5)
	jsr (sub_2023ac).l
	bra.w loc_201d84
	.incbin 7766, 60
	jsr (sub_202390).l
	bsr.w sub_20222c
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
	bsr.w sub_205826
	tst.b ($f767).w
	beq.s loc_201f40
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_201f40:
	jsr (sub_20fa6e).l
	jsr (sub_2023ac).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20301a
	bsr.w sub_2026a0
	jmp (loc_20954c).l
	dc.b $4e,$75
	jsr (sub_202390).l
	bsr.w sub_20222c
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
	jsr (sub_2023ac).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_20301a
	bra.w loc_202684
	.incbin 8216, 16
	bsr.w sub_202114
	cmpi.b #$1,($ff1903).l
	bne.s loc_20204a
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_20204a:
	move.w ($f624).w,(a5)
	bra.w loc_202684
	.incbin 8274, 46
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
	jsr (sub_2023ac).l
	lea ($d000).w,a0
	bsr.w sub_205826
	tst.b ($f767).w
	beq.s loc_202106
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_202106:
	tst.w ($f614).w
	beq.w loc_202112
	subq.w #$1,($f614).w
loc_202112:
	rts

sub_202114:
	jsr (sub_202390).l
	bsr.w sub_20222c
	tst.b ($f64e).w
	bne.s loc_20214a
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20216e
loc_20214a:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20216e:
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
	jmp (sub_2023ac).l
	dc.b $4e,$73

sub_2021be:
	tst.b ($d02a).w
	bne.s loc_2021ce
	tst.w ($f786).w
	beq.s loc_2021ce
	addq.w #$1,($f786).w
loc_2021ce:
	rts

sub_2021d0:
	tst.w ($f780).w
	beq.s loc_2021da
	addq.w #$1,($f780).w
loc_2021da:
	tst.w ($f782).w
	beq.s loc_2021e4
	addq.w #$1,($f782).w
loc_2021e4:
	rts
	.incbin 8678, 42

sub_202210:
	bsr.w sub_202390
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2023ac

sub_20222c:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20223a
	addq.w #$2,a1

sub_20223a:
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

sub_202268:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_2022e4).l,a2
	moveq #$12,d7
loc_20227c:
	move.w (a2)+,(a0)
	dbf d7,loc_20227c
	move.w (dat_2022e6).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2022a2:
	move.w d0,(a1)
	dbf d7,loc_2022a2
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_2022d4:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_2022d4
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_2022e4:
	dc.b $80,$04
dat_2022e6:
	.incbin 8934, 36

sub_20230a:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20232c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20232c
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20235a:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20235a
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_202378:
	move.l d0,(a1)+
	dbf d1,loc_202378
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_202388:
	move.l d0,(a1)+
	dbf d1,loc_202388
	rts

sub_202390:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2023a0:
	btst.b #$0,($a11100).l
	bne.s loc_2023a0
	rts

sub_2023ac:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9146, 62

sub_2023f8:
	tst.b ($f00a).w
	bne.s loc_202404
	move.b d0,($f00a).w
	rts
loc_202404:
	tst.b ($f00b).w
	bne.s loc_202410
	move.b d0,($f00b).w
	rts
loc_202410:
	tst.b ($f00c).w
	bne.s loc_20241a
	move.b d0,($f00c).w
loc_20241a:
	rts

sub_20241c:
	jsr (sub_202390).l
	tst.b ($f00a).w
	beq.s loc_202436
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202436:
	tst.b ($f00b).w
	beq.s loc_20244a
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20244a:
	tst.b ($f00c).w
	beq.s loc_20245e
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_20245e:
	bra.w sub_2023ac
	.incbin 9314, 32

sub_202482:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202544).l,a3
	lea ($c00000).l,a4
	bra.s loc_20249e

sub_202494:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20255a).l,a3
loc_20249e:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2024ac
	adda.w #$a,a3
loc_2024ac:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_202570
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2024cc
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2024cc:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_202518
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_2024f4
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_2024f4:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202502:
	lsr.w #$4,d0
loc_202504:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202512
	jmp (a3)

sub_20250e:
	moveq #$0,d4
	moveq #$8,d3
loc_202512:
	dbf d0,loc_202504
	bra.s sub_2024cc
loc_202518:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202526
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202526:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202502
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202502
loc_202544:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20250e
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20250e
	rts
dat_20255a:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_20250e
	rts

sub_202570:
	move.b (a0)+,d0
loc_202572:
	cmpi.b #$ff,d0
	bne.s loc_20257a
	rts
loc_20257a:
	move.w d0,d7
loc_20257c:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_202572
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
	bne.s loc_2025aa
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_20257c
loc_2025aa:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2025b6:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2025b6
	bra.s loc_20257c

sub_2025c2:
	movem.l a1-a2,-(a7)
	lea (dat_20fbfe).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_2025da:
	tst.l (a2)
	beq.s loc_2025e2
	addq.w #$6,a2
	bra.s loc_2025da
loc_2025e2:
	move.w (a1)+,d0
	bmi.s loc_2025ee
loc_2025e6:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_2025e6
loc_2025ee:
	movem.l (a7)+,a1-a2
	rts
	.incbin 9716, 44

sub_202620:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202626:
	clr.l (a2)+
	dbf d0,loc_202626
	rts

sub_20262e:
	tst.l ($f680).w
	beq.s loc_202682
	tst.w ($f6f8).w
	bne.s loc_202682
	movea.l ($f680).w,a0
	lea (loc_202544).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202650
	adda.w #$a,a3
loc_202650:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_202570
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
loc_202682:
	rts
loc_202684:
	tst.w ($f6f8).w
	beq.w loc_202722
loc_20268c:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2026be

sub_2026a0:
	tst.w ($f6f8).w
	beq.s loc_202722
	tst.b ($f744).w
	bne.s loc_20268c
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2026be:
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
loc_2026f2:
	movea.w #$8,a5
	bsr.w sub_20250e
	subq.w #$1,($f6f8).w
	beq.s loc_202724
	subq.w #$1,($f6fa).w
	bne.s loc_2026f2
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202722:
	rts
loc_202724:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20272a:
	move.l $6(a0),(a0)+
	dbf d0,loc_20272a
	rts

sub_202734:
	lea (dat_20fbfe).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202746:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_202482
	dbf d1,loc_202746
	rts
	.incbin 10086, 560

sub_202996:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_2029f2).l,a0
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
	bra.w loc_202a1e
dat_2029f2:
	dc.b $00,$04,$00,$00,$0e,$97,$00,$00
	dc.b $03,$10,$00,$60
dat_2029fe:
	.incbin 10750, 32
loc_202a1e:
	tst.b ($ff1522).l
	beq.s loc_202a3e
	jsr (sub_2065b4).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bpl.s loc_202a3c
	moveq #$0,d0
loc_202a3c:
	bra.s loc_202a7a
loc_202a3e:
	lea (dat_202ab6).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202a60
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_2029fe).l,a1
	adda.w d0,a1
	bra.s loc_202a6a
loc_202a60:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202a6a:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202a7a:
	subi.w #$a0,d1
	bcc.s loc_202a82
	moveq #$0,d1
loc_202a82:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202a8c
	move.w d2,d1
loc_202a8c:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202a98
	moveq #$0,d0
loc_202a98:
	cmp.w ($f72e).w,d0
	blt.s loc_202aa2
	move.w ($f72e).w,d0
loc_202aa2:
	move.w d0,($f704).w
	bsr.w sub_202abe
	lea (dat_202aba).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202ab6:
	dc.b $00,$30,$02,$4c
dat_202aba:
	dc.b $7f,$7f,$7f,$7f

sub_202abe:
	swap d0
	lsr.l #$3,d0
	move.l d0,($f70c).w
	swap d0
	move.w d0,($f714).w
	move.w d0,($f71c).w
	lsr.l #$1,d1
	move.w d1,($f710).w
	move.w d1,($f718).w
	addi.w #$70,($f718).w
	lsr.l #$2,d1
	move.l d1,d2
	add.l d2,d2
	add.l d2,d1
	move.w d1,($f708).w
	rts

sub_202aee:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202afa
	rts
loc_202afa:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202c90
	bsr.w sub_202d30
	bsr.w sub_2035a6
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$6,d6
	bsr.w sub_202fba
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202f86
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202f52
	move.l ($f704).w,d0
	lsr.l #$3,d0
	swap d0
	bsr.w sub_202f22
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
	bsr.w sub_202c04
	move.w ($f718).w,d0
	neg.w d0
	moveq #$11,d6
loc_202ba0:
	move.w d0,(a1)+
	dbf d6,loc_202ba0
	bsr.w sub_202bd4
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202c4e
dat_202bc8:
	dc.b $03,$03,$03,$01,$01,$00
dat_202bce:
	dc.b $01,$03,$01,$03,$01,$00

sub_202bd4:
	move.w ($f718).w,d0
	move.w ($f700).w,d2
	moveq #$5,d6
	bsr.w sub_202c3c
	move.w ($f718).w,d3
	moveq #$4,d6
loc_202be8:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202bc8(pc,d6.w),d5
loc_202bf2:
	move.w d0,(a1)+
	dbf d5,loc_202bf2
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202be8
	rts

sub_202c04:
	move.w ($f708).w,d0
	move.w ($f700).w,d2
	moveq #$5,d6
	bsr.w sub_202c3c
	move.w ($f708).w,d3
	moveq #$4,d6
	adda.w #$1c,a1
loc_202c1c:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202bce(pc,d6.w),d5
loc_202c26:
	move.w d0,-(a1)
	dbf d5,loc_202c26
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202c1c
	adda.w #$1c,a1
	rts

sub_202c3c:
	sub.w d0,d2
	ext.l d2
	moveq #$6,d1
	asl.l d1,d2
	divu.w d6,d2
	ext.l d2
	moveq #$a,d1
	asl.l d1,d2
	rts
loc_202c4e:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c5c(pc,d2.w)
loc_202c5a:
	move.w (a2)+,d0
loc_202c5c:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c5a
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
	dbf d1,loc_202c5a
	rts

sub_202c90:
	move.w ($f700).w,d4
	bsr.s sub_202cc4
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202cc2
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202cbc
	bset.b #$2,($f754).w
	rts
loc_202cbc:
	bset.b #$3,($f754).w
loc_202cc2:
	rts

sub_202cc4:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202cd6
	bcs.s loc_202d06
	bra.s loc_202cdc
loc_202cd6:
	clr.w ($f73a).w
	rts
loc_202cdc:
	cmpi.w #$10,d0
	blt.s loc_202ce6
	move.w #$10,d0
loc_202ce6:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202cf4
	move.w ($f72a).w,d0
loc_202cf4:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202d06:
	cmpi.w #$fff0,d0
	bge.s loc_202d10
	move.w #$fff0,d0
loc_202d10:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202cf4
	move.w ($f728).w,d0
	bra.s loc_202cf4
	.incbin 11552, 16

sub_202d30:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d44
	subq.w #$5,d0
loc_202d44:
	btst.b #$1,$22(a6)
	beq.s loc_202d64
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202db0
	subi.w #$40,d0
	bcc.s loc_202db0
	tst.b ($f75c).w
	bne.s loc_202dc2
	bra.s loc_202d70
loc_202d64:
	sub.w ($f73e).w,d0
	bne.s loc_202d76
	tst.b ($f75c).w
	bne.s loc_202dc2
loc_202d70:
	clr.w ($f73c).w
	rts
loc_202d76:
	cmpi.w #$60,($f73e).w
	bne.s loc_202d9e
	move.w $14(a6),d1
	bpl.s loc_202d86
	neg.w d1
loc_202d86:
	cmpi.w #$800,d1
	bcc.s loc_202db0
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202e10
	cmpi.w #$fffa,d0
	blt.s loc_202dda
	bra.s loc_202dc8
loc_202d9e:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202e10
	cmpi.w #$fffe,d0
	blt.s loc_202dda
	bra.s loc_202dc8
loc_202db0:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202e10
	cmpi.w #$fff0,d0
	blt.s loc_202dda
	bra.s loc_202dc8
loc_202dc2:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202dc8:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e1a
	bra.w loc_202de6
loc_202dda:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202de6:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e3e
	cmpi.w #$ff00,d1
	bgt.s loc_202e0a
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e3e
loc_202e0a:
	move.w ($f72c).w,d1
	bra.s loc_202e3e
loc_202e10:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e1a:
	cmp.w ($f72e).w,d1
	blt.s loc_202e3e
	subi.w #$800,d1
	bcs.s loc_202e3a
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e3e
loc_202e3a:
	move.w ($f72e).w,d1
loc_202e3e:
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
	bne.s loc_202e80
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202e7a
	bset.b #$0,($f754).w
	rts
loc_202e7a:
	bset.b #$1,($f754).w
loc_202e80:
	rts
	dc.b $24,$38,$f7,$08,$20,$02,$d0,$84
	dc.b $21,$c0,$f7,$08
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202eb6
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202eb0
	bset.b #$2,($f756).w
	bra.s loc_202eb6
loc_202eb0:
	bset.b #$3,($f756).w
loc_202eb6:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202eea
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202ee4
	bset.b #$0,($f756).w
	rts
loc_202ee4:
	bset.b #$1,($f756).w
loc_202eea:
	rts
	dc.b $26,$38,$f7,$0c,$20,$03,$d0,$85
	dc.b $21,$c0,$f7,$0c
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f20
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202f1a
	bset.b #$4,($f756).w
	rts
loc_202f1a:
	bset.b #$5,($f756).w
loc_202f20:
	rts

sub_202f22:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f50
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202f4a
	bset.b #$0,($f756).w
	rts
loc_202f4a:
	bset.b #$1,($f756).w
loc_202f50:
	rts

sub_202f52:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202f84
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202f7e
	bset.b d6,($f756).w
	bra.s loc_202f84
loc_202f7e:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202f84:
	rts

sub_202f86:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202fb8
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202fb2
	bset.b d6,($f758).w
	bra.s loc_202fb8
loc_202fb2:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202fb8:
	rts

sub_202fba:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202fec
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202fe6
	bset.b d6,($f75a).w
	bra.s loc_202fec
loc_202fe6:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202fec:
	rts
	.incbin 12270, 44

sub_20301a:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2030d8
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2031be
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2031c0
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_2030d6
	bclr.b #$0,(a2)
	beq.s loc_20308c
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033ea
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031c2
loc_20308c:
	bclr.b #$1,(a2)
	beq.s loc_2030a6
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033ea
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031c2
loc_2030a6:
	bclr.b #$2,(a2)
	beq.s loc_2030bc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033ea
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203218
loc_2030bc:
	bclr.b #$3,(a2)
	beq.s loc_2030d6
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2033ea
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203218
loc_2030d6:
	rts

sub_2030d8:
	lea (dat_2034a2).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_2030f4
	bclr.b #$1,(a2)
	beq.s loc_20313e
	move.w #$e0,d4
loc_2030f4:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_20316e(pc,d0.w),a3
	beq.s loc_203126
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033ea
	movem.l (a7)+,d4-d5
	bsr.w sub_2031c2
	movea.l (a7)+,a0
	bra.s loc_20313e
loc_203126:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033ec
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031ee
	movea.l (a7)+,a0
loc_20313e:
	tst.b (a2)
	bne.s loc_203144
	rts
loc_203144:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203158
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203158:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_20317e
dat_20316e:
	.incbin 12654, 16
loc_20317e:
	moveq #$f,d6
	move.l #$800000,d7
loc_203186:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_2031b2
	btst.b d0,(a2)
	beq.s loc_2031b2
	add.w d0,d0
	movea.l dat_20316e(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032c4
	movem.l (a7)+,d4-d5
	bsr.w sub_2033ea
	bsr.w sub_203246
	movem.l (a7)+,d4-d5/a0
loc_2031b2:
	addi.w #$10,d4
	dbf d6,loc_203186
	clr.b (a2)
	rts

sub_2031be:
	rts

sub_2031c0:
	rts

sub_2031c2:
	moveq #$15,d6

sub_2031c4:
	move.l #$800000,d7
	move.l d0,d1
loc_2031cc:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032c4
	move.l d1,d0
	bsr.w sub_203246
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031cc
	rts

sub_2031ee:
	move.l #$800000,d7
	move.l d0,d1
loc_2031f6:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032c6
	move.l d1,d0
	bsr.w sub_203246
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031f6
	rts

sub_203218:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203222:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032c4
	move.l d1,d0
	bsr.w sub_203246
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203222
	rts

sub_203246:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203282
	btst.b #$3,(a0)
	bne.s loc_203262
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203262:
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
loc_203282:
	btst.b #$3,(a0)
	bne.s loc_2032a4
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
loc_2032a4:
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

sub_2032c4:
	add.w (a3),d5

sub_2032c6:
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
	beq.s loc_203314
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
loc_203314:
	rts
	.incbin 13078, 30
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
	.incbin 13134, 154
	rts

sub_2033ea:
	add.w (a3),d5

sub_2033ec:
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
	.incbin 13318, 28

sub_203422:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20344c
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_203474

sub_20344c:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203450:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2033ea
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2031c4
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_203450
	rts
loc_203474:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203478:
	movem.l d4-d6/a0,-(a7)
	lea (dat_2034a2).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2034d4
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203478
	rts
dat_2034a2:
	.incbin 13474, 34
dat_2034c4:
	.incbin 13508, 16

sub_2034d4:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2034c4(pc,d0.w),a3
	beq.s loc_2034f6
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033ea
	movem.l (a7)+,d4-d5
	bsr.w sub_2031c2
	bra.s loc_20350a
loc_2034f6:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033ec
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031ee
loc_20350a:
	rts

sub_20350c:
	moveq #$0,d0
	lea (dat_20fbee).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202494
	movea.l (a2)+,a0
	bsr.w sub_203558
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20054a
	movea.l (a7)+,a2
	addq.w #$4,a2
	btst.b #$1,($ff151c).l
	beq.s loc_203556
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_203556
	bsr.w sub_2025c2
loc_203556:
	rts

sub_203558:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_203562:
	move.l d0,(a3)+
	dbf d1,loc_203562
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203578
	lea ($a040).w,a3
	moveq #$2,d1

sub_203578:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_2396e2).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_203592:
	move.w d1,d0
	movea.l a3,a0
loc_203596:
	move.b (a1)+,(a0)+
	dbf d0,loc_203596
	lea $80(a3),a3
	dbf d2,loc_203592
	rts

sub_2035a6:
	lea ($d000).w,a6
	bsr.w sub_203602
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2035dc
	bcc.s loc_2035de
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2035d2
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2035d2:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2035dc:
	rts
loc_2035de:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2035f6
	btst.b #$1,$22(a6)
	beq.s loc_2035f6
	add.w d1,d1
	add.w d1,d1
loc_2035f6:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_203602:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203614(pc,d0.w),d0
	jmp dat_203614(pc,d0.w)
dat_203614:
	dc.b $00,$06,$00,$06,$00,$0e,$31,$fc
	dc.b $07,$10,$f7,$26,$4e,$75
	tst.b ($f7a7).w
	bne.s loc_203630
	move.w #$310,($f726).w
	rts
loc_203630:
	move.w #$10c,d0
	move.w d0,($f72e).w
	move.w d0,($f726).w
	rts

sub_20363e:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203646:
	move.b (a0),d0
	beq.s loc_20365c
	add.w d0,d0
	add.w d0,d0
	lea (dat_203a60).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_20365c:
	lea $40(a0),a0
	dbf d7,loc_203646
	rts

sub_203666:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2036a4
	bpl.s loc_203696
	btst.b #$1,$2c(a0)
	beq.s loc_203696
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2036a4
loc_203696:
	btst.b #$2,$2c(a0)
	bne.s loc_2036a4
	addi.w #$38,$12(a0)
loc_2036a4:
	tst.w $12(a0)
	bmi.s loc_2036b8
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2036b8
	move.w #$1000,$12(a0)
loc_2036b8:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2036c8:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203704
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203704
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203702
	neg.w d1
loc_203702:
	add.w d1,d0
loc_203704:
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

sub_20371e:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_20378e
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2037aa
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2037aa
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203768
	cmpi.w #$800,d3
	bcs.s loc_20377a
	subi.w #$800,d3
	bra.s loc_20377a
loc_203768:
	cmpi.w #$700,($f704).w
	bcs.s loc_20377a
	cmpi.w #$100,d3
	bcc.s loc_20377a
	addi.w #$800,d3
loc_20377a:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2037aa
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2037aa
loc_20378e:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2037aa
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2037aa:
	rts
	.incbin 14252, 30

sub_2037ca:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2037d0:
	move.l d1,(a1)+
	dbf d0,loc_2037d0
	rts
dat_2037d8:
	.incbin 14296, 16

sub_2037e8:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2037f4:
	tst.w (a4)
	beq.w loc_2038b4
	moveq #$2,d6
loc_2037fc:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2038ac
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203862
	movea.l dat_2037d8(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203846
	cmpi.w #$800,d2
	bcs.s loc_203858
	subi.w #$800,d2
	bra.s loc_203858
loc_203846:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203858
	cmpi.w #$100,d2
	bcc.s loc_203858
	addi.w #$800,d2
loc_203858:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203884
loc_203862:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203884
	.incbin 14444, 24
loc_203884:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2038a2
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2038a6
loc_2038a2:
	bsr.w sub_2038d6
loc_2038a6:
	bset.b #$7,$1(a0)
loc_2038ac:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_2037fc
loc_2038b4:
	lea $80(a4),a4
	dbf d7,loc_2037f4
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_2038ce
	move.l #$0,(a2)
	rts
loc_2038ce:
	move.b #$0,-$5(a2)
	rts

sub_2038d6:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_20391c
	btst.l #$1,d4
	bne.w loc_20396a
loc_2038e8:
	cmpi.b #$50,d5
	beq.s loc_20391a
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
	bne.s loc_203914
	addq.w #$1,d0
loc_203914:
	move.w d0,(a2)+
	dbf d1,loc_2038e8
loc_20391a:
	rts
loc_20391c:
	btst.l #$1,d4
	bne.w loc_2039b0
loc_203924:
	cmpi.b #$50,d5
	beq.s loc_203968
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
	bne.s loc_203962
	addq.w #$1,d0
loc_203962:
	move.w d0,(a2)+
	dbf d1,loc_203924
loc_203968:
	rts
loc_20396a:
	cmpi.b #$50,d5
	beq.s loc_2039ae
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
	bne.s loc_2039a8
	addq.w #$1,d0
loc_2039a8:
	move.w d0,(a2)+
	dbf d1,loc_20396a
loc_2039ae:
	rts
loc_2039b0:
	cmpi.b #$50,d5
	beq.s loc_203a02
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
	bne.s loc_2039fc
	addq.w #$1,d0
loc_2039fc:
	move.w d0,(a2)+
	dbf d1,loc_2039b0
loc_203a02:
	rts
	.incbin 14852, 92
dat_203a60:
	.incbin 14944, 274

sub_203b72:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203b84
	move.w #$0,(a1)
	rts
loc_203b84:
	tst.w (a1)
	bne.s loc_203b8e
	move.b #$1,$1(a1)
loc_203b8e:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203bd8
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203bca
	neg.w $10(a0)
loc_203bca:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205904
loc_203bd8:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203bf6
	cmpa.w #$d040,a0
	beq.s loc_203bf6
	tst.b ($ff1906).l
	beq.s loc_203bf6
	jmp (loc_206f7e).l
loc_203bf6:
	move.b $2a(a0),d0
	beq.s loc_203c20
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203c12
	cmpi.b #$2d,d0
	bcs.s loc_203c1c
	move.b #$2d,d0
	bra.s loc_203c1c
loc_203c12:
	cmpi.b #$1e,d0
	bcs.s loc_203c1c
	move.b #$1e,d0
loc_203c1c:
	move.b d0,$2a(a0)
loc_203c20:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203c2e(pc,d0.w),d1
	jmp dat_203c2e(pc,d1.w)
dat_203c2e:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203c38:
	tst.b ($d300).w
	bne.s loc_203c76
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203c76:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203c9e
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203c9e:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203cd2:
	tst.b ($ff1506).l
	bne.s loc_203d38
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203d38
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203d3c
	cmpi.b #$2f,d1
	bne.s loc_203d3a
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203d38
	tst.b $2c(a0)
	beq.s loc_203d38
	jsr (sub_207542).l
	bne.s loc_203d38
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203d30
	moveq #$0,d0
loc_203d30:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203d38:
	rts
loc_203d3a:
	rts

sub_203d3c:
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

sub_203d62:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203d6e
	neg.w d0
loc_203d6e:
	btst.b #$1,$2c(a0)
	beq.s loc_203d7e
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203da6
loc_203d7e:
	cmpi.w #$600,d0
	bcs.s loc_203da6
	tst.w $14(a0)
	bpl.s loc_203d98
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203db4
	move.w #$e0,d1
	bra.s loc_203db4
loc_203d98:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203db4
	move.w #$60,d1
	bra.s loc_203db4
loc_203da6:
	cmpi.w #$a0,d1
	beq.s loc_203db4
	bcc.s loc_203db2
	addq.w #$2,d1
	bra.s loc_203db4
loc_203db2:
	subq.w #$2,d1
loc_203db4:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203d62
	bsr.w sub_203cd2
	tst.w ($ff1588).l
	beq.s loc_203dda
	btst.b #$4,($f605).w
	beq.s loc_203dda
	move.b #$1,($ff1906).l
	rts
loc_203dda:
	tst.b ($f7cc).w
	bne.s loc_203de6
	move.w ($f604).w,($f602).w
loc_203de6:
	btst.b #$0,$2c(a0)
	beq.s loc_203e0a
	cmpi.b #$6,($ff1506).l
	bne.s loc_203e04
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203e22
loc_203e04:
	bsr.w sub_2040ec
	bra.s loc_203e22
loc_203e0a:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203e68(pc,d0.w),d1
	jsr dat_203e68(pc,d1.w)
	jsr (sub_20640c).l
loc_203e22:
	bsr.s sub_203e76
	bsr.w sub_203f36
	bsr.w sub_203f50
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203e4a
	tst.b $1c(a0)
	bne.s loc_203e4a
	move.b $1d(a0),$1c(a0)
loc_203e4a:
	bsr.w sub_2052f4
	tst.b $2c(a0)
	bmi.s loc_203e62
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203e62
	jsr (sub_206a84).l
loc_203e62:
	bsr.w sub_2051aa
	rts
dat_203e68:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203e76:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203e9a
	move.w $30(a0),d0
	beq.s loc_203e8c
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203e9a
loc_203e8c:
	btst.b #$6,$2c(a0)
	bne.s loc_203e9a
	jsr (sub_20371e).l
loc_203e9a:
	tst.b ($ff151f).l
	beq.s loc_203ede
	tst.w $32(a0)
	beq.s loc_203ede
	subq.w #$1,$32(a0)
	bne.s loc_203ede
	tst.b ($ff1520).l
	bne.s loc_203ed6
	tst.b ($ff1958).l
	bne.s loc_203ed6
	tst.b ($ff152e).l
	bne.s loc_203ed0
	move.w #$e,d0
	jsr (sub_205904).l
loc_203ed0:
	jsr (sub_201bec).l
loc_203ed6:
	move.b #$0,($ff151f).l
loc_203ede:
	tst.b ($ff1520).l
	beq.s loc_203f34
	tst.w $34(a0)
	beq.s loc_203f34
	subq.w #$1,$34(a0)
	bne.s loc_203f34
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_203f2c
	tst.b ($ff1958).l
	bne.s loc_203f2c
	tst.b ($ff152e).l
	bne.s loc_203f26
	move.w #$e,d0
	jsr (sub_205904).l
loc_203f26:
	jsr (sub_201bec).l
loc_203f2c:
	move.b #$0,($ff1520).l
loc_203f34:
	rts

sub_203f36:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_203f50:
	cmpi.b #$2,($ff1506).l
	beq.s loc_203f5c
loc_203f5a:
	rts
loc_203f5c:
	cmpi.b #$1,($ff1507).l
	bne.s loc_203f6e
	cmpi.w #$c8,$8(a0)
	bcs.s loc_203f5a
loc_203f6e:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_203fb2
	bset.b #$6,$22(a0)
	bne.s loc_203f5a
	bsr.w sub_205c08
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_203f5a
	bra.s loc_203fea
loc_203fb2:
	tst.w $12(a0)
	beq.s loc_203fba
	bpl.s loc_203f5a
loc_203fba:
	bclr.b #$6,$22(a0)
	beq.s loc_203f5a
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_203f5a
	cmpi.w #$f000,$12(a0)
	bgt.s loc_203fea
	move.w #$f000,$12(a0)
loc_203fea:
	jsr (sub_207542).l
	bne.s loc_203ffe
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_203ffe:
	rts

sub_204000:
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
	bcs.s loc_2040da
	move.l #$50000,d0
loc_2040da:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2040ec:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204112
	tst.b ($ff152e).l
	beq.s loc_204108
	cmpi.b #$2,($ff152e).l
	bne.s loc_204112
loc_204108:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2041c2
loc_204112:
	tst.b $2a(a0)
	bne.w loc_2041d0
	tst.b ($f784).w
	beq.w loc_2041d0
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204130
	neg.w d0
loc_204130:
	tst.w ($f786).w
	bne.s loc_20413c
	move.w #$1,($f786).w
loc_20413c:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_204152
	move.b #$1,($ff1502).l
	bra.w loc_205900
loc_204152:
	cmpi.w #$d2,d1
	bcs.s loc_2041a6
	cmpi.b #$2,($ff1522).l
	beq.s loc_2041a4
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_20417c
	move.w #$82,d0
	jsr (sub_205904).l
	moveq #$0,d0
loc_20417c:
	add.b ($f784).w,d0
	bpl.s loc_204186
	moveq #$0,d0
	bra.s loc_20418e
loc_204186:
	cmpi.b #$3,d0
	bcs.s loc_20418e
	moveq #$2,d0
loc_20418e:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204000
	move.b #$2,($ff1522).l
loc_2041a4:
	rts
loc_2041a6:
	cmpi.w #$5a,d1
	bcc.s loc_2041be
	cmp.w d2,d0
	bcc.w loc_203c38
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2041be:
	cmp.w d2,d0
	bcc.s loc_2041d0
loc_2041c2:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2041d0:
	rts
	bsr.w sub_203b72
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204202
	tst.b ($ff195b).l
	beq.s loc_2041f0
	cmpi.b #$79,$1a(a0)
	bne.s loc_20422c
	bra.s loc_2041f8
loc_2041f0:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_20422c
loc_2041f8:
	bsr.w sub_204a94
	jmp (sub_203666).l
loc_204202:
	bsr.w sub_2042da
	bsr.w sub_2040ec
	bsr.w sub_204b7e
	bsr.w sub_204caa
	bsr.w sub_20434e
	bsr.w sub_204b00
	bsr.w sub_204a94
	jsr (sub_2036c8).l
	bsr.w sub_200cfc
	bsr.w sub_204d28
loc_20422c:
	rts
	tst.b ($f7c7).w
	bne.s loc_204248
	cmpi.b #$15,$1c(a0)
	beq.s loc_204248
	tst.w $12(a0)
	bmi.s loc_204248
	move.b #$0,$1c(a0)
loc_204248:
	bsr.w sub_2042da
	bsr.w sub_2040ec
	bsr.w sub_204c68
	bsr.w sub_2049b4
	bsr.w sub_204a94
	jsr (sub_203666).l
	btst.b #$6,$22(a0)
	beq.s loc_204270
	subi.w #$28,$12(a0)
loc_204270:
	bsr.w sub_204d72
	bsr.w sub_204d96
	rts
	bsr.w sub_2042da
	bsr.w sub_2040ec
	bsr.w sub_204b7e
	bsr.w sub_204ce6
	bsr.w sub_2047ee
	bsr.w sub_204a94
	tst.b $2a(a0)
	bne.s loc_20429e
	jsr (sub_2036c8).l
loc_20429e:
	bsr.w sub_200cfc
	bsr.w sub_204d28
	rts
	bsr.w sub_2042da
	bsr.w sub_2040ec
	bsr.w sub_204c68
	bsr.w sub_2049b4
	bsr.w sub_204a94
	jsr (sub_203666).l
	btst.b #$6,$22(a0)
	beq.s loc_2042d0
	subi.w #$28,$12(a0)
loc_2042d0:
	bsr.w sub_204d72
	bsr.w sub_204d96
	rts

sub_2042da:
	cmpi.b #$1,($ff152e).l
	bne.s loc_204346
	tst.w ($ff1506).l
	bne.s loc_204346
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204348).l,a2
loc_20430e:
	move.b (a2)+,d0
	bmi.s loc_20431e
	cmp.b d0,d1
	bne.s loc_20430e
	bset.b #$1,$2c(a0)
	rts
loc_20431e:
	bclr.b #$1,$2c(a0)
	beq.s loc_204346
	tst.w $12(a0)
	bpl.s loc_204346
	cmpi.w #$f800,$12(a0)
	bcc.s loc_204346
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204346
	neg.w $10(a0)
loc_204346:
	rts
dat_204348:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_20434e:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204678
	tst.w $3e(a0)
	bne.w loc_204628
	btst.b #$2,($f602).w
	beq.s loc_204376
	bsr.w sub_204708
loc_204376:
	btst.b #$3,($f602).w
	beq.s loc_204382
	bsr.w sub_20477e
loc_204382:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204628
	tst.w $14(a0)
	beq.s loc_2043a2
	tst.b $2a(a0)
	beq.w loc_204628
	bra.s loc_2043ae
loc_2043a2:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2043ae:
	btst.b #$3,$22(a0)
	beq.s loc_204400
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204458
	cmpi.b #$1e,$0(a1)
	bne.s loc_2043e0
	move.b #$0,$1c(a0)
	bra.w loc_204628
loc_2043e0:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_20443c
	cmp.w d2,d1
	bge.s loc_20442a
	bra.s loc_204458
loc_204400:
	jsr (sub_2067e8).l
	cmpi.w #$c,d1
	blt.s loc_204458
	move.w #$ab,d0
	jsr (sub_2023f8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204434
loc_20442a:
	btst.b #$0,$22(a0)
	bne.s loc_204444
	bra.s loc_20444e
loc_204434:
	cmpi.b #$3,$37(a0)
	bne.s loc_204458
loc_20443c:
	btst.b #$0,$22(a0)
	bne.s loc_20444e
loc_204444:
	move.b #$32,$1c(a0)
	bra.w loc_204628
loc_20444e:
	move.b #$6,$1c(a0)
	bra.w loc_204628
loc_204458:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_20446c
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_20446c:
	btst.b #$7,($f788).w
	bne.w loc_204570
	btst.b #$6,($f788).w
	bne.w loc_204590
	btst.b #$1,($f602).w
	bne.w loc_204590
	andi.b #$f,($f788).w
	beq.s loc_2044a4
	btst.b #$0,($f603).w
	beq.s loc_2044b8
	bset.b #$7,($f788).w
	bra.w loc_20464c
loc_2044a4:
	btst.b #$0,($f603).w
	beq.w loc_2044b8
	move.b #$1,($f788).w
	bra.w loc_20464c
loc_2044b8:
	btst.b #$0,($f602).w
	beq.s loc_204534
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_204516
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2044e8
	asr.w #$1,d2
	sub.w d2,d1
loc_2044e8:
	btst.b #$0,$22(a0)
	beq.s loc_2044f4
	neg.w d0
	neg.w d1
loc_2044f4:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20450a
	cmp.w d0,d1
	ble.s loc_204510
	bra.s loc_20450e
loc_20450a:
	cmp.w d1,d0
	ble.s loc_204510
loc_20450e:
	move.w d1,d0
loc_204510:
	move.w d0,$14(a0)
	rts
loc_204516:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204530
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2023f8).l
loc_204530:
	bra.w loc_20464c
loc_204534:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_204554
	move.w #$ab,d0
	jsr (sub_2023f8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204590
loc_204554:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023f8).l
	bra.w loc_204628
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204570:
	btst.b #$0,($f602).w
	beq.s loc_204590
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_20464c
	addq.w #$2,($f73e).w
	bra.w loc_20464c
loc_204590:
	btst.b #$6,($f788).w
	bne.w loc_20460c
	andi.b #$f,($f788).w
	beq.s loc_2045b4
	btst.b #$1,($f603).w
	beq.s loc_2045c6
	bset.b #$6,($f788).w
	bra.w loc_20464c
loc_2045b4:
	btst.b #$1,($f603).w
	beq.s loc_2045c6
	move.b #$1,($f788).w
	bra.w loc_20464c
loc_2045c6:
	btst.b #$1,($f602).w
	beq.s loc_204628
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_20460a
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_20460a
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2045fc
	neg.w $14(a0)
loc_2045fc:
	move.w #$9c,d0
	jsr (sub_2023f8).l
	bsr.w sub_204b28
loc_20460a:
	bra.s loc_20464c
loc_20460c:
	btst.b #$1,($f602).w
	beq.s loc_204628
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_20464c
	subq.w #$2,($f73e).w
	bra.s loc_20464c
loc_204628:
	cmpi.w #$60,($f73e).w
	bne.s loc_204642
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_20464c
	move.b #$0,($f788).w
	bra.s loc_20464c
loc_204642:
	bcc.s loc_204648
	addq.w #$4,($f73e).w
loc_204648:
	subq.w #$2,($f73e).w
loc_20464c:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204678
	move.w $14(a0),d0
	beq.s loc_204678
	bmi.s loc_20466c
	sub.w d5,d0
	bcc.s loc_204666
	move.w #$0,d0
loc_204666:
	move.w d0,$14(a0)
	bra.s loc_204678
loc_20466c:
	add.w d5,d0
	bcc.s loc_204674
	move.w #$0,d0
loc_204674:
	move.w d0,$14(a0)
loc_204678:
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204696:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204706
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204706
	bmi.s loc_2046ae
	neg.w d1
loc_2046ae:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_2066a8
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204706
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204702
	cmpi.b #$40,d0
	beq.s loc_2046f0
	cmpi.b #$80,d0
	beq.s loc_2046ea
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2046ea:
	sub.w d1,$12(a0)
	rts
loc_2046f0:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204702:
	add.w d1,$12(a0)
loc_204706:
	rts

sub_204708:
	tst.b $2a(a0)
	bne.s loc_20477c
	move.w $14(a0),d0
	beq.s loc_204716
	bpl.s loc_204746
loc_204716:
	bset.b #$0,$22(a0)
	bne.s loc_20472a
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20472a:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_20473a
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_20473a
	move.w d1,d0
loc_20473a:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204746:
	sub.w d4,d0
	bcc.s loc_20474e
	move.w #$ff80,d0
loc_20474e:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_20477c
	cmpi.w #$400,d0
	blt.s loc_20477c
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023f8).l
loc_20477c:
	rts

sub_20477e:
	tst.b $2a(a0)
	bne.s loc_2047ec
	move.w $14(a0),d0
	bmi.s loc_2047b6
	bclr.b #$0,$22(a0)
	beq.s loc_20479e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_20479e:
	cmp.w d6,d0
	bge.s loc_2047aa
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2047aa
	move.w d6,d0
loc_2047aa:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2047b6:
	add.w d4,d0
	bcc.s loc_2047be
	move.w #$80,d0
loc_2047be:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2047ec
	cmpi.w #$fc00,d0
	bgt.s loc_2047ec
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023f8).l
loc_2047ec:
	rts

sub_2047ee:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204938
	tst.w $3e(a0)
	bne.s loc_204826
	btst.b #$2,($f602).w
	beq.s loc_20481a
	bsr.w sub_20496e
loc_20481a:
	btst.b #$3,($f602).w
	beq.s loc_204826
	bsr.w sub_204992
loc_204826:
	tst.b $2a(a0)
	beq.w loc_2048d0
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204846
	asr.w #$1,d2
	sub.w d2,d1
loc_204846:
	btst.b #$0,$22(a0)
	beq.s loc_204852
	neg.w d0
	neg.w d1
loc_204852:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204868
	cmp.w d0,d1
	ble.s loc_20486e
	bra.s loc_20486c
loc_204868:
	cmp.w d1,d0
	ble.s loc_20486e
loc_20486c:
	move.w d1,d0
loc_20486e:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_2048a2
	rts
loc_20487c:
	move.w #$ab,d0
	jsr (sub_2023f8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204902
loc_2048a2:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_20487c
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023f8).l
	btst.b #$0,$22(a0)
	bne.s loc_2048c8
	bsr.w sub_204992
	bra.s loc_2048d0
loc_2048c8:
	bsr.w sub_20496e
	bra.s loc_2048d0
	dc.b $4e,$75
loc_2048d0:
	move.w $14(a0),d0
	beq.s loc_2048f2
	bmi.s loc_2048e6
	sub.w d5,d0
	bcc.s loc_2048e0
	move.w #$0,d0
loc_2048e0:
	move.w d0,$14(a0)
	bra.s loc_2048f2
loc_2048e6:
	add.w d5,d0
	bcc.s loc_2048ee
	move.w #$0,d0
loc_2048ee:
	move.w d0,$14(a0)
loc_2048f2:
	tst.w $14(a0)
	bne.s loc_204938
	move.w #$ab,d0
	jsr (sub_2023f8).l
loc_204902:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204922
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204932
loc_204922:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204932:
	move.b #$5,$1c(a0)
loc_204938:
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_20495c
	move.w #$1000,d1
loc_20495c:
	cmpi.w #$f000,d1
	bge.s loc_204966
	move.w #$f000,d1
loc_204966:
	move.w d1,$10(a0)
	bra.w loc_204696

sub_20496e:
	move.w $14(a0),d0
	beq.s loc_204976
	bpl.s loc_204984
loc_204976:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204984:
	sub.w d4,d0
	bcc.s loc_20498c
	move.w #$ff80,d0
loc_20498c:
	move.w d0,$14(a0)
	rts

sub_204992:
	move.w $14(a0),d0
	bmi.s loc_2049a6
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_2049a6:
	add.w d4,d0
	bcc.s loc_2049ae
	move.w #$80,d0
loc_2049ae:
	move.w d0,$14(a0)
	rts

sub_2049b4:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_2049ee
	tst.w ($ff1506).l
	bne.s loc_2049ee
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_2049e6
	cmpi.w #$840,$8(a0)
	bcc.s loc_2049e6
	rts
loc_2049e6:
	btst.b #$1,$2c(a0)
	bne.s loc_204a1e
loc_2049ee:
	btst.b #$2,($f602).w
	beq.s loc_204a08
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204a08
	move.w d1,d0
loc_204a08:
	btst.b #$3,($f602).w
	beq.s loc_204a1e
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204a1e
	move.w d6,d0
loc_204a1e:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204a34
	bcc.s loc_204a30
	addq.w #$4,($f73e).w
loc_204a30:
	subq.w #$2,($f73e).w
loc_204a34:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204a62
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204a62
	bmi.s loc_204a56
	sub.w d1,d0
	bcc.s loc_204a50
	move.w #$0,d0
loc_204a50:
	move.w d0,$10(a0)
	rts
loc_204a56:
	sub.w d1,d0
	bcs.s loc_204a5e
	move.w #$0,d0
loc_204a5e:
	move.w d0,$10(a0)
loc_204a62:
	rts
	.incbin 19044, 48

sub_204a94:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204ae8
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204ac2
	addi.w #$38,d0
loc_204ac2:
	cmp.w d1,d0
	bls.s loc_204ae8
loc_204ac6:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ad6
	rts
loc_204ad6:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206d5c
	move.b #$6,$24(a0)
	rts
loc_204ae8:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ac6

sub_204b00:
	tst.b ($f7ca).w
	bne.s loc_204b26
	move.w $14(a0),d0
	bpl.s loc_204b0e
	neg.w d0
loc_204b0e:
	cmpi.w #$80,d0
	bcs.s loc_204b26
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204b26
	btst.b #$1,($f602).w
	bne.s sub_204b28
loc_204b26:
	rts

sub_204b28:
	btst.b #$2,$22(a0)
	beq.s loc_204b32
	bra.s loc_204b62
loc_204b32:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204b52
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204b62
loc_204b52:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204b62:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204b7c
	cmpi.w #$200,$14(a0)
	bcc.s loc_204b7c
	move.w #$200,$14(a0)
loc_204b7c:
	rts

sub_204b7e:
	tst.b $2a(a0)
	beq.s loc_204b86
	rts
loc_204b86:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204b98
	tst.w $14(a0)
	beq.w loc_204c5e
loc_204b98:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204c5e
	btst.b #$3,$22(a0)
	beq.s loc_204bb4
	jsr (sub_20588a).l
	beq.s loc_204be4
loc_204bb4:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206712
	cmpi.w #$6,d1
	blt.w loc_204c5e
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204bda
	move.w #$380,d2
loc_204bda:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204be4:
	jsr (sub_2008fc).l
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
	jsr (sub_2023f8).l
	btst.b #$2,$22(a0)
	bne.s loc_204c60
	tst.b ($ff195b).l
	beq.s loc_204c42
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c52
loc_204c42:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c52:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204c5e:
	rts
loc_204c60:
	bset.b #$4,$22(a0)
	rts

sub_204c68:
	tst.b $3c(a0)
	beq.s loc_204c9a
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204c7e
	move.w #$fe00,d1
loc_204c7e:
	cmp.w $12(a0),d1
	ble.s loc_204c98
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204c98
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204c98:
	rts
loc_204c9a:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204ca8
	move.w #$f040,$12(a0)
loc_204ca8:
	rts

sub_204caa:
	tst.b $2a(a0)
	bne.s loc_204ce4
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204ce4
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204ce4
	bmi.s loc_204ce0
	tst.w d0
	beq.s loc_204cde
	add.w d0,$14(a0)
loc_204cde:
	rts
loc_204ce0:
	add.w d0,$14(a0)
loc_204ce4:
	rts

sub_204ce6:
	tst.b $2a(a0)
	bne.s loc_204d26
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204d26
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_204d1c
	tst.w d0
	bpl.s loc_204d16
	asr.l #$2,d0
loc_204d16:
	add.w d0,$14(a0)
	rts
loc_204d1c:
	tst.w d0
	bmi.s loc_204d22
	asr.l #$2,d0
loc_204d22:
	add.w d0,$14(a0)
loc_204d26:
	rts

sub_204d28:
	nop
	tst.b $38(a0)
	bne.s loc_204d6a
	tst.w $3e(a0)
	bne.s loc_204d6c
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204d6a
	move.w $14(a0),d0
	bpl.s loc_204d4c
	neg.w d0
loc_204d4c:
	cmpi.w #$280,d0
	bcc.s loc_204d6a
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204d6a:
	rts
loc_204d6c:
	subq.w #$1,$3e(a0)
	rts

sub_204d72:
	btst.b #$1,$2c(a0)
	bne.s loc_204d94
	move.b $26(a0),d0
	beq.s loc_204d94
	bpl.s loc_204d8a
	addq.b #$2,d0
	bcc.s loc_204d88
	moveq #$0,d0
loc_204d88:
	bra.s loc_204d90
loc_204d8a:
	subq.b #$2,d0
	bcc.s loc_204d90
	moveq #$0,d0
loc_204d90:
	move.b d0,$26(a0)
loc_204d94:
	rts

sub_204d96:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200b94).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204e7a
	cmpi.b #$80,d0
	beq.w loc_204edc
	cmpi.b #$c0,d0
	beq.w loc_204f38
	bsr.w sub_206a28
	tst.w d1
	bpl.s loc_204de8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204de8:
	bsr.w sub_20688a
	tst.w d1
	bpl.s loc_204dfa
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204dfa:
	bsr.w sub_20673a
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204e78
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204e18
	cmp.b d2,d0
	blt.s loc_204e78
loc_204e18:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204f9a
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204e56
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204e48
	asr.w $12(a0)
	bra.s loc_204e6a
loc_204e48:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204e56:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204e6a
	move.w #$fc0,$12(a0)
loc_204e6a:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204e78
	neg.w $14(a0)
loc_204e78:
	rts
loc_204e7a:
	bsr.w sub_206a28
	tst.w d1
	bpl.s loc_204e94
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204e94:
	bsr.w sub_2068e2
	tst.w d1
	bpl.s loc_204eae
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204eac
	move.w #$0,$12(a0)
loc_204eac:
	rts
loc_204eae:
	tst.w $12(a0)
	bmi.s loc_204eda
	bsr.w sub_20673a
	tst.w d1
	bpl.s loc_204eda
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204f9a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204eda:
	rts
loc_204edc:
	bsr.w sub_206a28
	tst.w d1
	bpl.s loc_204eee
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204eee:
	bsr.w sub_20688a
	tst.w d1
	bpl.s loc_204f00
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f00:
	bsr.w sub_2068e2
	tst.w d1
	bpl.s loc_204f36
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f20
	move.w #$0,$12(a0)
	rts
loc_204f20:
	move.b d3,$26(a0)
	bsr.w sub_20500c
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204f36
	neg.w $14(a0)
loc_204f36:
	rts
loc_204f38:
	bsr.w sub_20688a
	tst.w d1
	bpl.s loc_204f52
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204f52:
	bsr.w sub_2068e2
	tst.w d1
	bpl.s loc_204f6c
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204f6a
	move.w #$0,$12(a0)
loc_204f6a:
	rts
loc_204f6c:
	tst.w $12(a0)
	bmi.s loc_204f98
	bsr.w sub_20673a
	tst.w d1
	bpl.s loc_204f98
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204f9a
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204f98:
	rts

sub_204f9a:
	btst.b #$4,$22(a0)
	beq.s loc_204fa4
	nop
loc_204fa4:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_204ffe
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204fde
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204fee
loc_204fde:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204fee:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2023f8).l
loc_204ffe:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_20500c:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2036c8).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_205046
	subi.w #$20,$12(a0)
loc_205046:
	jsr (sub_20640c).l
	bsr.w sub_205062
	bsr.w sub_204a94
	bsr.w sub_203f36
	bsr.w sub_2052f4
	jmp (sub_20371e).l

sub_205062:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206d5c
	bsr.w sub_204d96
	btst.b #$1,$22(a0)
	bne.s loc_20509c
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_20509c:
	rts
	bsr.w sub_2050b6
	jsr (sub_203666).l
	bsr.w sub_203f36
	bsr.w sub_2052f4
	jmp (sub_20371e).l

sub_2050b6:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205124
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_2050ea
	clr.b ($ff1508).l
loc_2050ea:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_205104
	tst.b ($ff0f01).l
	beq.s loc_205104
	move.b #$0,($ff1508).l
	bra.s loc_20511e
loc_205104:
	jsr (sub_207542).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205124
loc_20511e:
	move.w #$3c,$3a(a0)
loc_205124:
	rts
	tst.w $3a(a0)
	beq.w loc_2051a8
	subq.w #$1,$3a(a0)
	bne.w loc_2051a8
	move.w #$1,($ff1502).l
	jsr (sub_202390).l
	move.b #$1,($a01c3e).l
	jsr (sub_2023ac).l
	bsr.w sub_207330
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_205176
	cmpi.b #$1,($ff152e).l
	bne.s loc_205176
	bclr.b #$1,($ff151c).l
loc_205176:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_2051a4
	cmpi.b #$1,($ff152e).l
	bne.s loc_20519e
	tst.b ($ff158e).l
	beq.s loc_2051a4
	move.b #$1,($ff1522).l
	bra.s loc_2051a4
loc_20519e:
	clr.b ($ff1522).l
loc_2051a4:
	bra.w sub_205904
loc_2051a8:
	rts

sub_2051aa:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2051d2
	cmpi.b #$5,($ff1506).l
	beq.s loc_2051d2
	cmpi.b #$2,($ff1506).l
	beq.s loc_2051d2
	tst.b ($ff1506).l
	bne.w loc_205294
loc_2051d2:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205210
	tst.b ($ff1506).l
	bne.w loc_205296
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_205296
	bra.s loc_205218
loc_205210:
	cmp.b ($f7af).w,d1
	beq.w loc_205296
loc_205218:
	cmp.b ($f7ac).w,d1
	beq.s loc_205248
	cmp.b ($f7ad).w,d1
	beq.s loc_20522c
	bclr.b #$6,$1(a0)
	rts
loc_20522c:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2052ae
	btst.b #$1,$22(a0)
	beq.s loc_205248
	bclr.b #$6,$1(a0)
	rts
loc_205248:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_20525a
	bclr.b #$6,$1(a0)
	rts
loc_20525a:
	cmpi.b #$e0,d2
	bcs.s loc_205268
	bset.b #$6,$1(a0)
	rts
loc_205268:
	btst.b #$6,$1(a0)
	bne.s loc_205284
	move.b $26(a0),d1
	beq.s loc_205294
	cmpi.b #$80,d1
	bhi.s loc_205294
	bset.b #$6,$1(a0)
	rts
loc_205284:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_205294
	bclr.b #$6,$1(a0)
loc_205294:
	rts
loc_205296:
	btst.b #$2,$22(a0)
	bne.s loc_2052a8
	move.w #$9c,d0
	jsr (sub_2023f8).l
loc_2052a8:
	jmp (sub_204b28).l
loc_2052ae:
	tst.w $12(a0)
	bmi.s loc_2052f2
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2052e6
	cmpi.w #$38,d1
	bcs.s loc_2052de
	cmpi.w #$80,d1
	bcs.s loc_2052f2
loc_2052d6:
	bclr.b #$6,$1(a0)
	rts
loc_2052de:
	bset.b #$6,$1(a0)
	rts
loc_2052e6:
	cmpi.w #$38,d1
	bcs.s loc_2052d6
	cmpi.w #$80,d1
	bcc.s loc_2052de
loc_2052f2:
	rts

sub_2052f4:
	lea (dat_2055e4).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205316
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205316:
	bsr.w sub_205586
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_20538e
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_20535c
	move.b d0,$1e(a0)

sub_205340:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_205354
	bpl.s loc_205354
	cmpi.b #$fd,d0
	bge.s loc_20535e
loc_205354:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_20535c:
	rts
loc_20535e:
	addq.b #$1,d0
	bne.s loc_20536e
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205354
loc_20536e:
	addq.b #$1,d0
	bne.s loc_205382
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205354
loc_205382:
	addq.b #$1,d0
	bne.s loc_20538c
	move.b $2(a1,d1.w),$1c(a0)
loc_20538c:
	rts
loc_20538e:
	subq.b #$1,$1e(a0)
	bpl.s loc_20535c
	addq.b #$1,d0
	bne.w loc_205448
	tst.b ($ff195b).l
	bne.w loc_205510
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2053b6
	not.b d0
loc_2053b6:
	btst.b #$1,$2c(a0)
	bne.s loc_2053c4
	addi.b #$10,d0
	bra.s loc_2053c6
loc_2053c4:
	addq.b #$8,d0
loc_2053c6:
	bpl.s loc_2053ca
	moveq #$3,d1
loc_2053ca:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2054bc
	move.w $14(a0),d2
	bpl.s loc_2053e8
	neg.w d2
loc_2053e8:
	btst.b #$1,$2c(a0)
	beq.s loc_205400
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2057e6).l,a1
	bra.s loc_20542a
loc_205400:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2057c0).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20542a
	lea (dat_205664).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20542a
	lea (dat_20565c).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20542a:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205438
	moveq #$0,d2
loc_205438:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205340
	add.b d3,$1a(a0)
	rts
loc_205448:
	addq.b #$1,d0
	bne.s loc_2054b8
	move.w $14(a0),d2
	bpl.s loc_205454
	neg.w d2
loc_205454:
	lea (dat_205742).l,a1
	tst.b ($ff195b).l
	bne.s loc_205492
	lea (dat_205674).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_205486
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_205492
	lea (dat_2057ee).l,a1
	bra.s loc_205492
loc_205486:
	cmpi.w #$600,d2
	bcc.s loc_205492
	lea (dat_20566c).l,a1
loc_205492:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_20549c
	moveq #$0,d2
loc_20549c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205340
loc_2054b8:
	addq.b #$1,d0
	bne.s loc_2054fc
loc_2054bc:
	move.w $14(a0),d2
	bmi.s loc_2054c4
	neg.w d2
loc_2054c4:
	addi.w #$800,d2
	bpl.s loc_2054cc
	moveq #$0,d2
loc_2054cc:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205754).l,a1
	tst.b ($ff195b).l
	bne.s loc_2054e6
	lea (dat_20567c).l,a1
loc_2054e6:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205340
loc_2054fc:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205510:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205522
	not.b d0
loc_205522:
	addi.b #$10,d0
	bpl.s loc_20552a
	moveq #$0,d1
loc_20552a:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205558
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205448
loc_205558:
	move.w $14(a0),d2
	bpl.s loc_205560
	neg.w d2
loc_205560:
	lea (dat_20573c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205572
	lea (dat_205736).l,a1
loc_205572:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20557c
	moveq #$0,d2
loc_20557c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205340

sub_205586:
	tst.b ($ff195b).l
	beq.s loc_205592
	move.b dat_205594(pc,d0.w),d0
loc_205592:
	rts
dat_205594:
	.incbin 21908, 80
dat_2055e4:
	.incbin 21988, 120
dat_20565c:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205664:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_20566c:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205674:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_20567c:
	.incbin 22140, 186
dat_205736:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_20573c:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205742:
	.incbin 22338, 18
dat_205754:
	.incbin 22356, 108
dat_2057c0:
	.incbin 22464, 38
dat_2057e6:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2057ee:
	.incbin 22510, 56

sub_205826:
	tst.b (a0)
	beq.w loc_205888
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205888
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205888
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_20585a:
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
loc_205874:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205874
	dbf d1,loc_20585a
loc_205888:
	rts

sub_20588a:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_2058fe
	move.w #$98,d0
	jsr (sub_2023f8).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200b94).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_2058ec
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_2058ec:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_2058fe:
	rts
loc_205900:
	move.w #$e,d0

sub_205904:
	cmpi.w #$67,d0
	bne.s loc_205912
	move.b #$1,($ff1958).l
loc_205912:
	move.w d0,($a12010).l
loc_205918:
	move.w ($a12020).l,d0
	beq.s loc_205918
	cmp.w ($a12020).l,d0
	bne.s loc_205918
	move.w #$0,($a12010).l
loc_205930:
	move.w ($a12020).l,d0
	bne.s loc_205930
	move.w ($a12020).l,d0
	bne.s loc_205930
	rts
	dc.b $00,$00

sub_205944:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205960
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205960:
	subq.b #$1,$1e(a0)
	bpl.s loc_2059a0
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_2059a2
loc_20597c:
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
loc_2059a0:
	rts
loc_2059a2:
	addq.b #$1,d0
	bne.s loc_2059b2
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20597c
loc_2059b2:
	addq.b #$1,d0
	bne.s loc_2059c6
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20597c
loc_2059c6:
	addq.b #$1,d0
	bne.s loc_2059d0
	move.b $2(a1,d1.w),$1c(a0)
loc_2059d0:
	addq.b #$1,d0
	bne.s loc_2059d8
	addq.b #$2,$24(a0)
loc_2059d8:
	addq.b #$1,d0
	bne.s loc_2059e6
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_2059e6:
	addq.b #$1,d0
	bne.s loc_2059ee
	addq.b #$2,$25(a0)
loc_2059ee:
	rts
	.incbin 23024, 536

sub_205c08:
	rts
	.incbin 23562, 116

sub_205c7e:
	tst.b $25(a0)
	bne.s loc_205cae
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_207542).l
	bne.s loc_205cae
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205cae:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205cbe(pc,d0.w),d0
	jmp dat_205cbe(pc,d0.w)
dat_205cbe:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205ce6
	andi.b #$7f,$2(a0)
loc_205ce6:
	move.l #$23c668,$4(a0)
	bsr.s sub_205c7e
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205d14
	move.w #$100,$1c(a0)
loc_205d14:
	lea (dat_23c654).l,a1
	bsr.w sub_205944
	jmp (sub_20371e).l
	tst.b $25(a0)
	beq.s loc_205d30
	jmp (sub_2037ca).l
loc_205d30:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205d52(pc,d0.w),d0
	jsr dat_205d52(pc,d0.w)
	jmp (sub_20371e).l
dat_205d52:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205d80
	andi.b #$7f,$2(a0)
loc_205d80:
	move.l #$21de52,$4(a0)
	tst.b $28(a0)
	bne.s loc_205da6
	bsr.w sub_205e12
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205e08
loc_205da6:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_2067e8).l
	tst.w d1
	bpl.s loc_205e04
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205dee
	bsr.w sub_205e12
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205e38
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205dee:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205e08
loc_205e04:
	addq.w #$2,$c(a0)
loc_205e08:
	lea (dat_21de36).l,a1
	bra.w sub_205944

sub_205e12:
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

sub_205e38:
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
	bra.s loc_205e08
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205e08
	.incbin 24180, 836

sub_2061b8:
	bclr.b #$7,($ff156b).l
	beq.s loc_206206
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206208(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2061dc:
	move.l (a1)+,(a2)+
	dbf d0,loc_2061dc
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_206206:
	rts
dat_206208:
	.incbin 25096, 436
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2063d6(pc,d0.w),d0
	jsr dat_2063d6(pc,d0.w)
	jsr (sub_20371e).l
	jmp (loc_207578).l
dat_2063d6:
	dc.b $00,$04,$00,$28
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$206408,$4(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	lea ($d000).w,a1
	jmp (sub_207b0c).l
	dc.b $00,$02,$00,$00

sub_20640c:
	cmpi.b #$2,($ff1507).l
	bne.s loc_206418
	rts
loc_206418:
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	sub.w d0,d3
	jsr (sub_20106a).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_20648e
	bne.s loc_206470
	move.w $8(a0),d3
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	addq.w #$2,d2
	move.b $17(a0),d0
	ext.w d0
	add.w d0,d3
	jsr (sub_20106a).l
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	bsr.s sub_20648e
	beq.s loc_20648c
loc_206470:
	move.w #$1,d0
	btst.l #$b,d4
	beq.s loc_20647c
	neg.w d0
loc_20647c:
	andi.w #$7ff,d4
	cmpi.w #$114,d4
	bne.s loc_206488
	neg.w d0
loc_206488:
	add.w d0,$8(a0)
loc_20648c:
	rts

sub_20648e:
	moveq #$0,d1
	move.b ($ff152e).l,d1
	andi.b #$7f,d1
	cmpi.b #$2,d1
	bne.s loc_2064a6
	add.b ($ff156a).l,d1
loc_2064a6:
	add.w d1,d1
	move.w dat_2064ca(pc,d1.w),d1
	lea dat_2064ca(pc,d1.w),a1
	moveq #$0,d6
	move.w (a1)+,d6
	moveq #$0,d1
loc_2064b6:
	cmp.w $0(a1,d1.w),d0
	beq.s loc_2064c6
	addq.w #$2,d1
	dbf d6,loc_2064b6
	moveq #$0,d0
	rts
loc_2064c6:
	moveq #$1,d0
	rts
dat_2064ca:
	.incbin 25802, 24
loc_2064e2:
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
	bne.s loc_20659c
	move.b ($ff1593).l,($ff195b).l
loc_20659c:
	tst.b ($ff1522).l
	bpl.s loc_2065b2
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2065b2:
	rts

sub_2065b4:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2064e2
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
	bne.s loc_20666e
	move.b ($ff1591).l,($ff195b).l
loc_20666e:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206690
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206690:
	tst.b ($ff1522).l
	bpl.s loc_2066a6
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_2066a6:
	rts

sub_2066a8:
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
	bpl.s loc_2066e4
	move.b d1,d0
	bpl.s loc_2066de
	subq.b #$1,d0
loc_2066de:
	addi.b #$20,d0
	bra.s loc_2066ee
loc_2066e4:
	move.b d1,d0
	bpl.s loc_2066ea
	addq.b #$1,d0
loc_2066ea:
	addi.b #$1f,d0
loc_2066ee:
	andi.b #$c0,d0
	beq.w loc_2067be
	cmpi.b #$80,d0
	beq.w loc_20695a
	andi.b #$38,d1
	bne.s loc_206706
	addq.w #$8,d2
loc_206706:
	cmpi.b #$40,d0
	beq.w loc_206a30
	bra.w loc_206892

sub_206712:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_2069b8
	cmpi.b #$80,d0
	beq.w sub_2068e2
	cmpi.b #$c0,d0
	beq.w loc_206822

sub_20673a:
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
	jsr (sub_201252).l
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
	jsr (sub_201252).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_20679e:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_2067ac
	move.b ($f768).w,d3
	exg d0,d1
loc_2067ac:
	btst.l #$0,d3
	beq.s loc_2067b4
	move.b d2,d3
loc_2067b4:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2067be:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201252).l
	move.b #$0,d2
loc_2067da:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2067e6
	move.b d2,d3
loc_2067e6:
	rts

sub_2067e8:
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
	jsr (sub_201252).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206820
	move.b #$0,d3
loc_206820:
	rts
loc_206822:
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
	jsr (sub_2013c2).l
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
	jsr (sub_2013c2).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_20679e

sub_20688a:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206892:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2013c2).l
	move.b #$c0,d2
	bra.w loc_2067da
loc_2068b2:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2013c2).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2068e0
	move.b #$c0,d3
loc_2068e0:
	rts

sub_2068e2:
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
	jsr (sub_201252).l
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
	jsr (sub_201252).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_20679e

sub_206952:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20695a:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201252).l
	move.b #$80,d2
	bra.w loc_2067da
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
	jsr (sub_201252).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2069b6
	move.b #$80,d3
loc_2069b6:
	rts
loc_2069b8:
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
	jsr (sub_2013c2).l
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
	jsr (sub_2013c2).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_20679e

sub_206a28:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206a30:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2013c2).l
	move.b #$40,d2
	bra.w loc_2067da
loc_206a54:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2013c2).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206a82
	move.b #$40,d3
loc_206a82:
	rts

sub_206a84:
	btst.b #$0,$2c(a0)
	beq.s loc_206a90
	moveq #$0,d0
	rts
loc_206a90:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206ab4
	addi.w #$c,d3
	moveq #$a,d5
loc_206ab4:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_206ac2:
	tst.b $1(a1)
	bpl.s loc_206ace
	move.b $20(a1),d0
	bne.s loc_206ada
loc_206ace:
	lea $40(a1),a1
	dbf d6,loc_206ac2
	moveq #$0,d0
	rts
loc_206ada:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206f00).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_206b02
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_206b08
	bra.w loc_206ace
loc_206b02:
	cmp.w d4,d0
	bhi.w loc_206ace
loc_206b08:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206b20
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206b26
	bra.w loc_206ace
loc_206b20:
	cmp.w d5,d0
	bhi.w loc_206ace
loc_206b26:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206bbe
	cmpi.b #$c0,d1
	beq.w loc_206db4
	tst.b d1
	bmi.w loc_206b42
	bra.s loc_206b4e
loc_206b42:
	tst.b ($ff151f).l
	bne.s loc_206ace
	bra.w sub_206c88
loc_206b4e:
	tst.b ($ff1956).l
	beq.s loc_206b5e
	tst.b $29(a1)
	bne.s loc_206b66
	rts
loc_206b5e:
	tst.b $29(a1)
	beq.s loc_206b66
	rts
loc_206b66:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206b82
	cmpi.w #$5a,$30(a0)
	bcc.s loc_206b80
	addq.b #$2,$24(a1)
loc_206b80:
	rts
loc_206b82:
	tst.w $12(a0)
	bpl.s loc_206bac
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206bbc
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206bbc
	addq.b #$4,$25(a1)
	rts
loc_206bac:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206bbc
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206bbc:
	rts

sub_206bbe:
	tst.b ($ff1521).l
	bne.s loc_206bd8
	tst.b ($ff151f).l
	bne.s loc_206bd8
	cmpi.b #$2,$1c(a0)
	bne.w sub_206c88
loc_206bd8:
	tst.b $21(a1)
	beq.s loc_206c02
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206c00
	bset.b #$7,$22(a1)
loc_206c00:
	rts
loc_206c02:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206c1a
	moveq #$6,d0
loc_206c1a:
	move.w d0,$3e(a1)
	move.w dat_206c7a(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206c34
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206c34:
	bsr.w sub_209504
	move.w #$96,d0
	jsr (sub_2023f8).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206c6a
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206c72
	neg.w $12(a0)
	rts
loc_206c6a:
	addi.w #$100,$12(a0)
	rts
loc_206c72:
	subi.w #$100,$12(a0)
	rts
dat_206c7a:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206c88:
	btst.b #$0,$2c(a0)
	bne.s loc_206ca0
	tst.b ($ff1521).l
	bne.s loc_206ca0
	tst.b ($ff151f).l
	beq.s loc_206ca4
loc_206ca0:
	moveq #$ffffffff,d0
	rts
loc_206ca4:
	nop
	tst.w $30(a0)
	bne.s loc_206ca0
	movea.l a1,a2

sub_206cae:
	tst.b ($ff151e).l
	bne.s loc_206ce8
	tst.w ($ff1512).l
	beq.w loc_206d52
	jsr (sub_207542).l
	bne.s loc_206ce8
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206ce8
	move.b #$1,$29(a1)
loc_206ce8:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206cfe
	move.b #$0,($ff156f).l
loc_206cfe:
	move.b #$4,$24(a0)
	bsr.w sub_204f9a
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206d2e
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206d2e:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206d3c
	neg.w $10(a0)
loc_206d3c:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206d52:
	tst.w ($ff1588).l
	bne.w loc_206ce8

sub_206d5c:
	tst.w ($ff1906).l
	bne.s loc_206db0
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_204f9a
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_2023f8).l
loc_206db0:
	moveq #$ffffffff,d0
	rts
loc_206db4:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_206ec4
	cmpi.b #$17,d1
	beq.w loc_206e4c
	cmpi.b #$1f,d1
	beq.w loc_206e4c
	cmpi.b #$22,d1
	beq.w loc_206e94
	cmpi.b #$23,d1
	beq.w loc_206e4c
	cmpi.b #$2d,d1
	beq.w loc_206ea2
	cmpi.b #$30,d1
	beq.w loc_206eae
	tst.b ($f7aa).w
	beq.w loc_206e4a
	cmpi.b #$1,($f7aa).w
	beq.s loc_206e14
	cmpi.b #$4,($f7aa).w
	beq.s loc_206e36
	cmpi.b #$5,($f7aa).w
	beq.s loc_206e44
loc_206e14:
	cmpi.b #$3c,d1
	blt.s loc_206e4a
	cmpi.b #$3f,d1
	bgt.s loc_206e4a
	bsr.w sub_206bbe
	tst.b $20(a1)
	bne.s loc_206e2e
	addq.b #$3,$21(a1)
loc_206e2e:
	clr.b $20(a1)
	bra.w loc_206e4c
loc_206e36:
	cmpi.b #$3f,d1
	beq.s loc_206e58
	cmpi.b #$3e,d1
	beq.s loc_206e52
	bra.s loc_206e4a
loc_206e44:
	cmpi.b #$3d,d1
	beq.s loc_206e52
loc_206e4a:
	rts
loc_206e4c:
	addq.b #$1,$21(a1)
	rts
loc_206e52:
	bsr.w sub_206c88
	bra.s loc_206e4c
loc_206e58:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206e92
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206e92
	neg.w $10(a0)
loc_206e92:
	rts
loc_206e94:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206ea0
	addq.b #$1,$21(a1)
loc_206ea0:
	rts
loc_206ea2:
	btst.b #$2,$22(a0)
	beq.w sub_206bbe
	bra.s loc_206e4c
loc_206eae:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_206bbe
	bra.s loc_206e4c
loc_206ec4:
	tst.w $12(a0)
	bpl.s loc_206eee
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206efe
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206efe
	addq.b #$4,$25(a1)
	rts
loc_206eee:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206efe
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206efe:
	rts
dat_206f00:
	.incbin 28416, 126
loc_206f7e:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206f94
	move.l #$4000,(dat_20710e).l
	bra.s loc_206fb4
loc_206f94:
	addi.l #$2000,(dat_20710e).l
	cmpi.l #$80000,(dat_20710e).l
	bls.s loc_206fb4
	move.l #$80000,(dat_20710e).l
loc_206fb4:
	move.l (dat_20710e).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206fc6
	sub.l d0,$c(a0)
loc_206fc6:
	btst.b #$1,($f604).w
	beq.s loc_206fd2
	add.l d0,$c(a0)
loc_206fd2:
	btst.b #$2,($f604).w
	beq.s loc_206fde
	sub.l d0,$8(a0)
loc_206fde:
	btst.b #$3,($f604).w
	beq.s loc_206fea
	add.l d0,$8(a0)
loc_206fea:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_20106a).l
	move.w (a1),($ff194e).l
	lea (dat_207112).l,a2
	btst.b #$6,($f605).w
	beq.s loc_20702c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_207026
	move.b #$0,d1
loc_207026:
	move.b d1,($ff1904).l
loc_20702c:
	btst.b #$7,($f605).w
	beq.s loc_20704c
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_207046
	add.b (a2),d1
loc_207046:
	move.b d1,($ff1904).l
loc_20704c:
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
	beq.s loc_2070d8
	bsr.w sub_207542
	bne.s loc_2070d8
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
loc_2070d8:
	btst.b #$4,($f605).w
	beq.s loc_207108
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_207108:
	jmp (sub_20371e).l
dat_20710e:
	dc.b $00,$00,$40,$00
dat_207112:
	.incbin 28946, 542

sub_207330:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_20733e:
	clr.l (a2)+
	dbf d0,loc_20733e
	rts

sub_207346:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207354(pc,d0.w),d0
	jmp dat_207354(pc,d0.w)
dat_207354:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2075f4).l,a0
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
	bcc.s loc_207392
	moveq #$0,d6
loc_207392:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20739a:
	cmp.w (a0),d6
	bls.s loc_2073ac
	tst.b $4(a0)
	bpl.s loc_2073a8
	move.b (a2),d2
	addq.b #$1,(a2)
loc_2073a8:
	addq.w #$8,a0
	bra.s loc_20739a
loc_2073ac:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2073cc
loc_2073ba:
	cmp.w (a0),d6
	bls.s loc_2073cc
	tst.b $4(a0)
	bpl.s loc_2073c8
	addq.b #$1,$1(a2)
loc_2073c8:
	addq.w #$8,a0
	bra.s loc_2073ba
loc_2073cc:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_2074b6
	bge.s loc_20745c
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_207438
loc_207406:
	cmp.w -$8(a0),d6
	bge.s loc_207438
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_20741c
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_20741c:
	bsr.w sub_2074da
	bne.s loc_207426
	subq.w #$8,a0
	bra.s loc_207406
loc_207426:
	tst.b $4(a0)
	bpl.s loc_207436
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207436:
	addq.w #$8,a0
loc_207438:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207444:
	cmp.w -$8(a0),d6
	bgt.s loc_207456
	tst.b -$4(a0)
	bpl.s loc_207452
	subq.b #$1,(a2)
loc_207452:
	subq.w #$8,a0
	bra.s loc_207444
loc_207456:
	move.l a0,($f770).w
	rts
loc_20745c:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207470:
	cmp.w (a0),d6
	bls.s loc_207492
	tst.b $4(a0)
	bpl.s loc_20747e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20747e:
	bsr.w sub_2074da
	beq.s loc_207470
	tst.b $4(a0)
	bpl.s loc_207492
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207492:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_2074b2
loc_2074a0:
	cmp.w (a0),d6
	bls.s loc_2074b2
	tst.b $4(a0)
	bpl.s loc_2074ae
	addq.b #$1,$1(a2)
loc_2074ae:
	addq.w #$8,a0
	bra.s loc_2074a0
loc_2074b2:
	move.l a0,($f774).w
loc_2074b6:
	rts

sub_2074b8:
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

sub_2074da:
	bsr.s sub_2074b8
	beq.s loc_2074ec
	tst.b $4(a0)
	bpl.s loc_2074f2
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2074f2
loc_2074ec:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2074f2:
	bsr.w sub_207542
	bne.s loc_207540
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
	bpl.s loc_207522
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_207522:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207534
	nop
	nop
	nop
	nop
loc_207534:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207540:
	rts

sub_207542:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20754a:
	tst.b (a1)
	beq.s loc_207556
	lea $40(a1),a1
	dbf d0,loc_20754a
loc_207556:
	rts

sub_207558:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207576
loc_20756a:
	tst.b (a1)
	beq.s loc_207576
	lea $40(a1),a1
	dbf d0,loc_20756a
loc_207576:
	rts
loc_207578:
	move.w $8(a0),d0
loc_20757c:
	tst.b $1(a0)
	bmi.s loc_2075e6
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2075e6
loc_20759a:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2075dc
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2075d4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2075cc
	moveq #$0,d1
	bra.s loc_2075d4
loc_2075cc:
	cmpi.w #$3,d1
	bcs.s loc_2075d4
	moveq #$2,d1
loc_2075d4:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2075dc:
	jsr (sub_2037ca).l
	moveq #$1,d0
	rts
loc_2075e6:
	btst.b #$7,($ff152e).l
	bne.s loc_20759a
	moveq #$0,d0
	rts
dat_2075f4:
	.incbin 30196, 970

sub_2079be:
	btst.b #$3,$22(a0)
	beq.s loc_207a2e
	btst.b #$3,$22(a1)
	beq.s loc_207a2e
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207a2e
	tst.b $2a(a1)
	beq.s loc_2079f0
	move.w #$ab,d0
	jsr (sub_2023f8).l
loc_2079f0:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207a1c
	cmpi.b #$17,$1c(a1)
	beq.s loc_207a1c
	bclr.b #$0,$2c(a1)
loc_207a1c:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207a2e
	bclr.b #$1,$22(a1)
loc_207a2e:
	rts

sub_207a30:
	cmpi.b #$4,$24(a1)
	bne.s loc_207a42
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207a42:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207aa2
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207a64
	bclr.b #$3,$22(a0)
	bra.w sub_2079be
loc_207a64:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207aa2
	tst.b ($ff195b).l
	beq.s loc_207a8c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207a9c
loc_207a8c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207a9c:
	move.b #$0,$1c(a1)
loc_207aa2:
	bset.b #$3,$22(a1)
	beq.s loc_207ac4
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207afc
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207ac4:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207af0
	cmpi.b #$2,$24(a0)
	beq.s loc_207af6
loc_207af0:
	move.w $10(a1),$14(a1)
loc_207af6:
	bclr.b #$1,$22(a1)
loc_207afc:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_207b06:
	move.b #$1,$25(a0)

sub_207b0c:
	cmpi.b #$17,$1c(a1)
	beq.w loc_207dc0
	btst.b #$6,$2c(a1)
	bne.w loc_207dc0
	cmpi.b #$6,$24(a1)
	bcc.w loc_207dc0
	tst.b $0(a1)
	beq.w loc_207dc0
	tst.b $1(a0)
	bpl.w loc_207dc0
	tst.b ($ff1906).l
	bne.w loc_207dc0
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_207dc0
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_207dc0
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207b7a
	btst.b #$3,$22(a0)
	bne.s loc_207b8c
	bra.w loc_207dc0
loc_207b7a:
	cmpi.b #$1,$25(a0)
	bne.s loc_207b8c
	tst.w $12(a1)
	beq.s loc_207b8c
	bmi.w loc_207dc0
loc_207b8c:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_207dc0
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_207dc0
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207bc2
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207bc2:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207bd0
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207bd0:
	cmp.w d4,d5
	bcs.w loc_207c64
	cmpi.b #$1,$25(a0)
	beq.w loc_207dc0
	cmpi.b #$a,$0(a0)
	bne.s loc_207bf2
	btst.b #$1,$22(a1)
	bne.w loc_207dc0
loc_207bf2:
	cmpi.b #$4,d5
	bls.w loc_207dc0
	bsr.w sub_207e10
	move.l d0,-(a7)
	bsr.w sub_2079be
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207c1c
	tst.w $10(a1)
	beq.s loc_207c4c
	bpl.s loc_207c24
	bra.s loc_207c4c
loc_207c1c:
	tst.w $10(a1)
	beq.s loc_207c4c
	bpl.s loc_207c4c
loc_207c24:
	bsr.w sub_207dd0
	btst.b #$1,$22(a1)
	bne.s loc_207c42
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_207c42:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_207c4c:
	bsr.w sub_207e86
	bsr.w sub_207dd0
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_207c64:
	cmpi.b #$19,$0(a0)
	bne.s loc_207c76
	btst.b #$2,$22(a1)
	bne.w loc_207dc0
loc_207c76:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_207c8c
	bmi.w loc_207d5c
loc_207c8c:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_207c9e
	tst.w $12(a1)
	beq.s loc_207c9e
	bmi.w loc_207dc0
loc_207c9e:
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
	beq.s loc_207cea
	bpl.s loc_207cca
	neg.b d0
loc_207cca:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066a8).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207cea
	tst.w $10(a0)
	bpl.s loc_207ce6
	neg.w d1
loc_207ce6:
	add.w d1,$8(a1)
loc_207cea:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_207d54
	tst.w $12(a0)
	bmi.s loc_207d28
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20673a).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207d28
	add.w d1,$c(a1)
	bra.w loc_207dc0
loc_207d28:
	tst.w $12(a0)
	bpl.s loc_207d54
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206952).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207d54
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d5c).l
	movem.l (a7)+,a0-a1
	bra.s loc_207dc0
loc_207d54:
	bsr.w sub_207a30
	moveq #$1,d0
	rts
loc_207d5c:
	cmpi.b #$1,$25(a0)
	beq.s loc_207dc0
	cmpi.b #$9,$0(a0)
	beq.s loc_207dc0
	cmpi.b #$a,$0(a0)
	bne.s loc_207d86
	cmpi.b #$2,$25(a0)
	beq.s loc_207da6
	btst.b #$1,$1(a0)
	bne.s loc_207da6
	bra.s loc_207dc0
loc_207d86:
	btst.b #$1,$22(a1)
	bne.s loc_207da6
	tst.w $12(a0)
	beq.s loc_207da6
	bmi.s loc_207da6
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d5c).l
	movem.l (a7)+,a0-a1
loc_207da6:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_207e86
	bsr.w sub_2079be
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_207dc0:
	bsr.w sub_207e86
	bsr.w sub_2079be
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_207dd0:
	tst.w $10(a0)
	beq.s loc_207e0e
	cmpi.b #$a,$0(a0)
	beq.s loc_207e0e
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_207dea
	neg.b d0
loc_207dea:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_2066a8).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_207e0e
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d5c).l
	movem.l (a7)+,a0-a1
loc_207e0e:
	rts

sub_207e10:
	cmpi.b #$a,$0(a0)
	bne.s loc_207e20
	move.b #$0,$20(a1)
	rts
loc_207e20:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207e74
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_207e84
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_207e42
	tst.w $10(a2)
	beq.s loc_207e84
loc_207e42:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_207e54
	cmp.w $8(a2),d1
	bcs.s loc_207e84
	bra.s loc_207e5a
loc_207e54:
	cmp.w $8(a2),d1
	bcc.s loc_207e84
loc_207e5a:
	cmpi.b #$15,$0(a0)
	beq.s loc_207e84
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d5c).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_207e74:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_207e84:
	rts

sub_207e86:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_207ea0
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_207ea0
	move.b #$0,$20(a1)
loc_207ea0:
	rts
	.incbin 32418, 374
loc_208018:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208026(pc,d0.w),d0
	jmp dat_208026(pc,d0.w)
dat_208026:
	.incbin 32806, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208018
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20807c
	tst.b $1(a0)
	bpl.s loc_208084
loc_20807c:
	move.w dat_2080d6(pc,d0.w),d1
	jsr dat_2080d6(pc,d1.w)
loc_208084:
	bsr.w sub_20371e
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_2080b6
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_2080b6:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2037ca
	rts
dat_2080d6:
	.incbin 32982, 26
	addq.b #$2,$24(a0)
	move.l #$208458,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208146
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20845e,$4(a0)
	bra.s loc_208188
loc_208146:
	btst.l #$3,d0
	beq.s loc_208174
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$2084a8,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20d942).l
	move.l (a7)+,d0
	bra.s loc_208188
loc_208174:
	btst.b #$1,$1(a0)
	beq.s loc_208188
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208188:
	btst.l #$1,d0
	beq.s loc_208194
	bset.b #$5,$2(a0)
loc_208194:
	andi.w #$2,d0
	move.w dat_2081a0(pc,d0.w),$30(a0)
	rts
dat_2081a0:
	dc.b $f0,$00,$f6,$00

sub_2081a4:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207b0c).l
	tst.b $1(a0)
	bpl.s loc_2081c0
	lea ($d000).w,a1
	bsr.s sub_2081a4
	bne.s loc_2081c2
loc_2081c0:
	rts
loc_2081c2:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2023f8).l
	.incbin 33268, 834
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208544(pc,d0.w),d1
	jmp dat_208544(pc,d1.w)
dat_208544:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20854e:
	.incbin 34126, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2085a6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20859e
	moveq #$0,d1
	bra.s loc_2085a6
loc_20859e:
	cmpi.w #$3,d1
	bcs.s loc_2085a6
	moveq #$2,d1
loc_2085a6:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_2085c2
	moveq #$6,d1
loc_2085c2:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20854e).l,a1
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
	beq.s loc_208612
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20860a
	moveq #$0,d0
	bra.s loc_208612
loc_20860a:
	cmpi.w #$3,d0
	bcs.s loc_208612
	moveq #$2,d0
loc_208612:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2086e0
	dbf d0,loc_208612
	bclr.b #$7,(a2)
	bra.s loc_208668
loc_208624:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208650
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208648
	moveq #$0,d0
	bra.s loc_208650
loc_208648:
	cmpi.w #$3,d0
	bcs.s loc_208650
	moveq #$2,d0
loc_208650:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_2086e0
	dbf d0,loc_208650
	bclr.b #$7,(a2)
	bsr.w sub_207558
	bne.w loc_2086ec
loc_208668:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$2089b2,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2086be
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_2086be
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_2086be:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_2086e0:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_208624
loc_2086ec:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208712
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20870a
	moveq #$0,d0
	bra.s loc_208712
loc_20870a:
	cmpi.w #$3,d0
	bcs.s loc_208712
	moveq #$2,d0
loc_208712:
	lea $1(a2),a3
loc_208716:
	btst.b #$0,-(a3)
	bne.w sub_2037ca
	dbf d0,loc_208716
	tst.b $1(a0)
	bmi.s loc_208746
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_2087c0
loc_208746:
	tst.w ($ff190e).l
	bne.s loc_208756
	move.b ($ff1913).l,$1a(a0)
loc_208756:
	bra.w sub_20371e
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_2087c4
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2087a6
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20879e
	moveq #$0,d1
	bra.s loc_2087a6
loc_20879e:
	cmpi.w #$3,d1
	bcs.s loc_2087a6
	moveq #$2,d1
loc_2087a6:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_2089aa).l,a1
	bsr.w sub_205944
	bra.w sub_20371e
loc_2087c0:
	bra.w sub_2037ca

sub_2087c4:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208814
	bset.b #$1,($ff150d).l
	beq.s loc_2087fe
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208814
	bset.b #$2,($ff150d).l
	bne.s loc_208814
loc_2087fe:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205904).l
loc_208814:
	jmp (sub_2023f8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208828(pc,d0.w),d1
	jmp dat_208828(pc,d1.w)
dat_208828:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_208844
	move.w d0,d5
loc_208844:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_208854
loc_20884c:
	bsr.w sub_207542
	bne.w loc_20890a
loc_208854:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$2089b2,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_2088b2
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_2088b2
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_2088b2:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_2088fa
	move.w d4,d0
	jsr (sub_2008fc).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_2088fa
	subi.w #$80,d4
	bcc.s loc_2088fa
	move.w #$288,d4
loc_2088fa:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_20884c
loc_20890a:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2023f8).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2036c8
	addi.w #$18,$12(a0)
	bmi.s loc_20896a
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_20896a
	jsr (sub_2067e8).l
	tst.w d1
	bpl.s loc_20896a
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_20896a:
	tst.b ($ff1916).l
	beq.s loc_2089a6
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_2089a6
	bra.w sub_20371e
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_2087c4
	lea (dat_2089aa).l,a1
	bsr.w sub_205944
	bra.w sub_20371e
loc_2089a6:
	bra.w sub_2037ca
dat_2089aa:
	.incbin 35242, 402
loc_208b3c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208b6a(pc,d0.w),d0
	jsr dat_208b6a(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208b68
	cmpi.w #$5a,($f786).w
	bcs.s loc_208b62
	btst.b #$0,($ff1505).l
	bne.s loc_208b68
loc_208b62:
	jmp (sub_20371e).l
loc_208b68:
	rts
dat_208b6a:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209144,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208b9e
	move.b #$13,$1a(a0)
loc_208b9e:
	rts
loc_208ba0:
	tst.b ($ff0f01).l
	beq.s loc_208bae
	jmp (sub_2037ca).l
loc_208bae:
	cmpi.b #$a,$28(a0)
	beq.w loc_208b3c
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208bd2(pc,d0.w),d0
	jsr dat_208bd2(pc,d0.w)
	jsr (sub_20371e).l
	jmp (loc_207578).l
dat_208bd2:
	.incbin 35794, 282

sub_208cec:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208d24
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208d1c
	moveq #$0,d1
	bra.s loc_208d24
loc_208d1c:
	cmpi.w #$3,d1
	bcs.s loc_208d24
	moveq #$2,d1
loc_208d24:
	add.w d1,d0
	rts

sub_208d28:
	cmpi.b #$6,($ff1506).l
	bne.s loc_208d4a
	tst.b ($ff1956).l
	beq.s loc_208d42
	tst.b $29(a0)
	bne.s loc_208d4a
	rts
loc_208d42:
	tst.b $29(a0)
	beq.s loc_208d4a
	rts
loc_208d4a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207b0c).l
	tst.b $28(a0)
	bne.s loc_208d6c
	tst.b ($ff0f01).l
	beq.s loc_208d6c
	jmp (loc_207578).l
loc_208d6c:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208ba0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d84(pc,d0.w),d1
	jmp dat_208d84(pc,d1.w)
dat_208d84:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209144,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208dce
	tst.b $29(a0)
	bne.s loc_208dce
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_208dce:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_208cec
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_208dfa
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_208dfa:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_208e54
	move.b $25(a0),d0
	beq.s loc_208e34
	bsr.w sub_203666
	jsr (sub_2067e8).l
	tst.w d1
	bpl.w loc_208e42
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_208e42
loc_208e34:
	tst.b $1(a0)
	bpl.s loc_208e42
	lea ($d000).w,a1
	bsr.w sub_208d28
loc_208e42:
	tst.w ($ff190e).l
	bne.s loc_208e54
	lea (dat_2090bc).l,a1
	bsr.w sub_205944
loc_208e54:
	bsr.w sub_20371e
	jmp (loc_207578).l
	.incbin 36446, 606
dat_2090bc:
	.incbin 37052, 586
loc_209306:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20931a(pc,d0.w),d0
	jsr dat_20931a(pc,d0.w)
	jmp (sub_20371e).l
dat_20931a:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20935a,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_209354
	jmp (sub_2037ca).l
loc_209354:
	subq.w #$2,$c(a0)
	rts
	.incbin 37722, 82
	tst.b $28(a0)
	bmi.w loc_209306
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2093c2(pc,d0.w),d0
	jmp dat_2093c2(pc,d0.w)
dat_2093c2:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20945c,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_2093f2
	move.b #$3,$1a(a0)
	bra.s loc_209412
loc_2093f2:
	tst.w ($ff1588).l
	beq.s loc_209400
	move.b #$2,$1a(a0)
loc_209400:
	tst.b $28(a0)
	beq.s loc_209412
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_209412:
	tst.b $28(a0)
	bne.s loc_209456
	tst.b $29(a0)
	beq.s loc_209442
	tst.w ($ff1512).l
	beq.s loc_20942e
	bclr.b #$5,$2(a0)
	bra.s loc_209456
loc_20942e:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_209456
	eori.b #$20,$2(a0)
	bra.s loc_209456
loc_209442:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_209456
	move.b #$2,$1a(a0)
loc_209456:
	jmp (sub_20371e).l
	.incbin 37980, 168

sub_209504:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_209520
	move.l d1,(a3)
loc_209520:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20954a
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205904).l
loc_20954a:
	rts
loc_20954c:
	tst.w ($ff1588).l
	beq.s loc_2095a2
	bsr.w sub_20979e
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
	lea (dat_2098fe).l,a2
	moveq #$2,d6
	bsr.w sub_209956
	bra.w loc_2095fc
loc_2095a2:
	tst.b ($ff1511).l
	beq.s loc_2095c6
	bpl.s loc_2095b0
	bsr.w sub_209748
loc_2095b0:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209838
loc_2095c6:
	tst.b ($ff150f).l
	beq.s loc_2095fc
	bpl.s loc_2095d4
	bsr.w sub_209734
loc_2095d4:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_2095f8
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_2095f8:
	bsr.w sub_20982e
loc_2095fc:
	tst.w ($ff1588).l
	bne.w loc_2096a8
	tst.b ($ff1510).l
	beq.w loc_2096a8
	tst.w ($f63a).w
	bne.w loc_2096a8
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209706
	tst.b ($f7cc).w
	bne.s loc_209652
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209652
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209652
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209652
	move.b #$9,(a1)
loc_209652:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209944
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20994e
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_2096a4
	move.w #$63,d1
loc_2096a4:
	bsr.w sub_20994e
loc_2096a8:
	tst.b ($ff150e).l
	beq.s loc_2096ba
	clr.b ($ff150e).l
	bsr.w sub_209924
loc_2096ba:
	tst.b ($f7d6).w
	beq.s loc_209704
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2096da
	move.l #$6d400001,d0
loc_2096da:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_2097bc
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_2096fa
	move.l #$6e800001,d0
loc_2096fa:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_2097bc
loc_209704:
	rts
loc_209706:
	btst.b #$7,($ff152e).l
	bne.s loc_209732
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206d5c
	move.b #$1,($ff150c).l
loc_209732:
	rts

sub_209734:
	move.l #$73600002,($c00004).l
	lea dat_20979a(pc),a2
	move.w #$2,d2
	bra.s loc_209764

sub_209748:
	lea ($c00000).l,a6
	bsr.w sub_209924
	move.l #$70600002,($c00004).l
	lea dat_209792(pc),a2
	move.w #$6,d2
loc_209764:
	lea (dat_233a34).l,a1
loc_20976a:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209786
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20977a:
	move.l (a3)+,(a6)
	dbf d1,loc_20977a
loc_209780:
	dbf d2,loc_20976a
	rts
loc_209786:
	move.l #$0,(a6)
	dbf d1,loc_209786
	bra.s loc_209780
dat_209792:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20979a:
	dc.b $ff,$ff,$00,$00

sub_20979e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20991a
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20991a

sub_2097bc:
	lea (dat_2098f6).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_2097cc:
	moveq #$0,d2
	move.l (a2)+,d3
loc_2097d0:
	sub.l d3,d1
	bcs.s loc_2097d8
	addq.w #$1,d2
	bra.s loc_2097d0
loc_2097d8:
	add.l d3,d1
	tst.w d2
	beq.s loc_2097e2
	move.w #$1,d4
loc_2097e2:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_2097ee
	tst.w d6
	bne.s loc_209820
loc_2097ee:
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
loc_209814:
	addi.l #$400000,d0
	dbf d6,loc_2097cc
	rts
loc_209820:
	moveq #$f,d5
loc_209822:
	move.l #$0,(a6)
	dbf d5,loc_209822
	bra.s loc_209814

sub_20982e:
	lea (dat_2098fe).l,a2
	moveq #$2,d6
	bra.s loc_209840

sub_209838:
	lea (dat_2098f2).l,a2
	moveq #$5,d6
loc_209840:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209848:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20984c:
	sub.l d3,d1
	bcs.s loc_209854
	addq.w #$1,d2
	bra.s loc_20984c
loc_209854:
	add.l d3,d1
	tst.w d2
	beq.s loc_20985e
	move.w #$1,d4
loc_20985e:
	tst.w d4
	beq.s loc_20988c
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
loc_20988c:
	addi.l #$400000,d0
	dbf d6,loc_209848
	rts
	.incbin 39064, 90
dat_2098f2:
	dc.b $00,$01,$86,$a0
dat_2098f6:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_2098fe:
	dc.b $00,$00,$00,$64
dat_209902:
	dc.b $00,$00,$00,$0a
dat_209906:
	dc.b $00,$00,$00,$01
dat_20990a:
	.incbin 39178, 16

sub_20991a:
	moveq #$3,d6
	lea (dat_20990a).l,a2
	bra.s sub_209956

sub_209924:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20993a
	moveq #$9,d1
loc_20993a:
	lea (dat_209906).l,a2
	moveq #$0,d6
	bra.s sub_209956

sub_209944:
	lea (dat_209906).l,a2
	moveq #$0,d6
	bra.s sub_209956

sub_20994e:
	lea (dat_209902).l,a2
	moveq #$1,d6

sub_209956:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_20995e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209962:
	sub.l d3,d1
	bcs.s loc_20996a
	addq.w #$1,d2
	bra.s loc_209962
loc_20996a:
	add.l d3,d1
	tst.w d2
	beq.s loc_209974
	move.w #$1,d4
loc_209974:
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
	dbf d6,loc_20995e
	rts
	.incbin 39338, 906
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209d60(pc,d0.w),d0
	jsr dat_209d60(pc,d0.w)
	tst.b $24(a0)
	beq.s loc_209d5e
	cmpi.b #$a,$24(a0)
	beq.s loc_209d58
	cmpi.b #$6,$24(a0)
	bcc.s loc_209d5e
loc_209d58:
	jmp (sub_20371e).l
loc_209d5e:
	rts
dat_209d60:
	.incbin 40288, 2896
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a8be(pc,d0.w),d0
	jmp dat_20a8be(pc,d0.w)
dat_20a8be:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205904).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20a994,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20a91a
	tst.b ($ff1508).l
	beq.s loc_20a922
	move.l #$20a998,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20a922
loc_20a91a:
	tst.b ($ff1508).l
	bne.s loc_20a932
loc_20a922:
	bset.b #$7,($ff156b).l
	jsr (sub_207542).l
	beq.s loc_20a938
loc_20a932:
	jmp (sub_2037ca).l
loc_20a938:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20a97a
	move.w #$6e,d0
	jmp (sub_205904).l
loc_20a97a:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a98e
	bge.s loc_20a98a
	neg.w d0
loc_20a98a:
	add.w d0,$8(a0)
loc_20a98e:
	jmp (sub_20371e).l
	.incbin 43412, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a9da(pc,d0.w),d0
	jmp dat_20a9da(pc,d0.w)
dat_20a9da:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20b0d8,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20b098).l,a2
loc_20aa28:
	jsr (sub_207542).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20b0d8,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20aa7a
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20aa7a:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20aa28
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20aaa2
	bge.s loc_20aa98
	neg.w d0
loc_20aa98:
	add.w d0,$a(a0)
	jmp (sub_20371e).l
loc_20aaa2:
	addq.b #$4,$24(a0)
	jmp (sub_20371e).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20aac6
	bge.s loc_20aabc
	neg.w d0
loc_20aabc:
	add.w d0,$8(a0)
	jmp (sub_20371e).l
loc_20aac6:
	addq.b #$4,$24(a0)
	jmp (sub_20371e).l
	tst.b $1e(a0)
	beq.s loc_20aae0
	subq.b #$1,$1e(a0)
	jmp (sub_20371e).l
loc_20aae0:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20aafa
	bge.s loc_20aaf0
	neg.w d0
loc_20aaf0:
	add.w d0,$a(a0)
	jmp (sub_20371e).l
loc_20aafa:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2025c2).l
	tst.b $1e(a0)
	beq.s loc_20ab1c
	subq.b #$1,$1e(a0)
	jmp (sub_20371e).l
loc_20ab1c:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ab36
	bge.s loc_20ab2c
	neg.w d0
loc_20ab2c:
	add.w d0,$8(a0)
	jmp (sub_20371e).l
loc_20ab36:
	jmp (sub_2037ca).l
	tst.l ($f680).w
	bne.s loc_20ab50
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2037ca).l
loc_20ab50:
	rts
	.incbin 43858, 1350
dat_20b098:
	.incbin 45208, 9736
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d6ba(pc,d0.w),d0
	jsr dat_20d6ba(pc,d0.w)
	jsr (sub_20371e).l
	jmp (loc_207578).l
dat_20d6ba:
	dc.b $00,$04,$01,$00
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20d8cc,$4(a0)
	move.w #$498,$2(a0)
	move.b #$3,$18(a0)
	move.w $c(a0),$30(a0)
	clr.w $12(a0)
	clr.w $10(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,d1
	andi.w #$30,d1
	lsr.w #$3,d1
	move.w dat_20d746(pc,d1.w),d2
	move.w d2,$32(a0)
	move.b d0,d1
	andi.w #$40,d1
	lsr.w #$5,d1
	move.w dat_20d74e(pc,d1.w),d2
	move.w d2,$36(a0)
	move.w $32(a0),d2
	move.w d0,d3
	lsr.w #$2,d2
	move.w d2,d0
	jsr (sub_2008fc).l
	muls.w $36(a0),d0
	lsr.l #$8,d0
	add.w $30(a0),d0
	move.w d0,$c(a0)
	move.w d3,d0
	move.w d0,d1
	andi.w #$3,d1
	lsl.w #$1,d1
	move.w dat_20d740(pc,d1.w),d1
	jmp dat_20d740(pc,d1.w)
dat_20d740:
	dc.b $00,$1a,$00,$3e,$00,$1a
dat_20d746:
	dc.b $00,$00,$01,$00,$02,$00,$03,$00
dat_20d74e:
	dc.b $00,$20,$00,$30
dat_20d752:
	dc.b $00,$04,$00,$08,$00,$10,$00,$20
	move.b #$0,$1a(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
	move.b d0,d1
	andi.w #$c,d1
	lsr.w #$1,d1
	move.w dat_20d752(pc,d1.w),d2
	move.w d2,$34(a0)
	rts
	.incbin 55166, 60
	tst.w $12(a0)
	bpl.s loc_20d7ca
	lea ($d000).w,a1
	jsr (sub_207b0c).l
loc_20d7ca:
	move.l $c(a0),-(a7)
	moveq #$0,d0
	moveq #$0,d1
	move.b $28(a0),d0
	andi.b #$3,d0
	cmpi.b #$1,d0
	bne.s loc_20d820
	btst.b #$7,$3e(a0)
	beq.s loc_20d7fc
	move.w $c(a0),d0
	subq.b #$1,$3a(a0)
	bcc.w loc_20d844
	bclr.b #$7,$3e(a0)
	bra.s loc_20d820
loc_20d7fc:
	move.w $32(a0),d0
	cmpi.w #$100,d0
	beq.s loc_20d80e
	cmpi.w #$300,d0
	beq.s loc_20d80e
	bra.s loc_20d820
loc_20d80e:
	bset.b #$7,$3e(a0)
	move.b $38(a0),$3a(a0)
	move.w $c(a0),d0
	bra.s loc_20d844
loc_20d820:
	move.w $32(a0),d1
	add.w $34(a0),d1
	andi.w #$3ff,d1
	move.w d1,$32(a0)
	lsr.w #$2,d1
	move.w d1,d0
	jsr (sub_2008fc).l
	muls.w $36(a0),d0
	lsr.l #$8,d0
	add.w $30(a0),d0
loc_20d844:
	move.w d0,$c(a0)
	swap d0
	sub.l (a7)+,d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	moveq #$0,d1
	move.b $28(a0),d1
	andi.b #$3,d1
	cmpi.b #$1,d1
	bne.s loc_20d8a8
	move.w $32(a0),d0
	cmpi.w #$210,d0
	bne.s loc_20d8a8
	lea ($d000).w,a1
	jsr (sub_207b0c).l
	bne.s loc_20d87a
	rts
loc_20d87a:
	moveq #$0,d1
	move.b $28(a0),d1
	andi.w #$80,d1
	lsr.w #$6,d1
	move.w dat_20d8ba(pc,d1.w),d0
	move.w d0,$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	rts
loc_20d8a8:
	tst.w $12(a0)
	bmi.s loc_20d8b8
	lea ($d000).w,a1
	jsr (sub_207b0c).l
loc_20d8b8:
	rts
dat_20d8ba:
	.incbin 55482, 134

sub_20d940:
	rts

sub_20d942:
	cmpi.b #$e,d0
	bne.s loc_20d950
	move.w #$372,$2(a0)
	rts
loc_20d950:
	cmpi.b #$f,d0
	bne.s loc_20d95c
	move.w #$4f2,$2(a0)
loc_20d95c:
	rts
loc_20d95e:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20d982
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20d982:
	jmp (sub_2037ca).l
	tst.b $28(a0)
	bmi.w loc_20dc9a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d9b0(pc,d0.w),d0
	jsr dat_20d9b0(pc,d0.w)
	bsr.s sub_20d9b8
	jsr (sub_20371e).l
	move.w $36(a0),d0
	jmp (loc_20757c).l
dat_20d9b0:
	dc.b $00,$36,$01,$ae,$02,$06,$02,$e8

sub_20d9b8:
	cmpi.b #$3,$1a(a0)
	bne.s loc_20d9c2
loc_20d9c0:
	rts
loc_20d9c2:
	btst.b #$7,$1(a0)
	beq.s loc_20d9c0
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20d9da
	neg.w d0
loc_20d9da:
	cmpi.w #$20,d0
	bcc.s loc_20d9c0
	jmp (sub_207b0c).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$400,$2(a0)
	move.l #$23e35a,$4(a0)
	bsr.w sub_20daf4
	moveq #$0,d0
	tst.b $3d(a0)
	bne.w loc_20da8a
	move.b $3c(a0),d0
	asl.b #$2,d0
	lea dat_20db3a(pc),a2
	lea $0(a2,d0.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,d0
	move.b (a2)+,$19(a0)
	move.b (a2)+,$16(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	ext.w d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	move.b #$1,$3b(a0)
	jsr (sub_207542).l
	beq.s loc_20da58
	jmp (loc_20d95e).l
loc_20da58:
	move.b #$33,$0(a1)
	move.b #$1,$3d(a1)
	lea dat_20db46(pc),a2
	bsr.s sub_20dabc
	jsr (sub_207542).l
	beq.s loc_20da78
	jmp (loc_20d95e).l
loc_20da78:
	move.b #$33,$0(a1)
	move.b #$2,$3d(a1)
	lea dat_20db52(pc),a2
	bsr.s sub_20dabc
loc_20da8a:
	cmpi.b #$3,$1a(a0)
	beq.s loc_20daba
	jsr (sub_207542).l
	bne.s loc_20daba
	move.b #$33,$0(a1)
	move.b #$ff,$28(a1)
	move.w $8(a0),$8(a1)
	move.w $1a(a0),$3c(a1)
	move.w a0,$34(a1)
	move.w a1,$34(a0)
loc_20daba:
	rts

sub_20dabc:
	moveq #$0,d0
	move.b $3c(a0),d0
	asl.b #$2,d0
	lea $0(a2,d0.w),a2
	move.b (a2)+,$1a(a1)
	move.b (a2)+,d0
	move.b (a2)+,$19(a1)
	move.b (a2)+,$16(a1)
	move.w $36(a0),$36(a1)
	move.w $c(a0),$c(a1)
	ext.w d0
	add.w $36(a0),d0
	move.w d0,$8(a1)
	move.b $28(a0),$28(a1)
	rts

sub_20daf4:
	moveq #$0,d0
	move.b $28(a0),d0
	move.b dat_20db02(pc,d0.w),$3c(a0)
	rts
dat_20db02:
	.incbin 56066, 56
dat_20db3a:
	dc.b $01,$cc,$1c,$08,$04,$bc,$0c,$08
	dc.b $05,$dc,$2c,$08
dat_20db46:
	dc.b $03,$00,$18,$08,$03,$e0,$18,$08
	dc.b $03,$20,$18,$08
dat_20db52:
	dc.b $02,$34,$1c,$08,$05,$24,$2c,$08
	dc.b $04,$44,$0c,$08
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcs.s loc_20db88
	cmpi.w #$100,d0
	bcc.s loc_20db88
	lea loc_20db8a(pc),a2
	tst.b $28(a0)
	beq.s loc_20db80
	lea sub_20db92(pc),a2
loc_20db80:
	jsr (a2)
	beq.s loc_20db88
	addq.b #$2,$24(a0)
loc_20db88:
	rts
loc_20db8a:
	moveq #$0,d1
	move.b #$30,d1
	bra.s loc_20db98

sub_20db92:
	moveq #$0,d1
	move.b #$50,d1
loc_20db98:
	lea ($d000).w,a1
	move.w $8(a1),d0
	sub.w $36(a0),d0
	add.w d1,d0
	bmi.s loc_20dbb2
	add.w d1,d1
	cmp.w d1,d0
	bcc.s loc_20dbb2
	moveq #$1,d0
	rts
loc_20dbb2:
	moveq #$0,d0
	rts
	tst.b $28(a0)
	bne.s loc_20dbc4
	tst.b $3d(a0)
	bne.s loc_20dbc4
	bsr.s sub_20dc14
loc_20dbc4:
	tst.b $3f(a0)
	bne.s loc_20dbfa
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20dc08(pc,d0.w),d0
	move.l $c(a0),-(a7)
	add.w d0,$c(a0)
	jsr (sub_2067e8).l
	move.l (a7)+,$c(a0)
	tst.w d1
	bmi.s loc_20dbfc
	addi.l #$8000,$c(a0)
	move.w #$80,$12(a0)
loc_20dbfa:
	rts
loc_20dbfc:
	clr.w $12(a0)
	move.b #$ff,$3f(a0)
	rts
dat_20dc08:
	dc.b $00,$08,$00,$20,$00,$38,$00,$50
	dc.b $00,$68,$00,$80

sub_20dc14:
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20dc2a
	neg.w d0
	cmpi.w #$80,d0
	bcc.s loc_20dc5c
loc_20dc2a:
	bsr.w sub_20db92
	beq.s loc_20dc5c
	addq.w #$1,$30(a0)
	cmpi.w #$12c,$30(a0)
	bne.s loc_20dc3e
	bra.s loc_20dc5e
loc_20dc3e:
	cmpi.w #$258,$30(a0)
	bne.s loc_20dc48
	bra.s loc_20dc5e
loc_20dc48:
	cmpi.w #$348,$30(a0)
	bne.s loc_20dc52
	bra.s loc_20dc5e
loc_20dc52:
	cmpi.w #$438,$30(a0)
	bne.s loc_20dc5c
	bra.s loc_20dc5e
loc_20dc5c:
	rts
loc_20dc5e:
	cmpi.b #$5,$3b(a0)
	bcc.s loc_20dc96
	jsr (sub_207542).l
	beq.s loc_20dc70
	rts
loc_20dc70:
	move.b #$33,$0(a1)
	move.w $36(a0),$8(a1)
	moveq #$0,d0
	move.b $3b(a0),d0
	move.b d0,$28(a1)
	asl.w #$4,d0
	neg.w d0
	add.w $32(a0),d0
	move.w d0,$c(a1)
	addq.b #$1,$3b(a0)
loc_20dc96:
	rts
	dc.b $4e,$75
loc_20dc9a:
	ori.b #$4,$1(a0)
	move.l #$23e35a,$4(a0)
	move.w #$4400,$2(a0)
	move.b #$6,$1a(a0)
	move.w $34(a0),d0
	beq.s loc_20dcea
	movea.w d0,a1
	cmpi.b #$33,$0(a1)
	bne.s loc_20dcea
	move.w $12(a1),$12(a0)
	move.w $c(a1),d0
	addi.w #$c,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $3c(a0),d0
	move.b dat_20dcf0(pc,d0.w),d0
	move.b d0,$20(a0)
	jmp (sub_20371e).l
loc_20dcea:
	jmp (sub_2037ca).l
dat_20dcf0:
	dc.b $00,$9c,$9c,$00,$9b,$9d
	tst.b $28(a0)
	bmi.w loc_20dde6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dd1c(pc,d0.w),d0
	jsr dat_20dd1c(pc,d0.w)
	jsr (sub_20371e).l
	move.w $36(a0),d0
	jmp (loc_20757c).l
dat_20dd1c:
	.incbin 56604, 202
loc_20dde6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20de3a(pc,d0.w),d0
	jsr dat_20de3a(pc,d0.w)
	jsr (sub_20371e).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20de2a
	movea.w d1,a1
	tst.b $0(a1)
	beq.s loc_20de34
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20de2a:
	move.w $36(a0),d0
	jmp (loc_20757c).l
loc_20de34:
	jmp (sub_2037ca).l
dat_20de3a:
	dc.b $00,$04,$00,$5a
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$488,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20df2a,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	cmpi.b #$ff,$28(a0)
	beq.s loc_20de94
	move.b #$1,$1a(a0)
	move.b #$12,$19(a0)
	move.b #$8,$16(a0)
	move.b #$83,$20(a0)
loc_20de94:
	tst.b $1a(a0)
	bne.w loc_20df04
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20deac
	neg.w d0
loc_20deac:
	cmpi.w #$20,d0
	bcc.s loc_20df02
	jsr (sub_207b0c).l
	beq.s loc_20df02
	btst.b #$3,$22(a0)
	beq.s loc_20df02
	tst.b ($ff1521).l
	bne.s loc_20df02
	tst.b ($ff151f).l
	bne.s loc_20df02
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20df00
	tst.w $30(a0)
	bne.s loc_20df00
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206cae).l
loc_20df00:
	movea.l (a7)+,a0
loc_20df02:
	rts
loc_20df04:
	btst.b #$7,$1(a0)
	beq.s loc_20df28
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20df1c
	neg.w d0
loc_20df1c:
	cmpi.w #$20,d0
	bcc.s loc_20df28
	jsr (sub_207b0c).l
loc_20df28:
	rts
	.incbin 57130, 48
	tst.b $29(a0)
	bpl.s loc_20df64
	bra.w loc_20e088
loc_20df64:
	jsr (sub_20f2a4).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20df88(pc,d0.w),d0
	jsr dat_20df88(pc,d0.w)
	jsr (sub_20371e).l
	move.w $30(a0),d0
	jmp (loc_20757c).l
dat_20df88:
	.incbin 57224, 256
loc_20e088:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e09c(pc,d0.w),d0
	jsr dat_20e09c(pc,d0.w)
	jmp (sub_20371e).l
dat_20e09c:
	.incbin 57500, 236
	tst.b $29(a0)
	bne.w loc_20e31a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e19e(pc,d0.w),d0
	jmp dat_20e19e(pc,d0.w)
dat_20e19e:
	dc.b $00,$0a,$00,$66,$00,$a4,$00,$be
	dc.b $01,$66
	move.b #$4,$1(a0)
	move.l #$20e382,$4(a0)
	move.b #$11,$16(a0)
	move.w #$44d8,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20e1ce
	move.w #$437a,d0
loc_20e1ce:
	move.w d0,$2(a0)
	move.b $28(a0),d0
	bpl.s loc_20e1da
	neg.b d0
loc_20e1da:
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	moveq #$3,d0
	moveq #$2,d1
	tst.b $28(a0)
	bpl.s loc_20e1fa
	moveq #$1,d0
	moveq #$8,d1
loc_20e1fa:
	move.b d0,$18(a0)
	move.b d1,$24(a0)
	rts
	lea ($d000).w,a1
	jsr (sub_207b06).l
	beq.s loc_20e236
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20e228
	neg.w d0
loc_20e228:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_2023f8).l
loc_20e236:
	jsr (sub_20371e).l
	jmp (loc_207578).l
	.incbin 57922, 216
loc_20e31a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e328(pc,d0.w),d0
	jmp dat_20e328(pc,d0.w)
dat_20e328:
	.incbin 58152, 490
	tst.b $29(a0)
	bne.w loc_20e710
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e542(pc,d0.w),d0
	jsr dat_20e542(pc,d0.w)
	lea dat_20e74c(pc),a1
	jsr (sub_205944).l
	jsr (sub_20371e).l
	move.w $36(a0),d0
	jmp (loc_20757c).l
dat_20e542:
	dc.b $00,$0a,$01,$06,$01,$3e,$01,$5a
	dc.b $01,$94
	move.w $8(a0),$36(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$4316,$2(a0)
	move.l #$23e3c8,$4(a0)
	move.b #$a9,$20(a0)
	move.b #$50,$19(a0)
	move.b #$50,$16(a0)
	move.l #$10000,$2c(a0)
	move.l #$10000,$30(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e5a6
	neg.l $2c(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20e5a6:
	btst.b #$1,$28(a0)
	beq.s loc_20e5be
	neg.l $30(a0)
	bset.b #$1,$1(a0)
	bset.b #$1,$22(a0)
loc_20e5be:
	move.w #$3c,$2a(a0)
	move.b #$8,$24(a0)
	tst.b $28(a0)
	bpl.s loc_20e5dc
	move.b #$9,$1c(a0)
	move.b #$4,$24(a0)
loc_20e5dc:
	jsr (sub_207542).l
	bne.w loc_20e746
	move.w a1,$3a(a0)
	move.w a0,$2a(a1)
	move.b $0(a0),$0(a1)
	move.b $1(a0),$1(a1)
	move.w $2(a0),$2(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b $28(a0)
	bpl.s loc_20e648
	moveq #$50,d0
	moveq #$50,d1
	btst.b #$0,$28(a0)
	beq.s loc_20e636
	neg.w d0
loc_20e636:
	btst.b #$1,$28(a0)
	beq.s loc_20e640
	neg.w d1
loc_20e640:
	sub.w d0,$8(a1)
	sub.w d1,$c(a1)
loc_20e648:
	addi.w #$ffff,$2a(a0)
	bne.s loc_20e66c
	addq.b #$1,$1c(a0)
	move.w #$9,$2a(a0)
	addi.w #$ffff,$34(a0)
	bne.s loc_20e66c
	addq.b #$2,$24(a0)
	move.w #$3c,$2a(a0)
loc_20e66c:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	bra.w loc_20e6f0
	addi.w #$ffff,$2a(a0)
	bne.s loc_20e698
	addq.b #$2,$24(a0)
	move.w #$9,$34(a0)
	move.w #$1,$2a(a0)
loc_20e698:
	bra.w loc_20e6f0
	addi.w #$ffff,$2a(a0)
	bne.s loc_20e6c2
	addi.b #$ff,$1c(a0)
	move.w #$9,$2a(a0)
	addi.w #$ffff,$34(a0)
	bne.s loc_20e6c2
	addq.b #$2,$24(a0)
	move.w #$3c,$2a(a0)
loc_20e6c2:
	move.l $2c(a0),d0
	sub.l d0,$8(a0)
	move.l $30(a0),d0
	sub.l d0,$c(a0)
	bra.w loc_20e6f0
	addi.w #$ffff,$2a(a0)
	bne.s loc_20e6f0
	addi.b #$fa,$24(a0)
	move.w #$9,$34(a0)
	move.w #$1,$2a(a0)
loc_20e6f0:
	tst.b $1(a0)
	bpl.s loc_20e70e
	addq.w #$1,$38(a0)
	move.w $38(a0),d0
	andi.w #$1f,d0
	bne.s loc_20e70e
	move.w #$b1,d0
	jsr (sub_2023f8).l
loc_20e70e:
	rts
loc_20e710:
	movea.w $2a(a0),a1
	cmpi.b #$27,$0(a1)
	bne.s loc_20e746
	tst.b $24(a0)
	bne.s loc_20e740
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20e784,$4(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
loc_20e740:
	jmp (sub_20371e).l
loc_20e746:
	jmp (sub_2037ca).l
dat_20e74c:
	.incbin 59212, 74
	move.w $2a(a0),d0
	bne.w loc_20e972
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e7ac(pc,d0.w),d0
	jmp dat_20e7ac(pc,d0.w)
dat_20e7ac:
	dc.b $00,$0a,$00,$b4,$01,$0e,$01,$3a
	dc.b $01,$5e
	addq.b #$2,$24(a0)
	move.w $c(a0),$2e(a0)
	subi.w #$10,$2e(a0)
	lea dat_20e854(pc),a1
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	add.w d0,d0
	move.l $0(a1,d0.w),$4(a0)
	jsr (sub_207558).l
	bne.w loc_20e97e
	move.b $0(a0),$0(a1)
	move.w $8(a0),$8(a1)
	move.l $4(a0),$4(a1)
	move.w a0,$2a(a1)
	move.w a1,$2c(a0)
	bsr.s sub_20e81e
	sub.w d0,$c(a1)
	sub.w d0,$30(a1)
	sub.w d1,$32(a1)
	movea.w a0,a1
	bsr.s sub_20e81e
	add.w d0,$c(a1)
	add.w d0,$30(a1)
	add.w d1,$32(a1)
	rts

sub_20e81e:
	ori.b #$4,$1(a1)
	move.b #$3,$18(a1)
	move.w #$47e,$2(a1)
	move.b #$8,$19(a1)
	move.b #$10,$16(a1)
	move.w $2e(a0),$c(a1)
	move.w $2e(a0),$30(a1)
	move.w $2e(a0),$32(a1)
	moveq #$10,d0
	moveq #$31,d1
	rts
dat_20e854:
	dc.b $00,$20,$e9,$8a,$00,$20,$e9,$94
	dc.b $00,$20,$e9,$ae
	bsr.w sub_20e93a
	tst.b $3f(a0)
	beq.s loc_20e870
	clr.b $3f(a0)
	bra.s loc_20e88a
loc_20e870:
	move.b $28(a0),d0
	beq.s loc_20e88e
	moveq #$8,d4
	moveq #$40,d5
	cmpi.b #$1,d0
	beq.s loc_20e884
	moveq #$ffffffb8,d4
	moveq #$40,d5
loc_20e884:
	bsr.w sub_20e952
	bcc.s loc_20e88e
loc_20e88a:
	addq.b #$2,$24(a0)
loc_20e88e:
	lea dat_20e984(pc),a1
	jsr (sub_205944).l
	movea.w $2c(a0),a1
	move.b $1a(a0),$1a(a1)
	move.w a0,-(a7)
	movea.w a1,a0
	jsr (sub_20371e).l
	movea.w (a7)+,a0
	jsr (sub_20371e).l
	jmp (loc_207578).l
	bsr.w sub_20e93a
	movea.w $2c(a0),a1
	addq.w #$2,$c(a0)
	subq.w #$2,$c(a1)
	move.w $c(a0),d0
	cmp.w $32(a0),d0
	blt.s loc_20e8e4
	addq.b #$2,$24(a0)
	move.w $32(a0),$c(a0)
	move.w $32(a1),$c(a1)
loc_20e8e4:
	bra.s loc_20e88e
	bsr.w sub_20e93a
	move.b $28(a0),d0
	beq.s loc_20e908
	moveq #$ffffffd8,d4
	moveq #$70,d5
	cmpi.b #$1,d0
	beq.s loc_20e8fe
	moveq #$ffffffb8,d4
	moveq #$70,d5
loc_20e8fe:
	bsr.w sub_20e952
	bcs.s loc_20e908
	addq.b #$2,$24(a0)
loc_20e908:
	bra.s loc_20e88e
	bsr.w sub_20e93a
	movea.w $2c(a0),a1
	subq.w #$2,$c(a0)
	addq.w #$2,$c(a1)
	move.w $c(a0),d0
	cmp.w $30(a0),d0
	bgt.s loc_20e936
	move.b #$2,$24(a0)
	move.w $30(a0),$c(a0)
	move.w $30(a1),$c(a1)
loc_20e936:
	bra.w loc_20e88e

sub_20e93a:
	move.w a0,-(a7)
	movea.w $2c(a0),a0
	lea ($d000).w,a1
	jsr (sub_207b0c).l
	movea.w (a7)+,a0
	jmp (sub_207b0c).l

sub_20e952:
	move.w ($d008).w,d0
	sub.w $8(a0),d0
	sub.w d4,d0
	sub.w d5,d0
	bcc.s loc_20e970
	move.w ($d00c).w,d0
	sub.w $2e(a0),d0
	subi.w #$ffd0,d0
	subi.w #$60,d0
loc_20e970:
	rts
loc_20e972:
	movea.w d0,a1
	cmpi.b #$29,$0(a1)
	bne.s loc_20e97e
	rts
loc_20e97e:
	jmp (sub_2037ca).l
dat_20e984:
	.incbin 59780, 1152
	tst.b $29(a0)
	beq.s loc_20ee30
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20ef68
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20ef68
	move.w $30(a0),d0
	cmp.w $30(a1),d0
	bne.w loc_20ef68
loc_20ee30:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ee56(pc,d0.w),d0
	jsr dat_20ee56(pc,d0.w)
	jsr (sub_20371e).l
	tst.b $29(a0)
	bmi.s loc_20ee54
	move.w $2e(a0),d0
	jmp (loc_20757c).l
loc_20ee54:
	rts
dat_20ee56:
	dc.b $00,$08,$00,$aa,$00,$ba,$00,$fa
	lea dat_20efe8(pc),a5
	moveq #$0,d0
	move.b $29(a0),d0
	add.w d0,d0
	adda.w $0(a5,d0.w),a5
	move.w (a5)+,$2c(a0)
	lea (a0),a6
	bsr.s sub_20eec0
	move.w (a5)+,d6
	bra.s loc_20eeba
loc_20ee7a:
	jsr (sub_207542).l
	beq.s loc_20ee88
	jmp (sub_2037ca).l
loc_20ee88:
	move.b $0(a0),$0(a1)
	move.w a0,$2a(a1)
	move.b $28(a0),$28(a1)
	move.b #$ff,$29(a1)
	move.w (a5)+,$2c(a1)
	move.w $8(a0),d0
	move.w $c(a0),d1
	add.w (a5)+,d0
	add.w (a5)+,d1
	move.w d0,$8(a1)
	move.w d1,$c(a1)
	lea (a1),a6
	bsr.s sub_20eec0
loc_20eeba:
	dbf d6,loc_20ee7a
	rts

sub_20eec0:
	move.b #$2,$24(a6)
	ori.b #$4,$1(a6)
	move.b #$3,$18(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$5,$16(a6)
	move.w #$34c,$2(a6)
	move.l #$20ef7e,$4(a6)
	move.w $8(a0),$2e(a6)
	move.w $c(a0),$30(a6)
	rts
	move.b #$5,$16(a0)
	move.w #$78,$2c(a0)
	addq.b #$2,$24(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_207b06).l
	sne $3e(a0)
	addi.w #$ffff,$2c(a0)
	bne.s loc_20ef4e
	move.b #$10,$16(a0)
	move.w #$ff,$1c(a0)
	addq.b #$2,$24(a0)
	tst.b $3e(a0)
	beq.s loc_20ef4e
	lea ($d000).w,a1
	jmp (sub_2079be).l
loc_20ef4e:
	rts
	lea dat_20ef6e(pc),a1
	jsr (sub_205944).l
	tst.b $1a(a0)
	bne.s loc_20ef66
	move.b #$2,$24(a0)
loc_20ef66:
	rts
loc_20ef68:
	jmp (sub_2037ca).l
dat_20ef6e:
	.incbin 61294, 122
dat_20efe8:
	.incbin 61416, 18
	jsr (sub_20f2ec).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20f0b8
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f01a(pc,d0.w),d0
	jmp dat_20f01a(pc,d0.w)
dat_20f01a:
	dc.b $00,$04,$00,$3a
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20f17a,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20f148
	bsr.w sub_20f156
	move.w #$101,$2e(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20f098
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20f07a
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20f148
loc_20f07a:
	move.b d0,$2e(a0)
	lea dat_20f174(pc),a1
	jsr (sub_205944).l
	jsr (sub_20371e).l
	move.w $2a(a0),d0
	jmp (loc_20757c).l

sub_20f098:
	move.b $2e(a0),d0
	jsr (sub_2008fc).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20f0b8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f0c6(pc,d0.w),d0
	jmp dat_20f0c6(pc,d0.w)
dat_20f0c6:
	dc.b $00,$04,$00,$34
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$7080408,$16(a0)
	move.l #$20f18a,$4(a0)
	bsr.w sub_20f156
	move.l #$10000,$2c(a0)
	move.l #$fffc0000,$30(a0)
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.l $30(a0),d0
	add.l d0,$c(a0)
	addi.l #$2000,$30(a0)
	smi d0
	addq.b #$1,d0
	move.b d0,$1a(a0)
	jsr (sub_2067e8).l
	tst.w d1
	bpl.s loc_20f136
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
	neg.l $2c(a0)
	bsr.s sub_20f148
loc_20f136:
	jsr (sub_20371e).l
	jmp (loc_207578).l
	dc.b $4e,$f9,$00,$20,$37,$ca

sub_20f148:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20f156:
	lea dat_20f19a(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20f174:
	.incbin 61812, 38
dat_20f19a:
	.incbin 61850, 266

sub_20f2a4:
	tst.b ($ff156a).l
	beq.s loc_20f2ea
	cmpi.b #$1,($ff152e).l
	bne.s loc_20f2bc
	tst.b $28(a0)
	beq.s loc_20f2ea
loc_20f2bc:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2037ca).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20f2e8
	move.w #$9e,d0
	jsr (sub_2023f8).l
loc_20f2e8:
	addq.l #$4,a7
loc_20f2ea:
	rts

sub_20f2ec:
	tst.b $28(a0)
	bmi.s loc_20f31c
	cmpi.b #$2,($ff152e).l
	bge.s loc_20f30c
	tst.b ($ff156d).l
	bne.s loc_20f31c
	addq.l #$4,a7
	jmp (loc_207578).l
loc_20f30c:
	tst.b ($ff156a).l
	bne.s loc_20f31c
	addq.l #$4,a7
	jmp (sub_2037ca).l
loc_20f31c:
	rts
	.incbin 62238, 1552
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20f946(pc,d0.w),d0
	jsr dat_20f946(pc,d0.w)
	move.w $36(a0),d0
	jmp (loc_20757c).l
dat_20f946:
	dc.b $00,$06,$00,$8c,$00,$ac
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20fa5e,$4(a0)
	move.b #$8,$19(a0)
	move.b #$6,$16(a0)
	move.w $8(a0),$36(a0)
	move.w #$100,$10(a0)
	moveq #$e,d0
	jsr (sub_20d942).l
	jsr (sub_207558).l
	beq.s loc_20f992
	jmp (sub_2037ca).l
loc_20f992:
	move.b #$a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	subi.w #$10,$c(a1)
	move.b #$f0,$39(a1)
	move.w a0,$34(a1)
	move.b $28(a0),d0
	andi.b #$f,d0
	move.b d0,$28(a1)
	move.w #$50,$3a(a0)
	tst.b $28(a0)
	bpl.s loc_20f9d2
	move.w #$40,$3a(a0)
loc_20f9d2:
	jsr (sub_2067e8).l
	tst.w d1
	bpl.s loc_20f9ec
	add.w d1,$c(a0)
	move.w $c(a0),$32(a0)
	addq.b #$2,$24(a0)
	rts
loc_20f9ec:
	addq.w #$1,$c(a0)
	rts
	move.w #$20,d3
	lea (loc_2068b2).l,a1
	tst.w $10(a0)
	bpl.s loc_20fa0c
	move.w #$ffe8,d3
	lea (loc_206a54).l,a1
loc_20fa0c:
	jsr (a1)
	cmpi.w #$7,d1
	bmi.s loc_20fa3e
	move.w $8(a0),d0
	sub.w $36(a0),d0
	bcc.s loc_20fa20
	neg.w d0
loc_20fa20:
	cmp.w $3a(a0),d0
	bcc.s loc_20fa3e
	jsr (sub_2067e8).l
	cmpi.w #$fff9,d1
	blt.s loc_20fa3e
	cmpi.w #$7,d1
	bgt.s loc_20fa3e
	add.w d1,$c(a0)
	bra.s loc_20fa42
loc_20fa3e:
	neg.w $10(a0)
loc_20fa42:
	jsr (sub_2036c8).l
	lea dat_20fa58(pc),a1
	jsr (sub_205944).l
	jmp (sub_20371e).l
dat_20fa58:
	.incbin 64088, 22

sub_20fa6e:
	jsr (sub_2061b8).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20fb9e).l,a1
	move.w #$3f,d6
	bsr.w sub_20fb5a
	bne.s loc_20fab0
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7e20,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fab0:
	lea (dat_20fbb0).l,a1
	move.w #$3f,d6
	bsr.w sub_20fb5a
	bne.s loc_20fae4
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$7f20,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20fae4:
	lea (dat_20fbc2).l,a1
	move.w #$7f,d6
	bsr.w sub_20fb5a
	bne.s loc_20fb18
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4020,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fb18:
	tst.b ($ff1959).l
	beq.s loc_20fb24
	tst.b (a4)
	beq.s loc_20fb58
loc_20fb24:
	lea (dat_20fbd4).l,a1
	move.w #$1f,d6
	bsr.w sub_20fb5a
	bne.s loc_20fb58
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$4220,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20fb58:
	rts

sub_20fb5a:
	subq.b #$1,(a2)
	bpl.w loc_20fb92
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20fb70
	moveq #$0,d0
loc_20fb70:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20fb80:
	move.l (a1)+,(a3)+
	dbf d6,loc_20fb80
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20fb92:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20fb9e:
	.incbin 64414, 18
dat_20fbb0:
	.incbin 64432, 18
dat_20fbc2:
	.incbin 64450, 18
dat_20fbd4:
	.incbin 64468, 26
dat_20fbee:
	.incbin 64494, 16
dat_20fbfe:
	.incbin 64510, 57912
dat_21de36:
	.incbin 122422, 8650
dat_220000:
	.incbin 131072, 61872
dat_22f1b0:
	.incbin 192944, 18180
dat_2338b4:
	.incbin 211124, 384
dat_233a34:
	.incbin 211508, 14578
dat_237326:
	.incbin 226086, 256
dat_237426:
	.incbin 226342, 4096
dat_238426:
	.incbin 230438, 4796
dat_2396e2:
	.incbin 235234, 12146
dat_23c654:
	.incbin 247380, 14764
