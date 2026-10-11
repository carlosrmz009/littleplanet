; R81C__.MMD
; disassembled from the disc; code only, data comes from data/R81C__.MMD at build time
	.file "R81C__.MMD", 262144

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
	lea (dat_2357ca).l,a2
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
	lea (dat_2358ca).l,a2
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
	lea (dat_2357ca).l,a2
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
	lea (dat_2358ca).l,a2
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
	lea (dat_2357ca).l,a2
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
	lea (dat_2368ca).l,a2
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
	lea (dat_2357ca).l,a2
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
	lea (dat_2368ca).l,a2
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
	bsr.w sub_2071c0
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
	lea (dat_20eb10).l,a2
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
	bsr.w sub_202aea
	bset.b #$2,($f754).w
	bsr.w sub_203506
	bsr.w sub_20340c
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
	jsr (sub_20e9ea).l
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
	jsr (sub_20590c).l
	bsr.w sub_2071c0
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
	jsr (sub_2071d6).l
	jsr (sub_203646).l
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
	bsr.w sub_202aea
loc_201a8e:
	jsr (sub_2037f0).l
	tst.w ($ff190e).l
	bne.s loc_201aa0
	bsr.w sub_200184
loc_201aa0:
	jsr (sub_20bddc).l
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
	jmp (sub_20590c).l
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
	jmp (sub_20590c).l
loc_201cda:
	tst.b ($ff151f).l
	bne.s loc_201cd0
	tst.b ($ff1520).l
	bne.s loc_201cd0
	move.w #$90,d0
	jmp (sub_20590c).l
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
	jmp (sub_20590c).l
loc_201d16:
	tst.b ($ff151f).l
	bne.s loc_201d0c
	tst.b ($ff1520).l
	bne.s loc_201d0c
	move.w #$91,d0
	jmp (sub_20590c).l
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
	bsr.w sub_20582e
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
	jsr (sub_20e9ea).l
	jsr (sub_2023ac).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_203002
	bsr.w sub_2026a0
	jmp (loc_20990c).l
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
	bsr.w sub_203002
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
	bsr.w sub_20582e
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
	lea (dat_20eb20).l,a1
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
loc_2025f4:
	movem.l a1-a2,-(a7)
	lea (dat_20eb20).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202620
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20261a
loc_202612:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202612
loc_20261a:
	movem.l (a7)+,a1-a2
	rts

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
	lea (dat_20eb20).l,a1
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
	dc.b $00,$04,$00,$00,$1e,$97,$00,$00
	dc.b $07,$10,$00,$60
dat_2029fe:
	.incbin 10750, 32
loc_202a1e:
	tst.b ($ff1522).l
	beq.s loc_202a3e
	jsr (sub_206498).l
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
	dc.b $00,$30,$06,$a0
dat_202aba:
	dc.b $7f,$7f,$7f,$7f

sub_202abe:
	swap d0
	lsr.l #$2,d0
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

sub_202aea:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202af6
	rts
loc_202af6:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202c78
	bsr.w sub_202d18
	bsr.w sub_2035ae
	move.w ($f704).w,($f616).w
	move.w ($f70c).w,($f618).w
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$6,d4
	moveq #$6,d6
	bsr.w sub_202fa2
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$7,d4
	moveq #$4,d6
	bsr.w sub_202f6e
	lea ($a800).w,a1
	move.w ($f73a).w,d4
	ext.l d4
	asl.l #$4,d4
	move.l d4,d3
	add.l d3,d3
	add.l d3,d4
	moveq #$2,d6
	bsr.w sub_202f3a
	move.w ($f704).w,d0
	lsr.w #$2,d0
	bsr.w sub_202f0a
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
	bsr.w sub_202bf2
	move.w ($f708).w,d0
	neg.w d0
	moveq #$f,d6
loc_202b9a:
	move.w d0,(a1)+
	dbf d6,loc_202b9a
	move.w ($f710).w,d0
	neg.w d0
	moveq #$1b,d6
loc_202ba8:
	move.w d0,(a1)+
	dbf d6,loc_202ba8
	bsr.w sub_202bf2
	move.w ($f708).w,d0
	neg.w d0
	moveq #$b,d6
loc_202bba:
	move.w d0,(a1)+
	dbf d6,loc_202bba
	move.w ($f710).w,d0
	neg.w d0
	moveq #$b,d6
loc_202bc8:
	move.w d0,(a1)+
	dbf d6,loc_202bc8
	lea ($cc00).w,a1
	lea ($a800).w,a2
	move.w ($f70c).w,d0
	move.w d0,d2
	andi.w #$3f8,d0
	lsr.w #$2,d0
	moveq #$1c,d1
	lea $0(a2,d0.w),a2
	bra.w loc_202c36
dat_202bec:
	dc.b $03,$04,$02,$00,$00,$00

sub_202bf2:
	move.w ($f718).w,d0
	move.w ($f710).w,d2
	sub.w d0,d2
	ext.l d2
	moveq #$7,d1
	asl.l d1,d2
	divu.w #$5,d2
	ext.l d2
	moveq #$9,d1
	asl.l d1,d2
	move.w ($f718).w,d3
	moveq #$4,d6
	adda.w #$1c,a1
loc_202c16:
	move.w d3,d0
	neg.w d0
	moveq #$0,d5
	move.b dat_202bec(pc,d6.w),d5
loc_202c20:
	move.w d0,-(a1)
	dbf d5,loc_202c20
	swap d3
	add.l d2,d3
	swap d3
	dbf d6,loc_202c16
	adda.w #$1c,a1
	rts
loc_202c36:
	andi.w #$7,d2
	add.w d2,d2
	move.w (a2)+,d0
	jmp loc_202c44(pc,d2.w)
loc_202c42:
	move.w (a2)+,d0
loc_202c44:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d1,loc_202c42
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
	dbf d1,loc_202c42
	rts

sub_202c78:
	move.w ($f700).w,d4
	bsr.s sub_202cac
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202caa
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202ca4
	bset.b #$2,($f754).w
	rts
loc_202ca4:
	bset.b #$3,($f754).w
loc_202caa:
	rts

sub_202cac:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202cbe
	bcs.s loc_202cee
	bra.s loc_202cc4
loc_202cbe:
	clr.w ($f73a).w
	rts
loc_202cc4:
	cmpi.w #$10,d0
	blt.s loc_202cce
	move.w #$10,d0
loc_202cce:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202cdc
	move.w ($f72a).w,d0
loc_202cdc:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202cee:
	cmpi.w #$fff0,d0
	bge.s loc_202cf8
	move.w #$fff0,d0
loc_202cf8:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202cdc
	move.w ($f728).w,d0
	bra.s loc_202cdc
	.incbin 11528, 16

sub_202d18:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_202d2c
	subq.w #$5,d0
loc_202d2c:
	btst.b #$1,$22(a6)
	beq.s loc_202d4c
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_202d98
	subi.w #$40,d0
	bcc.s loc_202d98
	tst.b ($f75c).w
	bne.s loc_202daa
	bra.s loc_202d58
loc_202d4c:
	sub.w ($f73e).w,d0
	bne.s loc_202d5e
	tst.b ($f75c).w
	bne.s loc_202daa
loc_202d58:
	clr.w ($f73c).w
	rts
loc_202d5e:
	cmpi.w #$60,($f73e).w
	bne.s loc_202d86
	move.w $14(a6),d1
	bpl.s loc_202d6e
	neg.w d1
loc_202d6e:
	cmpi.w #$800,d1
	bcc.s loc_202d98
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_202df8
	cmpi.w #$fffa,d0
	blt.s loc_202dc2
	bra.s loc_202db0
loc_202d86:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_202df8
	cmpi.w #$fffe,d0
	blt.s loc_202dc2
	bra.s loc_202db0
loc_202d98:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_202df8
	cmpi.w #$fff0,d0
	blt.s loc_202dc2
	bra.s loc_202db0
loc_202daa:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_202db0:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_202e02
	bra.w loc_202dce
loc_202dc2:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202dce:
	cmp.w ($f72c).w,d1
	bgt.s loc_202e26
	cmpi.w #$ff00,d1
	bgt.s loc_202df2
	andi.w #$7ff,d1
	andi.w #$7ff,$c(a6)
	andi.w #$7ff,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e26
loc_202df2:
	move.w ($f72c).w,d1
	bra.s loc_202e26
loc_202df8:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_202e02:
	cmp.w ($f72e).w,d1
	blt.s loc_202e26
	subi.w #$800,d1
	bcs.s loc_202e22
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_202e26
loc_202e22:
	move.w ($f72e).w,d1
loc_202e26:
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
	bne.s loc_202e68
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_202e62
	bset.b #$0,($f754).w
	rts
loc_202e62:
	bset.b #$1,($f754).w
loc_202e68:
	rts
	.incbin 11882, 118
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f08
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_202f02
	bset.b #$4,($f756).w
	rts
loc_202f02:
	bset.b #$5,($f756).w
loc_202f08:
	rts

sub_202f0a:
	move.w ($f70c).w,d3
	move.w d0,($f70c).w
	move.w d0,d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_202f38
	eori.b #$10,($f74d).w
	sub.w d3,d0
	bpl.s loc_202f32
	bset.b #$0,($f756).w
	rts
loc_202f32:
	bset.b #$1,($f756).w
loc_202f38:
	rts

sub_202f3a:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_202f6c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_202f66
	bset.b d6,($f756).w
	bra.s loc_202f6c
loc_202f66:
	addq.b #$1,d6
	bset.b d6,($f756).w
loc_202f6c:
	rts

sub_202f6e:
	move.l ($f710).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f710).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74e).w,d3
	eor.b d3,d1
	bne.s loc_202fa0
	eori.b #$10,($f74e).w
	sub.l d2,d0
	bpl.s loc_202f9a
	bset.b d6,($f758).w
	bra.s loc_202fa0
loc_202f9a:
	addq.b #$1,d6
	bset.b d6,($f758).w
loc_202fa0:
	rts

sub_202fa2:
	move.l ($f718).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f718).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f750).w,d3
	eor.b d3,d1
	bne.s loc_202fd4
	eori.b #$10,($f750).w
	sub.l d2,d0
	bpl.s loc_202fce
	bset.b d6,($f75a).w
	bra.s loc_202fd4
loc_202fce:
	addq.b #$1,d6
	bset.b d6,($f75a).w
loc_202fd4:
	rts
	.incbin 12246, 44

sub_203002:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_2030c0
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_2031a6
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2031a8
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	tst.b (a2)
	beq.s loc_2030be
	bclr.b #$0,(a2)
	beq.s loc_203074
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033d4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031aa
loc_203074:
	bclr.b #$1,(a2)
	beq.s loc_20308e
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033d4
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2031aa
loc_20308e:
	bclr.b #$2,(a2)
	beq.s loc_2030a4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033d4
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_203200
loc_2030a4:
	bclr.b #$3,(a2)
	beq.s loc_2030be
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2033d4
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_203200
loc_2030be:
	rts

sub_2030c0:
	lea (dat_20348c).l,a0
	adda.w #$1,a0
	moveq #$fffffff0,d4
	bclr.b #$0,(a2)
	bne.s loc_2030dc
	bclr.b #$1,(a2)
	beq.s loc_203126
	move.w #$e0,d4
loc_2030dc:
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	move.b $0(a0,d0.w),d0
	ext.w d0
	add.w d0,d0
	movea.l dat_203156(pc,d0.w),a3
	beq.s loc_20310e
	moveq #$fffffff0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033d4
	movem.l (a7)+,d4-d5
	bsr.w sub_2031aa
	movea.l (a7)+,a0
	bra.s loc_203126
loc_20310e:
	moveq #$0,d5
	move.l a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2033d6
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031d6
	movea.l (a7)+,a0
loc_203126:
	tst.b (a2)
	bne.s loc_20312c
	rts
loc_20312c:
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	move.b (a2),d0
	andi.b #$a8,d0
	beq.s loc_203140
	lsr.b #$1,d0
	move.b d0,(a2)
	move.w #$140,d5
loc_203140:
	move.w ($f70c).w,d0
	andi.w #$fff0,d0
	asr.w #$4,d0
	suba.w #$1,a0
	lea $0(a0,d0.w),a0
	bra.w loc_203166
dat_203156:
	.incbin 12630, 16
loc_203166:
	moveq #$f,d6
	move.l #$800000,d7
loc_20316e:
	moveq #$0,d0
	move.b (a0)+,d0
	beq.s loc_20319a
	btst.b d0,(a2)
	beq.s loc_20319a
	add.w d0,d0
	movea.l dat_203156(pc,d0.w),a3
	movem.l d4-d5/a0,-(a7)
	movem.l d4-d5,-(a7)
	bsr.w sub_2032ac
	movem.l (a7)+,d4-d5
	bsr.w sub_2033d4
	bsr.w sub_20322e
	movem.l (a7)+,d4-d5/a0
loc_20319a:
	addi.w #$10,d4
	dbf d6,loc_20316e
	clr.b (a2)
	rts

sub_2031a6:
	rts

sub_2031a8:
	rts

sub_2031aa:
	moveq #$15,d6

sub_2031ac:
	move.l #$800000,d7
	move.l d0,d1
loc_2031b4:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032ac
	move.l d1,d0
	bsr.w sub_20322e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031b4
	rts

sub_2031d6:
	move.l #$800000,d7
	move.l d0,d1
loc_2031de:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032ae
	move.l d1,d0
	bsr.w sub_20322e
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2031de
	rts

sub_203200:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_20320a:
	movem.l d4-d5,-(a7)
	bsr.w sub_2032ac
	move.l d1,d0
	bsr.w sub_20322e
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_20320a
	rts

sub_20322e:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_20326a
	btst.b #$3,(a0)
	bne.s loc_20324a
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_20324a:
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
loc_20326a:
	btst.b #$3,(a0)
	bne.s loc_20328c
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
loc_20328c:
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

sub_2032ac:
	add.w (a3),d5

sub_2032ae:
	add.w $4(a3),d4

sub_2032b2:
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
	beq.s loc_2032fc
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
loc_2032fc:
	rts
	.incbin 13054, 62
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	move.w #$4000,d2
	move.l #$800000,d7
	movem.l d3-d5,-(a7)
	bsr.w sub_2032b2
	bne.s loc_203362
	movem.l (a7)+,d3-d5
	bra.s loc_20338c
loc_203362:
	movem.l (a7)+,d3-d5
	move.w d3,(a0)
	bsr.w sub_203390
	bne.s loc_20338c
	movem.l d3-d5,-(a7)
	lea ($ff2000).l,a1
	andi.w #$3ff,d3
	lsl.w #$3,d3
	adda.w d3,a1
	bsr.w sub_2033da
	bsr.w sub_20322e
	movem.l (a7)+,d3-d5
loc_20338c:
	movea.l (a7)+,a0
	rts

sub_203390:
	move.w ($f704).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d4
	bcs.s loc_2033d0
	addi.w #$f0,d1
	andi.w #$fff0,d1
	cmp.w d1,d4
	bgt.s loc_2033d0
	move.w ($f700).w,d0
	move.w d0,d1
	andi.w #$fff0,d0
	subi.w #$10,d0
	cmp.w d0,d5
	bcs.s loc_2033d0
	addi.w #$150,d1
	andi.w #$fff0,d1
	cmp.w d1,d5
	bgt.s loc_2033d0
	moveq #$0,d0
	rts
loc_2033d0:
	moveq #$1,d0
	rts

sub_2033d4:
	add.w (a3),d5

sub_2033d6:
	add.w $4(a3),d4

sub_2033da:
	andi.w #$f0,d4
	andi.w #$1f0,d5
	lsl.w #$4,d4
	lsr.w #$2,d5
	add.w d5,d4
	moveq #$3,d0
	swap d0
	move.w d4,d0
	rts
	.incbin 13296, 28

sub_20340c:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_203436
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bra.w loc_20345e

sub_203436:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20343a:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2033d4
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2031ac
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20343a
	rts
loc_20345e:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_203462:
	movem.l d4-d6/a0,-(a7)
	lea (dat_20348c).l,a0
	adda.w #$1,a0
	move.w ($f70c).w,d0
	add.w d4,d0
	andi.w #$1f0,d0
	bsr.w sub_2034ce
	movem.l (a7)+,d4-d6/a0
	addi.w #$10,d4
	dbf d6,loc_203462
	rts
dat_20348c:
	.incbin 13452, 50
dat_2034be:
	.incbin 13502, 16

sub_2034ce:
	lsr.w #$4,d0
	move.b $0(a0,d0.w),d0
	add.w d0,d0
	movea.l dat_2034be(pc,d0.w),a3
	beq.s loc_2034f0
	moveq #$fffffff0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033d4
	movem.l (a7)+,d4-d5
	bsr.w sub_2031aa
	bra.s loc_203504
loc_2034f0:
	moveq #$0,d5
	movem.l d4-d5,-(a7)
	bsr.w sub_2033d6
	movem.l (a7)+,d4-d5
	moveq #$1f,d6
	bsr.w sub_2031d6
loc_203504:
	rts

sub_203506:
	moveq #$0,d0
	lea (dat_20eb10).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_202494
	movea.l (a2)+,a0
	bsr.w sub_203560
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_20054a
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_20354a
	jmp (loc_20bdb8).l
loc_20354a:
	btst.b #$1,($ff151c).l
	beq.s loc_20355e
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_20355e
	bsr.w sub_2025c2
loc_20355e:
	rts

sub_203560:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_20356a:
	move.l d0,(a3)+
	dbf d1,loc_20356a
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_203580
	lea ($a040).w,a3
	moveq #$2,d1

sub_203580:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_237bea).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_20359a:
	move.w d1,d0
	movea.l a3,a0
loc_20359e:
	move.b (a1)+,(a0)+
	dbf d0,loc_20359e
	lea $80(a3),a3
	dbf d2,loc_20359a
	rts

sub_2035ae:
	lea ($d000).w,a6
	bsr.w sub_20360a
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_2035e4
	bcc.s loc_2035e6
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_2035da
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_2035da:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_2035e4:
	rts
loc_2035e6:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_2035fe
	btst.b #$1,$22(a6)
	beq.s loc_2035fe
	add.w d1,d1
	add.w d1,d1
loc_2035fe:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts

sub_20360a:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_20361c(pc,d0.w),d0
	jmp dat_20361c(pc,d0.w)
dat_20361c:
	dc.b $00,$06,$00,$06,$00,$0e
	move.w #$710,($f726).w
	rts
	.incbin 13866, 28

sub_203646:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_20364e:
	move.b (a0),d0
	beq.s loc_203664
	add.w d0,d0
	add.w d0,d0
	lea (dat_203a68).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203664:
	lea $40(a0),a0
	dbf d7,loc_20364e
	rts

sub_20366e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_2036ac
	bpl.s loc_20369e
	btst.b #$1,$2c(a0)
	beq.s loc_20369e
	cmpi.w #$f800,$12(a0)
	bcs.s loc_2036ac
loc_20369e:
	btst.b #$2,$2c(a0)
	bne.s loc_2036ac
	addi.w #$38,$12(a0)
loc_2036ac:
	tst.w $12(a0)
	bmi.s loc_2036c0
	cmpi.w #$1000,$12(a0)
	bcs.s loc_2036c0
	move.w #$1000,$12(a0)
loc_2036c0:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_2036d0:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_20370c
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_20370c
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_20370a
	neg.w d1
loc_20370a:
	add.w d1,d0
loc_20370c:
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

sub_203726:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203796
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2037b2
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_2037b2
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203770
	cmpi.w #$800,d3
	bcs.s loc_203782
	subi.w #$800,d3
	bra.s loc_203782
loc_203770:
	cmpi.w #$700,($f704).w
	bcs.s loc_203782
	cmpi.w #$100,d3
	bcc.s loc_203782
	addi.w #$800,d3
loc_203782:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_2037b2
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_2037b2
loc_203796:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_2037b2
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_2037b2:
	rts
	.incbin 14260, 30

sub_2037d2:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_2037d8:
	move.l d1,(a1)+
	dbf d0,loc_2037d8
	rts
dat_2037e0:
	.incbin 14304, 16

sub_2037f0:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_2037fc:
	tst.w (a4)
	beq.w loc_2038bc
	moveq #$2,d6
loc_203804:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
	beq.w loc_2038b4
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_20386a
	movea.l dat_2037e0(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_20384e
	cmpi.w #$800,d2
	bcs.s loc_203860
	subi.w #$800,d2
	bra.s loc_203860
loc_20384e:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203860
	cmpi.w #$100,d2
	bcc.s loc_203860
	addi.w #$800,d2
loc_203860:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_20388c
loc_20386a:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_20388c
	.incbin 14452, 24
loc_20388c:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_2038aa
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_2038ae
loc_2038aa:
	bsr.w sub_2038de
loc_2038ae:
	bset.b #$7,$1(a0)
loc_2038b4:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203804
loc_2038bc:
	lea $80(a4),a4
	dbf d7,loc_2037fc
	move.b d5,($f62c).w
	cmpi.b #$50,d5

sub_2038cc:
	beq.s loc_2038d6
	move.l #$0,(a2)
	rts
loc_2038d6:
	move.b #$0,-$5(a2)
	rts

sub_2038de:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203924
	btst.l #$1,d4
	bne.w loc_203972
loc_2038f0:
	cmpi.b #$50,d5
	beq.s loc_203922
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
	bne.s loc_20391c
	addq.w #$1,d0
loc_20391c:
	move.w d0,(a2)+
	dbf d1,loc_2038f0
loc_203922:
	rts
loc_203924:
	btst.l #$1,d4
	bne.w loc_2039b8
loc_20392c:
	cmpi.b #$50,d5
	beq.s loc_203970
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
	bne.s loc_20396a
	addq.w #$1,d0
loc_20396a:
	move.w d0,(a2)+
	dbf d1,loc_20392c
loc_203970:
	rts
loc_203972:
	cmpi.b #$50,d5
	beq.s loc_2039b6
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
	bne.s loc_2039b0
	addq.w #$1,d0
loc_2039b0:
	move.w d0,(a2)+
	dbf d1,loc_203972
loc_2039b6:
	rts
loc_2039b8:
	cmpi.b #$50,d5
	beq.s loc_203a0a
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
	bne.s loc_203a04
	addq.w #$1,d0
loc_203a04:
	move.w d0,(a2)+
	dbf d1,loc_2039b8
loc_203a0a:
	rts
	.incbin 14860, 92
dat_203a68:
	.incbin 14952, 274

sub_203b7a:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203b8c
	move.w #$0,(a1)
	rts
loc_203b8c:
	tst.w (a1)
	bne.s loc_203b96
	move.b #$1,$1(a1)
loc_203b96:
	cmpi.w #$2a30,(a1)
	bcs.s loc_203be0
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_203bd2
	neg.w $10(a0)
loc_203bd2:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_20590c
loc_203be0:
	rts
	tst.b ($ff0f01).l
	bne.s loc_203bfe
	cmpa.w #$d040,a0
	beq.s loc_203bfe
	tst.b ($ff1906).l
	beq.s loc_203bfe
	jmp (loc_206e62).l
loc_203bfe:
	move.b $2a(a0),d0
	beq.s loc_203c28
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_203c1a
	cmpi.b #$2d,d0
	bcs.s loc_203c24
	move.b #$2d,d0
	bra.s loc_203c24
loc_203c1a:
	cmpi.b #$1e,d0
	bcs.s loc_203c24
	move.b #$1e,d0
loc_203c24:
	move.b d0,$2a(a0)
loc_203c28:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_203c36(pc,d0.w),d1
	jmp dat_203c36(pc,d1.w)
dat_203c36:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_203c40:
	tst.b ($d300).w
	bne.s loc_203c7e
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_203c7e:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_203ca6
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_203ca6:
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_203cda:
	tst.b ($ff1506).l
	bne.s loc_203d40
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_203d40
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_203d44
	cmpi.b #$2f,d1
	bne.s loc_203d42
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_203d40
	tst.b $2c(a0)
	beq.s loc_203d40
	jsr (sub_2073d2).l
	bne.s loc_203d40
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_203d38
	moveq #$0,d0
loc_203d38:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_203d40:
	rts
loc_203d42:
	rts

sub_203d44:
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

sub_203d6a:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_203d76
	neg.w d0
loc_203d76:
	btst.b #$1,$2c(a0)
	beq.s loc_203d86
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_203dae
loc_203d86:
	cmpi.w #$600,d0
	bcs.s loc_203dae
	tst.w $14(a0)
	bpl.s loc_203da0
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_203dbc
	move.w #$e0,d1
	bra.s loc_203dbc
loc_203da0:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_203dbc
	move.w #$60,d1
	bra.s loc_203dbc
loc_203dae:
	cmpi.w #$a0,d1
	beq.s loc_203dbc
	bcc.s loc_203dba
	addq.w #$2,d1
	bra.s loc_203dbc
loc_203dba:
	subq.w #$2,d1
loc_203dbc:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_203d6a
	bsr.w sub_203cda
	tst.w ($ff1588).l
	beq.s loc_203de2
	btst.b #$4,($f605).w
	beq.s loc_203de2
	move.b #$1,($ff1906).l
	rts
loc_203de2:
	tst.b ($f7cc).w
	bne.s loc_203dee
	move.w ($f604).w,($f602).w
loc_203dee:
	btst.b #$0,$2c(a0)
	beq.s loc_203e12
	cmpi.b #$6,($ff1506).l
	bne.s loc_203e0c
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_203e2a
loc_203e0c:
	bsr.w sub_2040f4
	bra.s loc_203e2a
loc_203e12:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_203e70(pc,d0.w),d1
	jsr dat_203e70(pc,d1.w)
	jsr (sub_2063c4).l
loc_203e2a:
	bsr.s sub_203e7e
	bsr.w sub_203f3e
	bsr.w sub_203f58
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_203e52
	tst.b $1c(a0)
	bne.s loc_203e52
	move.b $1d(a0),$1c(a0)
loc_203e52:
	bsr.w sub_2052fc
	tst.b $2c(a0)
	bmi.s loc_203e6a
	cmpi.b #$2b,$1c(a0)
	beq.s loc_203e6a
	jsr (sub_206968).l
loc_203e6a:
	bsr.w sub_2051b2
	rts
dat_203e70:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_203e7e:
	cmpi.w #$d2,($f786).w
	bcc.s loc_203ea2
	move.w $30(a0),d0
	beq.s loc_203e94
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_203ea2
loc_203e94:
	btst.b #$6,$2c(a0)
	bne.s loc_203ea2
	jsr (sub_203726).l
loc_203ea2:
	tst.b ($ff151f).l
	beq.s loc_203ee6
	tst.w $32(a0)
	beq.s loc_203ee6
	subq.w #$1,$32(a0)
	bne.s loc_203ee6
	tst.b ($ff1520).l
	bne.s loc_203ede
	tst.b ($ff1958).l
	bne.s loc_203ede
	tst.b ($ff152e).l
	bne.s loc_203ed8
	move.w #$e,d0
	jsr (sub_20590c).l
loc_203ed8:
	jsr (sub_201bec).l
loc_203ede:
	move.b #$0,($ff151f).l
loc_203ee6:
	tst.b ($ff1520).l
	beq.s loc_203f3c
	tst.w $34(a0)
	beq.s loc_203f3c
	subq.w #$1,$34(a0)
	bne.s loc_203f3c
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_203f34
	tst.b ($ff1958).l
	bne.s loc_203f34
	tst.b ($ff152e).l
	bne.s loc_203f2e
	move.w #$e,d0
	jsr (sub_20590c).l
loc_203f2e:
	jsr (sub_201bec).l
loc_203f34:
	move.b #$0,($ff1520).l
loc_203f3c:
	rts

sub_203f3e:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_203f58:
	cmpi.b #$2,($ff1506).l
	beq.s loc_203f64
loc_203f62:
	rts
loc_203f64:
	cmpi.b #$1,($ff1507).l
	bne.s loc_203f76
	cmpi.w #$c8,$8(a0)
	bcs.s loc_203f62
loc_203f76:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_203fba
	bset.b #$6,$22(a0)
	bne.s loc_203f62
	bsr.w sub_205c10
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_203f62
	bra.s loc_203ff2
loc_203fba:
	tst.w $12(a0)
	beq.s loc_203fc2
	bpl.s loc_203f62
loc_203fc2:
	bclr.b #$6,$22(a0)
	beq.s loc_203f62
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_203f62
	cmpi.w #$f000,$12(a0)
	bgt.s loc_203ff2
	move.w #$f000,$12(a0)
loc_203ff2:
	jsr (sub_2073d2).l
	bne.s loc_204006
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204006:
	rts

sub_204008:
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
	bcs.s loc_2040e2
	move.l #$50000,d0
loc_2040e2:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_2040f4:
	cmpi.w #$0,($ff1506).l
	bne.s loc_20411a
	tst.b ($ff152e).l
	beq.s loc_204110
	cmpi.b #$2,($ff152e).l
	bne.s loc_20411a
loc_204110:
	cmpi.w #$900,$8(a0)
	bcs.w loc_2041ca
loc_20411a:
	tst.b $2a(a0)
	bne.w loc_2041d8
	tst.b ($f784).w
	beq.w loc_2041d8
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204138
	neg.w d0
loc_204138:
	tst.w ($f786).w
	bne.s loc_204144
	move.w #$1,($f786).w
loc_204144:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_20415a
	move.b #$1,($ff1502).l
	bra.w loc_205908
loc_20415a:
	cmpi.w #$d2,d1
	bcs.s loc_2041ae
	cmpi.b #$2,($ff1522).l
	beq.s loc_2041ac
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_204184
	move.w #$82,d0
	jsr (sub_20590c).l
	moveq #$0,d0
loc_204184:
	add.b ($f784).w,d0
	bpl.s loc_20418e
	moveq #$0,d0
	bra.s loc_204196
loc_20418e:
	cmpi.b #$3,d0
	bcs.s loc_204196
	moveq #$2,d0
loc_204196:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204008
	move.b #$2,($ff1522).l
loc_2041ac:
	rts
loc_2041ae:
	cmpi.w #$5a,d1
	bcc.s loc_2041c6
	cmp.w d2,d0
	bcc.w loc_203c40
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_2041c6:
	cmp.w d2,d0
	bcc.s loc_2041d8
loc_2041ca:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_2041d8:
	rts
	bsr.w sub_203b7a
	cmpi.b #$2b,$1c(a0)
	bne.s loc_20420a
	tst.b ($ff195b).l
	beq.s loc_2041f8
	cmpi.b #$79,$1a(a0)
	bne.s loc_204234
	bra.s loc_204200
loc_2041f8:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204234
loc_204200:
	bsr.w sub_204a9c
	jmp (sub_20366e).l
loc_20420a:
	bsr.w sub_2042e2
	bsr.w sub_2040f4
	bsr.w sub_204b86
	bsr.w sub_204cb2
	bsr.w sub_204356
	bsr.w sub_204b08
	bsr.w sub_204a9c
	jsr (sub_2036d0).l
	bsr.w sub_200cfc
	bsr.w sub_204d30
loc_204234:
	rts
	tst.b ($f7c7).w
	bne.s loc_204250
	cmpi.b #$15,$1c(a0)
	beq.s loc_204250
	tst.w $12(a0)
	bmi.s loc_204250
	move.b #$0,$1c(a0)
loc_204250:
	bsr.w sub_2042e2
	bsr.w sub_2040f4
	bsr.w sub_204c70
	bsr.w sub_2049bc
	bsr.w sub_204a9c
	jsr (sub_20366e).l
	btst.b #$6,$22(a0)
	beq.s loc_204278
	subi.w #$28,$12(a0)
loc_204278:
	bsr.w sub_204d7a
	bsr.w sub_204d9e
	rts
	.incbin 17026, 46
	bsr.w sub_2042e2
	bsr.w sub_2040f4
	bsr.w sub_204c70
	bsr.w sub_2049bc
	bsr.w sub_204a9c
	jsr (sub_20366e).l
	btst.b #$6,$22(a0)
	beq.s loc_2042d8
	subi.w #$28,$12(a0)
loc_2042d8:
	bsr.w sub_204d7a
	bsr.w sub_204d9e
	rts

sub_2042e2:
	cmpi.b #$1,($ff152e).l
	bne.s loc_20434e
	tst.w ($ff1506).l
	bne.s loc_20434e
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_204350).l,a2
loc_204316:
	move.b (a2)+,d0
	bmi.s loc_204326
	cmp.b d0,d1
	bne.s loc_204316
	bset.b #$1,$2c(a0)
	rts
loc_204326:
	bclr.b #$1,$2c(a0)
	beq.s loc_20434e
	tst.w $12(a0)
	bpl.s loc_20434e
	cmpi.w #$f800,$12(a0)
	bcc.s loc_20434e
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20434e
	neg.w $10(a0)
loc_20434e:
	rts
dat_204350:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_204356:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204680
	tst.w $3e(a0)
	bne.w loc_204630
	btst.b #$2,($f602).w
	beq.s loc_20437e
	bsr.w sub_204710
loc_20437e:
	btst.b #$3,($f602).w
	beq.s loc_20438a
	bsr.w sub_204786
loc_20438a:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204630
	tst.w $14(a0)
	beq.s loc_2043aa
	tst.b $2a(a0)
	beq.w loc_204630
	bra.s loc_2043b6
loc_2043aa:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_2043b6:
	btst.b #$3,$22(a0)
	beq.s loc_204408
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_204460
	cmpi.b #$1e,$0(a1)
	bne.s loc_2043e8
	move.b #$0,$1c(a0)
	bra.w loc_204630
loc_2043e8:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_204444
	cmp.w d2,d1
	bge.s loc_204432
	bra.s loc_204460
loc_204408:
	jsr (sub_2066cc).l
	cmpi.w #$c,d1
	blt.s loc_204460
	move.w #$ab,d0
	jsr (sub_2023f8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_20443c
loc_204432:
	btst.b #$0,$22(a0)
	bne.s loc_20444c
	bra.s loc_204456
loc_20443c:
	cmpi.b #$3,$37(a0)
	bne.s loc_204460
loc_204444:
	btst.b #$0,$22(a0)
	bne.s loc_204456
loc_20444c:
	move.b #$32,$1c(a0)
	bra.w loc_204630
loc_204456:
	move.b #$6,$1c(a0)
	bra.w loc_204630
loc_204460:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_204474
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_204474:
	btst.b #$7,($f788).w
	bne.w loc_204578
	btst.b #$6,($f788).w
	bne.w loc_204598
	btst.b #$1,($f602).w
	bne.w loc_204598
	andi.b #$f,($f788).w
	beq.s loc_2044ac
	btst.b #$0,($f603).w
	beq.s loc_2044c0
	bset.b #$7,($f788).w
	bra.w loc_204654
loc_2044ac:
	btst.b #$0,($f603).w
	beq.w loc_2044c0
	move.b #$1,($f788).w
	bra.w loc_204654
loc_2044c0:
	btst.b #$0,($f602).w
	beq.s loc_20453c
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20451e
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_2044f0
	asr.w #$1,d2
	sub.w d2,d1
loc_2044f0:
	btst.b #$0,$22(a0)
	beq.s loc_2044fc
	neg.w d0
	neg.w d1
loc_2044fc:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204512
	cmp.w d0,d1
	ble.s loc_204518
	bra.s loc_204516
loc_204512:
	cmp.w d1,d0
	ble.s loc_204518
loc_204516:
	move.w d1,d0
loc_204518:
	move.w d0,$14(a0)
	rts
loc_20451e:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204538
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_2023f8).l
loc_204538:
	bra.w loc_204654
loc_20453c:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_20455c
	move.w #$ab,d0
	jsr (sub_2023f8).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_204598
loc_20455c:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_2023f8).l
	bra.w loc_204630
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_204578:
	btst.b #$0,($f602).w
	beq.s loc_204598
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204654
	addq.w #$2,($f73e).w
	bra.w loc_204654
loc_204598:
	btst.b #$6,($f788).w
	bne.w loc_204614
	andi.b #$f,($f788).w
	beq.s loc_2045bc
	btst.b #$1,($f603).w
	beq.s loc_2045ce
	bset.b #$6,($f788).w
	bra.w loc_204654
loc_2045bc:
	btst.b #$1,($f603).w
	beq.s loc_2045ce
	move.b #$1,($f788).w
	bra.w loc_204654
loc_2045ce:
	btst.b #$1,($f602).w
	beq.s loc_204630
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204612
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204612
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204604
	neg.w $14(a0)
loc_204604:
	move.w #$9c,d0
	jsr (sub_2023f8).l
	bsr.w sub_204b30
loc_204612:
	bra.s loc_204654
loc_204614:
	btst.b #$1,($f602).w
	beq.s loc_204630
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204654
	subq.w #$2,($f73e).w
	bra.s loc_204654
loc_204630:
	cmpi.w #$60,($f73e).w
	bne.s loc_20464a
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204654
	move.b #$0,($f788).w
	bra.s loc_204654
loc_20464a:
	bcc.s loc_204650
	addq.w #$4,($f73e).w
loc_204650:
	subq.w #$2,($f73e).w
loc_204654:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204680
	move.w $14(a0),d0
	beq.s loc_204680
	bmi.s loc_204674
	sub.w d5,d0
	bcc.s loc_20466e
	move.w #$0,d0
loc_20466e:
	move.w d0,$14(a0)
	bra.s loc_204680
loc_204674:
	add.w d5,d0
	bcc.s loc_20467c
	move.w #$0,d0
loc_20467c:
	move.w d0,$14(a0)
loc_204680:
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_20469e:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_20470e
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_20470e
	bmi.s loc_2046b6
	neg.w d1
loc_2046b6:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_20658c
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_20470e
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_20470a
	cmpi.b #$40,d0
	beq.s loc_2046f8
	cmpi.b #$80,d0
	beq.s loc_2046f2
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_2046f2:
	sub.w d1,$12(a0)
	rts
loc_2046f8:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_20470a:
	add.w d1,$12(a0)
loc_20470e:
	rts

sub_204710:
	tst.b $2a(a0)
	bne.s loc_204784
	move.w $14(a0),d0
	beq.s loc_20471e
	bpl.s loc_20474e
loc_20471e:
	bset.b #$0,$22(a0)
	bne.s loc_204732
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204732:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204742
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204742
	move.w d1,d0
loc_204742:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_20474e:
	sub.w d4,d0
	bcc.s loc_204756
	move.w #$ff80,d0
loc_204756:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204784
	cmpi.w #$400,d0
	blt.s loc_204784
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023f8).l
loc_204784:
	rts

sub_204786:
	tst.b $2a(a0)
	bne.s loc_2047f4
	move.w $14(a0),d0
	bmi.s loc_2047be
	bclr.b #$0,$22(a0)
	beq.s loc_2047a6
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_2047a6:
	cmp.w d6,d0
	bge.s loc_2047b2
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_2047b2
	move.w d6,d0
loc_2047b2:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_2047be:
	add.w d4,d0
	bcc.s loc_2047c6
	move.w #$80,d0
loc_2047c6:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_2047f4
	cmpi.w #$fc00,d0
	bgt.s loc_2047f4
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_2023f8).l
loc_2047f4:
	rts
	.incbin 18422, 266
	move.w #$ab,d0
	jsr (sub_2023f8).l
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_20492a
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_20493a
loc_20492a:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_20493a:
	move.b #$5,$1c(a0)
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204964
	move.w #$1000,d1
loc_204964:
	cmpi.w #$f000,d1
	bge.s loc_20496e
	move.w #$f000,d1
loc_20496e:
	move.w d1,$10(a0)
	bra.w loc_20469e
	.incbin 18806, 70

sub_2049bc:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_2049f6
	tst.w ($ff1506).l
	bne.s loc_2049f6
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_2049ee
	cmpi.w #$840,$8(a0)
	bcc.s loc_2049ee
	rts
loc_2049ee:
	btst.b #$1,$2c(a0)
	bne.s loc_204a26
loc_2049f6:
	btst.b #$2,($f602).w
	beq.s loc_204a10
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204a10
	move.w d1,d0
loc_204a10:
	btst.b #$3,($f602).w
	beq.s loc_204a26
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204a26
	move.w d6,d0
loc_204a26:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204a3c
	bcc.s loc_204a38
	addq.w #$4,($f73e).w
loc_204a38:
	subq.w #$2,($f73e).w
loc_204a3c:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204a6a
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204a6a
	bmi.s loc_204a5e
	sub.w d1,d0
	bcc.s loc_204a58
	move.w #$0,d0
loc_204a58:
	move.w d0,$10(a0)
	rts
loc_204a5e:
	sub.w d1,d0
	bcs.s loc_204a66
	move.w #$0,d0
loc_204a66:
	move.w d0,$10(a0)
loc_204a6a:
	rts
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204a9a
	bsr.w sub_2067c6
	tst.w d1
	bpl.s loc_204a9a
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_204a9a:
	rts

sub_204a9c:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204af0
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204aca
	addi.w #$38,d0
loc_204aca:
	cmp.w d1,d0
	bls.s loc_204af0
loc_204ace:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204ade
	rts
loc_204ade:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_206c40
	move.b #$6,$24(a0)
	rts
loc_204af0:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204ace

sub_204b08:
	tst.b ($f7ca).w
	bne.s loc_204b2e
	move.w $14(a0),d0
	bpl.s loc_204b16
	neg.w d0
loc_204b16:
	cmpi.w #$80,d0
	bcs.s loc_204b2e
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204b2e
	btst.b #$1,($f602).w
	bne.s sub_204b30
loc_204b2e:
	rts

sub_204b30:
	btst.b #$2,$22(a0)
	beq.s loc_204b3a
	bra.s loc_204b6a
loc_204b3a:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204b5a
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204b6a
loc_204b5a:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204b6a:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204b84
	cmpi.w #$200,$14(a0)
	bcc.s loc_204b84
	move.w #$200,$14(a0)
loc_204b84:
	rts

sub_204b86:
	tst.b $2a(a0)
	beq.s loc_204b8e
	rts
loc_204b8e:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ba0
	tst.w $14(a0)
	beq.w loc_204c66
loc_204ba0:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_204c66
	btst.b #$3,$22(a0)
	beq.s loc_204bbc
	jsr (sub_205892).l
	beq.s loc_204bec
loc_204bbc:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_2065f6
	cmpi.w #$6,d1
	blt.w loc_204c66
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_204be2
	move.w #$380,d2
loc_204be2:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_204bec:
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
	bne.s loc_204c68
	tst.b ($ff195b).l
	beq.s loc_204c4a
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204c5a
loc_204c4a:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204c5a:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_204c66:
	rts
loc_204c68:
	bset.b #$4,$22(a0)
	rts

sub_204c70:
	tst.b $3c(a0)
	beq.s loc_204ca2
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_204c86
	move.w #$fe00,d1
loc_204c86:
	cmp.w $12(a0),d1
	ble.s loc_204ca0
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_204ca0
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_204ca0:
	rts
loc_204ca2:
	cmpi.w #$f040,$12(a0)
	bge.s loc_204cb0
	move.w #$f040,$12(a0)
loc_204cb0:
	rts

sub_204cb2:
	tst.b $2a(a0)
	bne.s loc_204cec
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_204cec
	move.b $26(a0),d0
	jsr (sub_2008fc).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_204cec
	bmi.s loc_204ce8
	tst.w d0
	beq.s loc_204ce6
	add.w d0,$14(a0)
loc_204ce6:
	rts
loc_204ce8:
	add.w d0,$14(a0)
loc_204cec:
	rts
	.incbin 19694, 66

sub_204d30:
	nop
	tst.b $38(a0)
	bne.s loc_204d72
	tst.w $3e(a0)
	bne.s loc_204d74
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204d72
	move.w $14(a0),d0
	bpl.s loc_204d54
	neg.w d0
loc_204d54:
	cmpi.w #$280,d0
	bcc.s loc_204d72
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_204d72:
	rts
loc_204d74:
	subq.w #$1,$3e(a0)
	rts

sub_204d7a:
	btst.b #$1,$2c(a0)
	bne.s loc_204d9c
	move.b $26(a0),d0
	beq.s loc_204d9c
	bpl.s loc_204d92
	addq.b #$2,d0
	bcc.s loc_204d90
	moveq #$0,d0
loc_204d90:
	bra.s loc_204d98
loc_204d92:
	subq.b #$2,d0
	bcc.s loc_204d98
	moveq #$0,d0
loc_204d98:
	move.b d0,$26(a0)
loc_204d9c:
	rts

sub_204d9e:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200b94).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_204e82
	cmpi.b #$80,d0
	beq.w loc_204ee4
	cmpi.b #$c0,d0
	beq.w loc_204f40
	bsr.w sub_20690c
	tst.w d1
	bpl.s loc_204df0
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204df0:
	bsr.w sub_20676e
	tst.w d1
	bpl.s loc_204e02
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204e02:
	bsr.w sub_20661e
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_204e80
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_204e20
	cmp.b d2,d0
	blt.s loc_204e80
loc_204e20:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204fa2
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204e5e
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_204e50
	asr.w $12(a0)
	bra.s loc_204e72
loc_204e50:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_204e5e:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_204e72
	move.w #$fc0,$12(a0)
loc_204e72:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204e80
	neg.w $14(a0)
loc_204e80:
	rts
loc_204e82:
	bsr.w sub_20690c
	tst.w d1
	bpl.s loc_204e9c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204e9c:
	bsr.w sub_2067c6
	tst.w d1
	bpl.s loc_204eb6
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204eb4
	move.w #$0,$12(a0)
loc_204eb4:
	rts
loc_204eb6:
	tst.w $12(a0)
	bmi.s loc_204ee2
	bsr.w sub_20661e
	tst.w d1
	bpl.s loc_204ee2
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204fa2
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204ee2:
	rts
loc_204ee4:
	bsr.w sub_20690c
	tst.w d1
	bpl.s loc_204ef6
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204ef6:
	bsr.w sub_20676e
	tst.w d1
	bpl.s loc_204f08
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_204f08:
	bsr.w sub_2067c6
	tst.w d1
	bpl.s loc_204f3e
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_204f28
	move.w #$0,$12(a0)
	rts
loc_204f28:
	move.b d3,$26(a0)
	bsr.w sub_205014
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_204f3e
	neg.w $14(a0)
loc_204f3e:
	rts
loc_204f40:
	bsr.w sub_20676e
	tst.w d1
	bpl.s loc_204f5a
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_204f5a:
	bsr.w sub_2067c6
	tst.w d1
	bpl.s loc_204f74
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_204f72
	move.w #$0,$12(a0)
loc_204f72:
	rts
loc_204f74:
	tst.w $12(a0)
	bmi.s loc_204fa0
	bsr.w sub_20661e
	tst.w d1
	bpl.s loc_204fa0
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_204fa2
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_204fa0:
	rts

sub_204fa2:
	btst.b #$4,$22(a0)
	beq.s loc_204fac
	nop
loc_204fac:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205006
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204fe6
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204ff6
loc_204fe6:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204ff6:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_2023f8).l
loc_205006:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205014:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	jsr (sub_2036d0).l
	addi.w #$30,$12(a0)
	btst.b #$6,$22(a0)
	beq.s loc_20504e
	subi.w #$20,$12(a0)
loc_20504e:
	jsr (sub_2063c4).l
	bsr.w sub_20506a
	bsr.w sub_204a9c
	bsr.w sub_203f3e
	bsr.w sub_2052fc
	jmp (sub_203726).l

sub_20506a:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.w sub_206c40
	bsr.w sub_204d9e
	btst.b #$1,$22(a0)
	bne.s loc_2050a4
	moveq #$0,d0
	move.w d0,$12(a0)
	move.w d0,$10(a0)
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	subq.b #$2,$24(a0)
	move.w #$78,$30(a0)
loc_2050a4:
	rts
	bsr.w sub_2050be
	jsr (sub_20366e).l
	bsr.w sub_203f3e
	bsr.w sub_2052fc
	jmp (sub_203726).l

sub_2050be:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_20512c
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_2050f2
	clr.b ($ff1508).l
loc_2050f2:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_20510c
	tst.b ($ff0f01).l
	beq.s loc_20510c
	move.b #$0,($ff1508).l
	bra.s loc_205126
loc_20510c:
	jsr (sub_2073d2).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_20512c
loc_205126:
	move.w #$3c,$3a(a0)
loc_20512c:
	rts
	tst.w $3a(a0)
	beq.w loc_2051b0
	subq.w #$1,$3a(a0)
	bne.w loc_2051b0
	move.w #$1,($ff1502).l
	jsr (sub_202390).l
	move.b #$1,($a01c3e).l
	jsr (sub_2023ac).l
	bsr.w sub_2071c0
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_20517e
	cmpi.b #$1,($ff152e).l
	bne.s loc_20517e
	bclr.b #$1,($ff151c).l
loc_20517e:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_2051ac
	cmpi.b #$1,($ff152e).l
	bne.s loc_2051a6
	tst.b ($ff158e).l
	beq.s loc_2051ac
	move.b #$1,($ff1522).l
	bra.s loc_2051ac
loc_2051a6:
	clr.b ($ff1522).l
loc_2051ac:
	bra.w sub_20590c
loc_2051b0:
	rts

sub_2051b2:
	cmpi.b #$3,($ff1506).l
	beq.s loc_2051da
	cmpi.b #$5,($ff1506).l
	beq.s loc_2051da
	cmpi.b #$2,($ff1506).l
	beq.s loc_2051da
	tst.b ($ff1506).l
	bne.w loc_20529c
loc_2051da:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205218
	tst.b ($ff1506).l
	bne.w loc_20529e
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_20529e
	bra.s loc_205220
loc_205218:
	cmp.b ($f7af).w,d1
	beq.w loc_20529e
loc_205220:
	cmp.b ($f7ac).w,d1
	beq.s loc_205250
	cmp.b ($f7ad).w,d1
	beq.s loc_205234
	bclr.b #$6,$1(a0)
	rts
loc_205234:
	cmpi.b #$5,($ff1506).l
	beq.w loc_2052b6
	btst.b #$1,$22(a0)
	beq.s loc_205250
	bclr.b #$6,$1(a0)
	rts
loc_205250:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_205262
	bclr.b #$6,$1(a0)
	rts
loc_205262:
	cmpi.b #$e0,d2
	bcs.s loc_205270
	bset.b #$6,$1(a0)
	rts
loc_205270:
	btst.b #$6,$1(a0)
	bne.s loc_20528c
	move.b $26(a0),d1
	beq.s loc_20529c
	cmpi.b #$80,d1
	bhi.s loc_20529c
	bset.b #$6,$1(a0)
	rts
loc_20528c:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_20529c
	bclr.b #$6,$1(a0)
loc_20529c:
	rts
loc_20529e:
	btst.b #$2,$22(a0)
	bne.s loc_2052b0
	move.w #$9c,d0
	jsr (sub_2023f8).l
loc_2052b0:
	jmp (sub_204b30).l
loc_2052b6:
	tst.w $12(a0)
	bmi.s loc_2052fa
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_2052ee
	cmpi.w #$38,d1
	bcs.s loc_2052e6
	cmpi.w #$80,d1
	bcs.s loc_2052fa
loc_2052de:
	bclr.b #$6,$1(a0)
	rts
loc_2052e6:
	bset.b #$6,$1(a0)
	rts
loc_2052ee:
	cmpi.w #$38,d1
	bcs.s loc_2052de
	cmpi.w #$80,d1
	bcc.s loc_2052e6
loc_2052fa:
	rts

sub_2052fc:
	lea (dat_2055ec).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20531e
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20531e:
	bsr.w sub_20558e
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_205396
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_205364
	move.b d0,$1e(a0)

sub_205348:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_20535c
	bpl.s loc_20535c
	cmpi.b #$fd,d0
	bge.s loc_205366
loc_20535c:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_205364:
	rts
loc_205366:
	addq.b #$1,d0
	bne.s loc_205376
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_20535c
loc_205376:
	addq.b #$1,d0
	bne.s loc_20538a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_20535c
loc_20538a:
	addq.b #$1,d0
	bne.s loc_205394
	move.b $2(a1,d1.w),$1c(a0)
loc_205394:
	rts
loc_205396:
	subq.b #$1,$1e(a0)
	bpl.s loc_205364
	addq.b #$1,d0
	bne.w loc_205450
	tst.b ($ff195b).l
	bne.w loc_205518
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_2053be
	not.b d0
loc_2053be:
	btst.b #$1,$2c(a0)
	bne.s loc_2053cc
	addi.b #$10,d0
	bra.s loc_2053ce
loc_2053cc:
	addq.b #$8,d0
loc_2053ce:
	bpl.s loc_2053d2
	moveq #$3,d1
loc_2053d2:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_2054c4
	move.w $14(a0),d2
	bpl.s loc_2053f0
	neg.w d2
loc_2053f0:
	btst.b #$1,$2c(a0)
	beq.s loc_205408
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_2057ee).l,a1
	bra.s loc_205432
loc_205408:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_2057c8).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_205432
	lea (dat_20566c).l,a1
	cmpi.w #$600,d2
	bcc.s loc_205432
	lea (dat_205664).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_205432:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205440
	moveq #$0,d2
loc_205440:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_205348
	add.b d3,$1a(a0)
	rts
loc_205450:
	addq.b #$1,d0
	bne.s loc_2054c0
	move.w $14(a0),d2
	bpl.s loc_20545c
	neg.w d2
loc_20545c:
	lea (dat_20574a).l,a1
	tst.b ($ff195b).l
	bne.s loc_20549a
	lea (dat_20567c).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_20548e
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_20549a
	lea (dat_2057f6).l,a1
	bra.s loc_20549a
loc_20548e:
	cmpi.w #$600,d2
	bcc.s loc_20549a
	lea (dat_205674).l,a1
loc_20549a:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_2054a4
	moveq #$0,d2
loc_2054a4:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205348
loc_2054c0:
	addq.b #$1,d0
	bne.s loc_205504
loc_2054c4:
	move.w $14(a0),d2
	bmi.s loc_2054cc
	neg.w d2
loc_2054cc:
	addi.w #$800,d2
	bpl.s loc_2054d4
	moveq #$0,d2
loc_2054d4:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_20575c).l,a1
	tst.b ($ff195b).l
	bne.s loc_2054ee
	lea (dat_205684).l,a1
loc_2054ee:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_205348
loc_205504:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205518:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20552a
	not.b d0
loc_20552a:
	addi.b #$10,d0
	bpl.s loc_205532
	moveq #$0,d1
loc_205532:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_205560
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_205450
loc_205560:
	move.w $14(a0),d2
	bpl.s loc_205568
	neg.w d2
loc_205568:
	lea (dat_205744).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20557a
	lea (dat_20573e).l,a1
loc_20557a:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_205584
	moveq #$0,d2
loc_205584:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_205348

sub_20558e:
	tst.b ($ff195b).l
	beq.s loc_20559a
	move.b dat_20559c(pc,d0.w),d0
loc_20559a:
	rts
dat_20559c:
	.incbin 21916, 80
dat_2055ec:
	.incbin 21996, 120
dat_205664:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_20566c:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205674:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_20567c:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205684:
	.incbin 22148, 186
dat_20573e:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205744:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_20574a:
	.incbin 22346, 18
dat_20575c:
	.incbin 22364, 108
dat_2057c8:
	.incbin 22472, 38
dat_2057ee:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_2057f6:
	.incbin 22518, 56

sub_20582e:
	tst.b (a0)
	beq.w loc_205890
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205890
	move.b d0,(a2)
	lea (dat_22f1b0).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205890
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205862:
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
loc_20587c:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_20587c
	dbf d1,loc_205862
loc_205890:
	rts

sub_205892:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205906
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
	bne.s loc_2058f4
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_2058f4:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205906:
	rts
loc_205908:
	move.w #$e,d0

sub_20590c:
	cmpi.w #$67,d0
	bne.s loc_20591a
	move.b #$1,($ff1958).l
loc_20591a:
	move.w d0,($a12010).l
loc_205920:
	move.w ($a12020).l,d0
	beq.s loc_205920
	cmp.w ($a12020).l,d0
	bne.s loc_205920
	move.w #$0,($a12010).l
loc_205938:
	move.w ($a12020).l,d0
	bne.s loc_205938
	move.w ($a12020).l,d0
	bne.s loc_205938
	rts
	dc.b $00,$00

sub_20594c:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205968
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205968:
	subq.b #$1,$1e(a0)
	bpl.s loc_2059a8
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_2059aa
loc_205984:
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
loc_2059a8:
	rts
loc_2059aa:
	addq.b #$1,d0
	bne.s loc_2059ba
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205984
loc_2059ba:
	addq.b #$1,d0
	bne.s loc_2059ce
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205984
loc_2059ce:
	addq.b #$1,d0
	bne.s loc_2059d8
	move.b $2(a1,d1.w),$1c(a0)
loc_2059d8:
	addq.b #$1,d0
	bne.s loc_2059e0
	addq.b #$2,$24(a0)
loc_2059e0:
	addq.b #$1,d0
	bne.s loc_2059ee
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_2059ee:
	addq.b #$1,d0
	bne.s loc_2059f6
	addq.b #$2,$25(a0)
loc_2059f6:
	rts
	.incbin 23032, 536

sub_205c10:
	rts
	.incbin 23570, 116

sub_205c86:
	tst.b $25(a0)
	bne.s loc_205cb6
	moveq #$0,d1
	move.w $3e(a0),d1
	lsr.b #$1,d1
	ori.b #$80,d1
	jsr (sub_2073d2).l
	bne.s loc_205cb6
	move.b #$1c,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b d1,$28(a1)
loc_205cb6:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205cc6(pc,d0.w),d0
	jmp dat_205cc6(pc,d0.w)
dat_205cc6:
	dc.b $00,$06,$00,$56,$00,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$8680,$2(a0)
	tst.b $29(a0)
	beq.s loc_205cee
	andi.b #$7f,$2(a0)
loc_205cee:
	move.l #$23b3c6,$4(a0)
	bsr.s sub_205c86
	move.b #$0,$20(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
	move.w #$0,$1c(a0)
	tst.b $28(a0)
	beq.s loc_205d1c
	move.w #$100,$1c(a0)
loc_205d1c:
	lea (dat_23b3b2).l,a1
	bsr.w sub_20594c
	jmp (sub_203726).l
	tst.b $25(a0)
	beq.s loc_205d38
	jmp (sub_2037d2).l
loc_205d38:
	move.b #$1f,$0(a0)
	move.b #$0,$24(a0)
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205d5a(pc,d0.w),d0
	jsr dat_205d5a(pc,d0.w)
	jmp (sub_203726).l
dat_205d5a:
	dc.b $00,$0a,$00,$66,$00,$b6,$01,$06
	dc.b $01,$14
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.b #$0,$16(a0)
	move.w #$a6d7,$2(a0)
	tst.b $29(a0)
	beq.s loc_205d88
	andi.b #$7f,$2(a0)
loc_205d88:
	move.l #$234086,$4(a0)
	tst.b $28(a0)
	bne.s loc_205dae
	bsr.w sub_205e1a
	move.b (a1),d0
	move.b #$4,$24(a0)
	move.b #$3,$1c(a0)
	btst.l #$6,d0
	bne.s loc_205e10
loc_205dae:
	move.w #$2,$1c(a0)
	move.b #$2,$24(a0)
	move.w #$6d7,$2(a0)
	jsr (sub_2066cc).l
	tst.w d1
	bpl.s loc_205e0c
	add.w d1,$c(a0)
	tst.b $28(a0)
	bne.s loc_205df6
	bsr.w sub_205e1a
	lea ($ff1900).l,a2
	move.b $0(a2,d1.w),d0
	addq.b #$1,$0(a2,d1.w)
	bsr.w sub_205e40
	move.w $8(a0),$0(a1,d0.w)
	move.w $c(a0),$2(a1,d0.w)
loc_205df6:
	move.b #$4,$24(a0)
	move.b #$1,$1c(a0)
	move.b #$30,$16(a0)
	bra.w loc_205e10
loc_205e0c:
	addq.w #$2,$c(a0)
loc_205e10:
	lea (dat_23406a).l,a1
	bra.w sub_20594c

sub_205e1a:
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

sub_205e40:
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
	bra.s loc_205e10
	move.b #$3,$1c(a0)
	move.b #$4,$24(a0)
	bra.s loc_205e10
	.incbin 24188, 86
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205eec(pc,d0.w),d0
	jsr dat_205eec(pc,d0.w)
	jsr (sub_203726).l
	jmp (loc_207408).l
dat_205eec:
	.incbin 24300, 724

sub_2061c0:
	bclr.b #$7,($ff156b).l
	beq.s loc_20620e
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_206210(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_2061e4:
	move.l (a1)+,(a2)+
	dbf d0,loc_2061e4
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_20620e:
	rts
dat_206210:
	.incbin 25104, 250
loc_20630a:
	bset.b #$2,$22(a1)
	bne.s loc_206328
	move.b #$e,$16(a1)
	move.b #$7,$17(a1)
	addq.w #$5,$c(a1)
	move.b #$2,$1c(a1)
loc_206328:
	rts
	.incbin 25386, 32
loc_20634a:
	bmi.s loc_20630a
	move.w #$d00,d0
	btst.l #$3,d1
	bne.s loc_20635e
	btst.l #$2,d1
	beq.s loc_20630a
	neg.w d0
loc_20635e:
	cmpi.b #$2,$28(a0)
	beq.s loc_20636c
	bset.b #$1,$22(a1)
loc_20636c:
	move.w d0,$10(a1)
	move.w d0,$14(a1)
	bra.s loc_20630a
	.incbin 25462, 78

sub_2063c4:
	rts
loc_2063c6:
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
	bne.s loc_206480
	move.b ($ff1593).l,($ff195b).l
loc_206480:
	tst.b ($ff1522).l
	bpl.s loc_206496
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206496:
	rts

sub_206498:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_2063c6
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
	bne.s loc_206552
	move.b ($ff1591).l,($ff195b).l
loc_206552:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206574
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206574:
	tst.b ($ff1522).l
	bpl.s loc_20658a
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_20658a:
	rts

sub_20658c:
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
	bpl.s loc_2065c8
	move.b d1,d0
	bpl.s loc_2065c2
	subq.b #$1,d0
loc_2065c2:
	addi.b #$20,d0
	bra.s loc_2065d2
loc_2065c8:
	move.b d1,d0
	bpl.s loc_2065ce
	addq.b #$1,d0
loc_2065ce:
	addi.b #$1f,d0
loc_2065d2:
	andi.b #$c0,d0
	beq.w loc_2066a2
	cmpi.b #$80,d0
	beq.w loc_20683e
	andi.b #$38,d1
	bne.s loc_2065ea
	addq.w #$8,d2
loc_2065ea:
	cmpi.b #$40,d0
	beq.w loc_206914
	bra.w loc_206776

sub_2065f6:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_20689c
	cmpi.b #$80,d0
	beq.w sub_2067c6
	cmpi.b #$c0,d0
	beq.w loc_206706

sub_20661e:
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
loc_206682:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206690
	move.b ($f768).w,d3
	exg d0,d1
loc_206690:
	btst.l #$0,d3
	beq.s loc_206698
	move.b d2,d3
loc_206698:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_2066a2:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201252).l
	move.b #$0,d2
loc_2066be:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2066ca
	move.b d2,d3
loc_2066ca:
	rts

sub_2066cc:
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
	beq.s loc_206704
	move.b #$0,d3
loc_206704:
	rts
loc_206706:
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
	bra.w loc_206682

sub_20676e:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206776:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2013c2).l
	move.b #$c0,d2
	bra.w loc_2066be
loc_206796:
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
	beq.s loc_2067c4
	move.b #$c0,d3
loc_2067c4:
	rts

sub_2067c6:
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
	bra.w loc_206682

sub_206836:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_20683e:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_201252).l
	move.b #$80,d2
	bra.w loc_2066be
	.incbin 26722, 58
loc_20689c:
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
	bra.w loc_206682

sub_20690c:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206914:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_2013c2).l
	move.b #$40,d2
	bra.w loc_2066be
loc_206938:
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
	beq.s loc_206966
	move.b #$40,d3
loc_206966:
	rts

sub_206968:
	btst.b #$0,$2c(a0)
	beq.s loc_206974
	moveq #$0,d0
	rts
loc_206974:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_206998
	addi.w #$c,d3
	moveq #$a,d5
loc_206998:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_2069a6:
	tst.b $1(a1)
	bpl.s loc_2069b2
	move.b $20(a1),d0
	bne.s loc_2069be
loc_2069b2:
	lea $40(a1),a1
	dbf d6,loc_2069a6
	moveq #$0,d0
	rts
loc_2069be:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_206de4).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_2069e6
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_2069ec
	bra.w loc_2069b2
loc_2069e6:
	cmp.w d4,d0
	bhi.w loc_2069b2
loc_2069ec:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_206a04
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_206a0a
	bra.w loc_2069b2
loc_206a04:
	cmp.w d5,d0
	bhi.w loc_2069b2
loc_206a0a:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_206aa2
	cmpi.b #$c0,d1
	beq.w loc_206c98
	tst.b d1
	bmi.w loc_206a26
	bra.s loc_206a32
loc_206a26:
	tst.b ($ff151f).l
	bne.s loc_2069b2
	bra.w sub_206b6c
loc_206a32:
	tst.b ($ff1956).l
	beq.s loc_206a42
	tst.b $29(a1)
	bne.s loc_206a4a
	rts
loc_206a42:
	tst.b $29(a1)
	beq.s loc_206a4a
	rts
loc_206a4a:
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_206a66
	cmpi.w #$5a,$30(a0)
	bcc.s loc_206a64
	addq.b #$2,$24(a1)
loc_206a64:
	rts
loc_206a66:
	tst.w $12(a0)
	bpl.s loc_206a90
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206aa0
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206aa0
	addq.b #$4,$25(a1)
	rts
loc_206a90:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206aa0
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206aa0:
	rts

sub_206aa2:
	tst.b ($ff1521).l
	bne.s loc_206abc
	tst.b ($ff151f).l
	bne.s loc_206abc
	cmpi.b #$2,$1c(a0)
	bne.w sub_206b6c
loc_206abc:
	tst.b $21(a1)
	beq.s loc_206ae6
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_206ae4
	bset.b #$7,$22(a1)
loc_206ae4:
	rts
loc_206ae6:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_206afe
	moveq #$6,d0
loc_206afe:
	move.w d0,$3e(a1)
	move.w dat_206b5e(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_206b18
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_206b18:
	bsr.w sub_2098c4
	move.w #$96,d0
	jsr (sub_2023f8).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_206b4e
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_206b56
	neg.w $12(a0)
	rts
loc_206b4e:
	addi.w #$100,$12(a0)
	rts
loc_206b56:
	subi.w #$100,$12(a0)
	rts
dat_206b5e:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_206b6c:
	btst.b #$0,$2c(a0)
	bne.s loc_206b84
	tst.b ($ff1521).l
	bne.s loc_206b84
	tst.b ($ff151f).l
	beq.s loc_206b88
loc_206b84:
	moveq #$ffffffff,d0
	rts
loc_206b88:
	nop
	tst.w $30(a0)
	bne.s loc_206b84
	movea.l a1,a2

sub_206b92:
	tst.b ($ff151e).l
	bne.s loc_206bcc
	tst.w ($ff1512).l
	beq.w loc_206c36
	jsr (sub_2073d2).l
	bne.s loc_206bcc
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	tst.b ($ff1956).l
	beq.s loc_206bcc
	move.b #$1,$29(a1)
loc_206bcc:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_206be2
	move.b #$0,($ff156f).l
loc_206be2:
	move.b #$4,$24(a0)
	bsr.w sub_204fa2
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_206c12
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_206c12:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_206c20
	neg.w $10(a0)
loc_206c20:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_206c36:
	tst.w ($ff1588).l
	bne.w loc_206bcc

sub_206c40:
	tst.w ($ff1906).l
	bne.s loc_206c94
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_204fa2
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
loc_206c94:
	moveq #$ffffffff,d0
	rts
loc_206c98:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$6,d1
	beq.w loc_206da8
	cmpi.b #$17,d1
	beq.w loc_206d30
	cmpi.b #$1f,d1
	beq.w loc_206d30
	cmpi.b #$22,d1
	beq.w loc_206d78
	cmpi.b #$23,d1
	beq.w loc_206d30
	cmpi.b #$2d,d1
	beq.w loc_206d86
	cmpi.b #$30,d1
	beq.w loc_206d92
	tst.b ($f7aa).w
	beq.w loc_206d2e
	cmpi.b #$1,($f7aa).w
	beq.s loc_206cf8
	cmpi.b #$4,($f7aa).w
	beq.s loc_206d1a
	cmpi.b #$5,($f7aa).w
	beq.s loc_206d28
loc_206cf8:
	cmpi.b #$3c,d1
	blt.s loc_206d2e
	cmpi.b #$3f,d1
	bgt.s loc_206d2e
	bsr.w sub_206aa2
	tst.b $20(a1)
	bne.s loc_206d12
	addq.b #$3,$21(a1)
loc_206d12:
	clr.b $20(a1)
	bra.w loc_206d30
loc_206d1a:
	cmpi.b #$3f,d1
	beq.s loc_206d3c
	cmpi.b #$3e,d1
	beq.s loc_206d36
	bra.s loc_206d2e
loc_206d28:
	cmpi.b #$3d,d1
	beq.s loc_206d36
loc_206d2e:
	rts
loc_206d30:
	addq.b #$1,$21(a1)
	rts
loc_206d36:
	bsr.w sub_206b6c
	bra.s loc_206d30
loc_206d3c:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_206d76
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_206d76
	neg.w $10(a0)
loc_206d76:
	rts
loc_206d78:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206d84
	addq.b #$1,$21(a1)
loc_206d84:
	rts
loc_206d86:
	btst.b #$2,$22(a0)
	beq.w sub_206aa2
	bra.s loc_206d30
loc_206d92:
	move.w $8(a0),d0
	sub.w $8(a1),d0
	smi d0
	move.b $29(a1),d1
	eor.b d0,d1
	beq.w sub_206aa2
	bra.s loc_206d30
loc_206da8:
	tst.w $12(a0)
	bpl.s loc_206dd2
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_206de2
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_206de2
	addq.b #$4,$25(a1)
	rts
loc_206dd2:
	cmpi.b #$2,$1c(a0)
	bne.s loc_206de2
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_206de2:
	rts
dat_206de4:
	.incbin 28132, 126
loc_206e62:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_206e78
	move.l #$4000,(dat_206ff2).l
	bra.s loc_206e98
loc_206e78:
	addi.l #$2000,(dat_206ff2).l
	cmpi.l #$80000,(dat_206ff2).l
	bls.s loc_206e98
	move.l #$80000,(dat_206ff2).l
loc_206e98:
	move.l (dat_206ff2).l,d0
	btst.b #$0,($f604).w
	beq.s loc_206eaa
	sub.l d0,$c(a0)
loc_206eaa:
	btst.b #$1,($f604).w
	beq.s loc_206eb6
	add.l d0,$c(a0)
loc_206eb6:
	btst.b #$2,($f604).w
	beq.s loc_206ec2
	sub.l d0,$8(a0)
loc_206ec2:
	btst.b #$3,($f604).w
	beq.s loc_206ece
	add.l d0,$8(a0)
loc_206ece:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_20106a).l
	move.w (a1),($ff194e).l
	lea (dat_206ff6).l,a2
	btst.b #$6,($f605).w
	beq.s loc_206f10
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_206f0a
	move.b #$0,d1
loc_206f0a:
	move.b d1,($ff1904).l
loc_206f10:
	btst.b #$7,($f605).w
	beq.s loc_206f30
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_206f2a
	add.b (a2),d1
loc_206f2a:
	move.b d1,($ff1904).l
loc_206f30:
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
	beq.s loc_206fbc
	bsr.w sub_2073d2
	bne.s loc_206fbc
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
loc_206fbc:
	btst.b #$4,($f605).w
	beq.s loc_206fec
	move.b #$0,($ff1906).l
	move.l #$22e760,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_206fec:
	jmp (sub_203726).l
dat_206ff2:
	dc.b $00,$00,$40,$00
dat_206ff6:
	.incbin 28662, 458

sub_2071c0:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_2071ce:
	clr.l (a2)+
	dbf d0,loc_2071ce
	rts

sub_2071d6:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_2071e4(pc,d0.w),d0
	jmp dat_2071e4(pc,d0.w)
dat_2071e4:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_207484).l,a0
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
	bcc.s loc_207222
	moveq #$0,d6
loc_207222:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20722a:
	cmp.w (a0),d6
	bls.s loc_20723c
	tst.b $4(a0)
	bpl.s loc_207238
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207238:
	addq.w #$8,a0
	bra.s loc_20722a
loc_20723c:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20725c
loc_20724a:
	cmp.w (a0),d6
	bls.s loc_20725c
	tst.b $4(a0)
	bpl.s loc_207258
	addq.b #$1,$1(a2)
loc_207258:
	addq.w #$8,a0
	bra.s loc_20724a
loc_20725c:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_207346
	bge.s loc_2072ec
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2072c8
loc_207296:
	cmp.w -$8(a0),d6
	bge.s loc_2072c8
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2072ac
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2072ac:
	bsr.w sub_20736a
	bne.s loc_2072b6
	subq.w #$8,a0
	bra.s loc_207296
loc_2072b6:
	tst.b $4(a0)
	bpl.s loc_2072c6
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_2072c6:
	addq.w #$8,a0
loc_2072c8:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_2072d4:
	cmp.w -$8(a0),d6
	bgt.s loc_2072e6
	tst.b -$4(a0)
	bpl.s loc_2072e2
	subq.b #$1,(a2)
loc_2072e2:
	subq.w #$8,a0
	bra.s loc_2072d4
loc_2072e6:
	move.l a0,($f770).w
	rts
loc_2072ec:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207300:
	cmp.w (a0),d6
	bls.s loc_207322
	tst.b $4(a0)
	bpl.s loc_20730e
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20730e:
	bsr.w sub_20736a
	beq.s loc_207300
	tst.b $4(a0)
	bpl.s loc_207322
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207322:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207342
loc_207330:
	cmp.w (a0),d6
	bls.s loc_207342
	tst.b $4(a0)
	bpl.s loc_20733e
	addq.b #$1,$1(a2)
loc_20733e:
	addq.w #$8,a0
	bra.s loc_207330
loc_207342:
	move.l a0,($f774).w
loc_207346:
	rts

sub_207348:
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

sub_20736a:
	bsr.s sub_207348
	beq.s loc_20737c
	tst.b $4(a0)
	bpl.s loc_207382
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_207382
loc_20737c:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_207382:
	bsr.w sub_2073d2
	bne.s loc_2073d0
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
	bpl.s loc_2073b2
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2073b2:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_2073c4
	nop
	nop
	nop
	nop
loc_2073c4:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_2073d0:
	rts

sub_2073d2:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_2073da:
	tst.b (a1)
	beq.s loc_2073e6
	lea $40(a1),a1
	dbf d0,loc_2073da
loc_2073e6:
	rts

sub_2073e8:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_207406
loc_2073fa:
	tst.b (a1)
	beq.s loc_207406
	lea $40(a1),a1
	dbf d0,loc_2073fa
loc_207406:
	rts
loc_207408:
	move.w $8(a0),d0
loc_20740c:
	tst.b $1(a0)
	bmi.s loc_207476
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_207476
loc_20742a:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20746c
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_207464
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20745c
	moveq #$0,d1
	bra.s loc_207464
loc_20745c:
	cmpi.w #$3,d1
	bcs.s loc_207464
	moveq #$2,d1
loc_207464:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20746c:
	jsr (sub_2037d2).l
	moveq #$1,d0
	rts
loc_207476:
	btst.b #$7,($ff152e).l
	bne.s loc_20742a
	moveq #$0,d0
	rts
dat_207484:
	.incbin 29828, 1188
dat_207928:
	dc.b $12,$53,$04,$b6
loc_20792c:
	sub.w d1,d0
	asr.b #$8,d0
	.incbin 31024, 1102

sub_207d7e:
	btst.b #$3,$22(a0)
	beq.s loc_207dee
	btst.b #$3,$22(a1)
	beq.s loc_207dee
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_207dee
	tst.b $2a(a1)
	beq.s loc_207db0
	move.w #$ab,d0
	jsr (sub_2023f8).l
loc_207db0:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_207ddc
	cmpi.b #$17,$1c(a1)
	beq.s loc_207ddc
	bclr.b #$0,$2c(a1)
loc_207ddc:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207dee
	bclr.b #$1,$22(a1)
loc_207dee:
	rts

sub_207df0:
	cmpi.b #$4,$24(a1)
	bne.s loc_207e02
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_207e02:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_207e62
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207e24
	bclr.b #$3,$22(a0)
	bra.w sub_207d7e
loc_207e24:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_207e62
	tst.b ($ff195b).l
	beq.s loc_207e4c
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_207e5c
loc_207e4c:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_207e5c:
	move.b #$0,$1c(a1)
loc_207e62:
	bset.b #$3,$22(a1)
	beq.s loc_207e84
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_207ebc
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_207e84:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_207eb0
	cmpi.b #$2,$24(a0)
	beq.s loc_207eb6
loc_207eb0:
	move.w $10(a1),$14(a1)
loc_207eb6:
	bclr.b #$1,$22(a1)
loc_207ebc:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_207ec6:
	move.b #$1,$25(a0)

sub_207ecc:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208180
	btst.b #$6,$2c(a1)
	bne.w loc_208180
	cmpi.b #$6,$24(a1)
	bcc.w loc_208180
	tst.b $0(a1)
	beq.w loc_208180
	tst.b $1(a0)
	bpl.w loc_208180
	tst.b ($ff1906).l
	bne.w loc_208180
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208180
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208180
	cmpi.b #$2b,$1c(a1)
	bne.s loc_207f3a
	btst.b #$3,$22(a0)
	bne.s loc_207f4c
	bra.w loc_208180
loc_207f3a:
	cmpi.b #$1,$25(a0)
	bne.s loc_207f4c
	tst.w $12(a1)
	beq.s loc_207f4c
	bmi.w loc_208180
loc_207f4c:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208180
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208180
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_207f82
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_207f82:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_207f90
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_207f90:
	cmp.w d4,d5
	bcs.w loc_208024
	cmpi.b #$1,$25(a0)
	beq.w loc_208180
	cmpi.b #$a,$0(a0)
	bne.s loc_207fb2
	btst.b #$1,$22(a1)
	bne.w loc_208180
loc_207fb2:
	cmpi.b #$4,d5
	bls.w loc_208180
	bsr.w sub_2081d0
	move.l d0,-(a7)
	bsr.w sub_207d7e
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_207fdc
	tst.w $10(a1)
	beq.s loc_20800c
	bpl.s loc_207fe4
	bra.s loc_20800c
loc_207fdc:
	tst.w $10(a1)
	beq.s loc_20800c
	bpl.s loc_20800c
loc_207fe4:
	bsr.w sub_208190
	btst.b #$1,$22(a1)
	bne.s loc_208002
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_208002:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_20800c:
	bsr.w sub_208246
	bsr.w sub_208190
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_208024:
	cmpi.b #$19,$0(a0)
	bne.s loc_208036
	btst.b #$2,$22(a1)
	bne.w loc_208180
loc_208036:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_20804c
	bmi.w loc_20811c
loc_20804c:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_20805e
	tst.w $12(a1)
	beq.s loc_20805e
	bmi.w loc_208180
loc_20805e:
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
	beq.s loc_2080aa
	bpl.s loc_20808a
	neg.b d0
loc_20808a:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20658c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2080aa
	tst.w $10(a0)
	bpl.s loc_2080a6
	neg.w d1
loc_2080a6:
	add.w d1,$8(a1)
loc_2080aa:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208114
	tst.w $12(a0)
	bmi.s loc_2080e8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20661e).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2080e8
	add.w d1,$c(a1)
	bra.w loc_208180
loc_2080e8:
	tst.w $12(a0)
	bpl.s loc_208114
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206836).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208114
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c40).l
	movem.l (a7)+,a0-a1
	bra.s loc_208180
loc_208114:
	bsr.w sub_207df0
	moveq #$1,d0
	rts
loc_20811c:
	cmpi.b #$1,$25(a0)
	beq.s loc_208180
	cmpi.b #$9,$0(a0)
	beq.s loc_208180
	cmpi.b #$a,$0(a0)
	bne.s loc_208146
	cmpi.b #$2,$25(a0)
	beq.s loc_208166
	btst.b #$1,$1(a0)
	bne.s loc_208166
	bra.s loc_208180
loc_208146:
	btst.b #$1,$22(a1)
	bne.s loc_208166
	tst.w $12(a0)
	beq.s loc_208166
	bmi.s loc_208166
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c40).l
	movem.l (a7)+,a0-a1
loc_208166:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208246
	bsr.w sub_207d7e
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208180:
	bsr.w sub_208246
	bsr.w sub_207d7e
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208190:
	tst.w $10(a0)
	beq.s loc_2081ce
	cmpi.b #$a,$0(a0)
	beq.s loc_2081ce
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_2081aa
	neg.b d0
loc_2081aa:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_20658c).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_2081ce
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c40).l
	movem.l (a7)+,a0-a1
loc_2081ce:
	rts

sub_2081d0:
	cmpi.b #$a,$0(a0)
	bne.s loc_2081e0
	move.b #$0,$20(a1)
	rts
loc_2081e0:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208234
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208244
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208202
	tst.w $10(a2)
	beq.s loc_208244
loc_208202:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208214
	cmp.w $8(a2),d1
	bcs.s loc_208244
	bra.s loc_20821a
loc_208214:
	cmp.w $8(a2),d1
	bcc.s loc_208244
loc_20821a:
	cmpi.b #$15,$0(a0)
	beq.s loc_208244
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206c40).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208234:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208244:
	rts

sub_208246:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208260
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208260
	move.b #$0,$20(a1)
loc_208260:
	rts
	.incbin 33378, 374
loc_2083d8:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2083e6(pc,d0.w),d0
	jmp dat_2083e6(pc,d0.w)
dat_2083e6:
	.incbin 33766, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_2083d8
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_20843c
	tst.b $1(a0)
	bpl.s loc_208444
loc_20843c:
	move.w dat_208496(pc,d0.w),d1
	jsr dat_208496(pc,d1.w)
loc_208444:
	bsr.w sub_203726
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208476
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208476:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_2037d2
	rts
dat_208496:
	.incbin 33942, 26
	addq.b #$2,$24(a0)
	move.l #$208818,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208506
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$20881e,$4(a0)
	bra.s loc_208548
loc_208506:
	btst.l #$3,d0
	beq.s loc_208534
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$208868,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20be2e).l
	move.l (a7)+,d0
	bra.s loc_208548
loc_208534:
	btst.b #$1,$1(a0)
	beq.s loc_208548
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208548:
	btst.l #$1,d0
	beq.s loc_208554
	bset.b #$5,$2(a0)
loc_208554:
	andi.w #$2,d0
	move.w dat_208560(pc,d0.w),$30(a0)
	rts
dat_208560:
	dc.b $f0,$00,$f6,$00

sub_208564:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207ecc).l
	tst.b $1(a0)
	bpl.s loc_208580
	lea ($d000).w,a1
	bsr.s sub_208564
	bne.s loc_208582
loc_208580:
	rts
loc_208582:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_2023f8).l
	lea (dat_20880a).l,a1
	bra.w sub_20594c
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts

sub_2085d6:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207ecc).l
	tst.b $1(a0)
	bpl.s loc_2085f8
	lea ($d000).w,a1
	bsr.s sub_2085d6
	btst.b #$5,$22(a0)
	bne.s loc_2085fa
loc_2085f8:
	rts
loc_2085fa:
	move.b #$a,$24(a0)
	move.w $30(a0),$10(a1)
	addq.w #$8,$8(a1)
	bset.b #$0,$22(a1)
	btst.b #$0,$22(a0)
	bne.s loc_208628
	subi.w #$10,$8(a1)
	neg.w $10(a1)
	bclr.b #$0,$22(a1)
loc_208628:
	move.w #$f,$3e(a1)
	move.w $10(a1),$14(a1)
	btst.b #$2,$22(a1)
	bne.s loc_208642
	move.b #$0,$1c(a1)
loc_208642:
	clr.b $26(a1)
	bclr.b #$5,$22(a0)
	bclr.b #$5,$22(a1)
	move.w #$98,d0
	jmp (sub_2023f8).l
	.incbin 34396, 134
	tst.b $1(a0)
	bpl.s loc_2086fa
	lea ($d000).w,a1
	bsr.w sub_208564
	bne.s loc_2086fc
	btst.b #$5,$22(a0)
	bne.s loc_2086fc
loc_2086fa:
	rts
loc_2086fc:
	move.b #$16,$24(a0)
	moveq #$0,d0
	move.b #$e0,d0
	jsr (sub_2008fc).l
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
	beq.s loc_20873a
	subi.w #$10,$c(a1)
	neg.w $12(a1)
loc_20873a:
	bclr.b #$0,$22(a1)
	subq.w #$8,$8(a1)
	btst.b #$0,$22(a0)
	beq.s loc_20875c
	addi.w #$10,$8(a1)
	bset.b #$0,$22(a1)
	neg.w $10(a1)
loc_20875c:
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$5,$22(a1)
	bclr.b #$3,$22(a0)
	bclr.b #$5,$22(a0)
	move.w #$98,d0
	jsr (sub_2023f8).l
	lea (dat_20880a).l,a1
	bra.w sub_20594c
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 34720, 106
dat_20880a:
	.incbin 34826, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208904(pc,d0.w),d1
	jmp dat_208904(pc,d1.w)
dat_208904:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_20890e:
	.incbin 35086, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208966
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_20895e
	moveq #$0,d1
	bra.s loc_208966
loc_20895e:
	cmpi.w #$3,d1
	bcs.s loc_208966
	moveq #$2,d1
loc_208966:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_208982
	moveq #$6,d1
loc_208982:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_20890e).l,a1
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
	beq.s loc_2089d2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2089ca
	moveq #$0,d0
	bra.s loc_2089d2
loc_2089ca:
	cmpi.w #$3,d0
	bcs.s loc_2089d2
	moveq #$2,d0
loc_2089d2:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208aa0
	dbf d0,loc_2089d2
	bclr.b #$7,(a2)
	bra.s loc_208a28
loc_2089e4:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208a10
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208a08
	moveq #$0,d0
	bra.s loc_208a10
loc_208a08:
	cmpi.w #$3,d0
	bcs.s loc_208a10
	moveq #$2,d0
loc_208a10:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_208aa0
	dbf d0,loc_208a10
	bclr.b #$7,(a2)
	bsr.w sub_2073e8
	bne.w loc_208aac
loc_208a28:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$208d72,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208a7e
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_208a7e
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_208a7e:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_208aa0:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_2089e4
loc_208aac:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_208ad2
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_208aca
	moveq #$0,d0
	bra.s loc_208ad2
loc_208aca:
	cmpi.w #$3,d0
	bcs.s loc_208ad2
	moveq #$2,d0
loc_208ad2:
	lea $1(a2),a3
loc_208ad6:
	btst.b #$0,-(a3)
	bne.w sub_2037d2
	dbf d0,loc_208ad6
	tst.b $1(a0)
	bmi.s loc_208b06
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_208b80
loc_208b06:
	tst.w ($ff190e).l
	bne.s loc_208b16
	move.b ($ff1913).l,$1a(a0)
loc_208b16:
	bra.w sub_203726
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208b84
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_208b66
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_208b5e
	moveq #$0,d1
	bra.s loc_208b66
loc_208b5e:
	cmpi.w #$3,d1
	bcs.s loc_208b66
	moveq #$2,d1
loc_208b66:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_208d6a).l,a1
	bsr.w sub_20594c
	bra.w sub_203726
loc_208b80:
	bra.w sub_2037d2

sub_208b84:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_208bd4
	bset.b #$1,($ff150d).l
	beq.s loc_208bbe
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_208bd4
	bset.b #$2,($ff150d).l
	bne.s loc_208bd4
loc_208bbe:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_20590c).l
loc_208bd4:
	jmp (sub_2023f8).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208be8(pc,d0.w),d1
	jmp dat_208be8(pc,d1.w)
dat_208be8:
	dc.b $00,$0a,$01,$04,$01,$5c,$01,$70
	dc.b $01,$7e
	movea.l a0,a1
	moveq #$0,d5
	move.w ($ff1512).l,d5
	moveq #$20,d0
	cmp.w d0,d5
	bcs.s loc_208c04
	move.w d0,d5
loc_208c04:
	subq.w #$1,d5
	move.w #$288,d4
	bra.s loc_208c14
loc_208c0c:
	bsr.w sub_2073d2
	bne.w loc_208cca
loc_208c14:
	move.b #$11,$0(a1)
	addq.b #$2,$24(a1)
	move.b #$8,$16(a1)
	move.b #$8,$17(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.l #$208d72,$4(a1)
	move.b $29(a0),$29(a1)
	move.w #$a7ae,$2(a1)
	move.b #$3,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_208c72
	move.b #$0,$18(a1)
	tst.b $29(a0)
	beq.s loc_208c72
	move.b #$3,$18(a1)
	andi.b #$7f,$2(a1)
loc_208c72:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b #$ff,($ff1916).l
	tst.w d4
	bmi.s loc_208cba
	move.w d4,d0
	jsr (sub_2008fc).l
	move.w d4,d2
	lsr.w #$8,d2
	asl.w d2,d0
	asl.w d2,d1
	move.w d0,d2
	move.w d1,d3
	addi.b #$10,d4
	bcc.s loc_208cba
	subi.w #$80,d4
	bcc.s loc_208cba
	move.w #$288,d4
loc_208cba:
	move.w d2,$10(a1)
	move.w d3,$12(a1)
	neg.w d2
	neg.w d4
	dbf d5,loc_208c0c
loc_208cca:
	move.w #$0,($ff1512).l
	move.b #$80,($ff150f).l
	move.b #$0,($ff150d).l
	move.w #$94,d0
	jsr (sub_2023f8).l
	move.b ($ff1917).l,$1a(a0)
	bsr.w sub_2036d0
	addi.w #$18,$12(a0)
	bmi.s loc_208d2a
	move.b ($ff190d).l,d0
	add.b d7,d0
	andi.b #$3,d0
	bne.s loc_208d2a
	jsr (sub_2066cc).l
	tst.w d1
	bpl.s loc_208d2a
	add.w d1,$c(a0)
	move.w $12(a0),d0
	asr.w #$2,d0
	sub.w d0,$12(a0)
	neg.w $12(a0)
loc_208d2a:
	tst.b ($ff1916).l
	beq.s loc_208d66
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	bcs.s loc_208d66
	bra.w sub_203726
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_208b84
	lea (dat_208d6a).l,a1
	bsr.w sub_20594c
	bra.w sub_203726
loc_208d66:
	bra.w sub_2037d2
dat_208d6a:
	.incbin 36202, 402
loc_208efc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208f2a(pc,d0.w),d0
	jsr dat_208f2a(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_208f28
	cmpi.w #$5a,($f786).w
	bcs.s loc_208f22
	btst.b #$0,($ff1505).l
	bne.s loc_208f28
loc_208f22:
	jmp (sub_203726).l
loc_208f28:
	rts
dat_208f2a:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209504,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_208f5e
	move.b #$13,$1a(a0)
loc_208f5e:
	rts
loc_208f60:
	tst.b ($ff0f01).l
	beq.s loc_208f6e
	jmp (sub_2037d2).l
loc_208f6e:
	cmpi.b #$a,$28(a0)
	beq.w loc_208efc
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208f92(pc,d0.w),d0
	jsr dat_208f92(pc,d0.w)
	jsr (sub_203726).l
	jmp (loc_207408).l
dat_208f92:
	.incbin 36754, 282

sub_2090ac:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2090e4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2090dc
	moveq #$0,d1
	bra.s loc_2090e4
loc_2090dc:
	cmpi.w #$3,d1
	bcs.s loc_2090e4
	moveq #$2,d1
loc_2090e4:
	add.w d1,d0
	rts

sub_2090e8:
	cmpi.b #$6,($ff1506).l
	bne.s loc_20910a
	tst.b ($ff1956).l
	beq.s loc_209102
	tst.b $29(a0)
	bne.s loc_20910a
	rts
loc_209102:
	tst.b $29(a0)
	beq.s loc_20910a
	rts
loc_20910a:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_207ecc).l
	tst.b $28(a0)
	bne.s loc_20912c
	tst.b ($ff0f01).l
	beq.s loc_20912c
	jmp (loc_207408).l
loc_20912c:
	cmpi.b #$8,$28(a0)
	bcc.w loc_208f60
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209144(pc,d0.w),d1
	jmp dat_209144(pc,d1.w)
dat_209144:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209504,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_20918e
	tst.b $29(a0)
	bne.s loc_20918e
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_20918e:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_2090ac
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_2091ba
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_2091ba:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209214
	move.b $25(a0),d0
	beq.s loc_2091f4
	bsr.w sub_20366e
	jsr (sub_2066cc).l
	tst.w d1
	bpl.w loc_209202
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209202
loc_2091f4:
	tst.b $1(a0)
	bpl.s loc_209202
	lea ($d000).w,a1
	bsr.w sub_2090e8
loc_209202:
	tst.w ($ff190e).l
	bne.s loc_209214
	lea (dat_20947c).l,a1
	bsr.w sub_20594c
loc_209214:
	bsr.w sub_203726
	jmp (loc_207408).l
	move.w #$96,d0
	jsr (sub_2023f8).l
	addq.b #$4,$24(a0)
	move.b #$0,$20(a0)
	bsr.w sub_2073d2
	bne.s loc_209256
	move.b #$1a,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b $1c(a0),$1c(a1)
	move.b $29(a0),$29(a1)
loc_209256:
	bsr.w sub_2073d2
	bne.s loc_209280
	move.b #$18,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	move.b #$1,$25(a1)
	move.b #$1,$28(a1)
	move.b $29(a0),$29(a1)
loc_209280:
	bsr.w sub_2090ac
	bset.b #$0,$2(a2,d0.w)
	move.b #$11,$1a(a0)
	bra.w sub_203726
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2092a6(pc,d0.w),d1
	jsr dat_2092a6(pc,d1.w)
	bra.w sub_203726
dat_2092a6:
	dc.b $00,$06,$00,$50,$01,$cc
	addq.b #$2,$24(a0)
	move.w #$85a8,$2(a0)
	tst.b $29(a0)
	beq.s loc_2092c2
	andi.b #$7f,$2(a0)
loc_2092c2:
	move.b #$24,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.w #$fd00,$12(a0)
	moveq #$0,d0
	move.b $1c(a0),d0
	move.b d0,$1a(a0)
	movea.l #$209504,a1
	add.b d0,d0
	adda.w $0(a1,d0.w),a1
	addq.w #$1,a1
	move.l a1,$4(a0)
	tst.w $12(a0)
	bpl.w loc_20930a
	bsr.w sub_2036d0
	addi.w #$18,$12(a0)
	rts
loc_20930a:
	addq.b #$2,$24(a0)
	move.w #$1d,$1e(a0)
	move.b $1c(a0),d0
	bne.s loc_209330
loc_20931a:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_20590c).l
loc_209330:
	cmpi.b #$1,d0
	bne.s loc_20937c
	addi.w #$a,($ff1512).l
	ori.b #$1,($ff150f).l
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209372
	bset.b #$1,($ff150d).l
	beq.w loc_20931a
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209372
	bset.b #$2,($ff150d).l

sub_20936e:
	beq.w loc_20931a
loc_209372:
	move.w #$95,d0
	jmp (sub_2023f8).l
loc_20937c:
	cmpi.b #$2,d0
	bne.s loc_20939a

sub_209382:
	move.b #$1,($ff151e).l
	move.b #$3,($d180).w
	move.w #$97,d0
	jmp (sub_2023f8).l
loc_20939a:
	cmpi.b #$3,d0
	bne.s loc_2093fc

sub_2093a0:
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
	bne.s loc_2093f0
	move.w #$82,d0
	jsr (sub_20590c).l
loc_2093f0:
	move.w #$6d,d0
	jmp (sub_20590c).l
	dc.b $4e,$75
loc_2093fc:
	cmpi.b #$4,d0
	bne.s loc_20943e
loc_209402:
	move.b #$1,($ff1520).l
	move.w #$4b0,($d034).w
	move.w #$c00,($f760).w
	move.w #$18,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff152e).l
	bne.s loc_209434
	move.w #$82,d0
	jsr (sub_20590c).l
loc_209434:
	move.w #$6c,d0
	jmp (sub_20590c).l
loc_20943e:
	cmpi.b #$5,d0
	bne.s loc_20944e
	move.w #$12c,($ff190e).l
	rts
loc_20944e:
	cmpi.b #$6,d0
	bne.s loc_209468
	move.w #$9d,d0
	jsr (sub_2023f8).l
	move.b #$1,($ff156f).l
	rts
loc_209468:
	bsr.w sub_209382
	bsr.w sub_2093a0
	bra.s loc_209402
	subq.w #$1,$1e(a0)
	bmi.w sub_2037d2
	rts
dat_20947c:
	.incbin 38012, 64

sub_2094bc:
	btst.l d1,d3
	.incbin 38078, 520
loc_2096c6:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2096da(pc,d0.w),d0
	jsr dat_2096da(pc,d0.w)
	jmp (sub_203726).l
dat_2096da:
	dc.b $00,$04,$00,$2e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$6c6,$2(a0)
	move.l #$20971a,$4(a0)
	move.b $28(a0),$1a(a0)
	andi.b #$7f,$1a(a0)
	move.b #$18,$2a(a0)
	subq.b #$1,$2a(a0)
	bne.s loc_209714
	jmp (sub_2037d2).l
loc_209714:
	subq.w #$2,$c(a0)
	rts
	.incbin 38682, 82
	tst.b $28(a0)
	bmi.w loc_2096c6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209782(pc,d0.w),d0
	jmp dat_209782(pc,d0.w)
dat_209782:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20981c,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_2097b2
	move.b #$3,$1a(a0)
	bra.s loc_2097d2
loc_2097b2:
	tst.w ($ff1588).l
	beq.s loc_2097c0
	move.b #$2,$1a(a0)
loc_2097c0:
	tst.b $28(a0)
	beq.s loc_2097d2
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_2097d2:
	tst.b $28(a0)
	bne.s loc_209816
	tst.b $29(a0)
	beq.s loc_209802
	tst.w ($ff1512).l
	beq.s loc_2097ee
	bclr.b #$5,$2(a0)
	bra.s loc_209816
loc_2097ee:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_209816
	eori.b #$20,$2(a0)
	bra.s loc_209816
loc_209802:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_209816
	move.b #$2,$1a(a0)
loc_209816:
	jmp (sub_203726).l
	.incbin 38940, 168

sub_2098c4:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_2098e0
	move.l d1,(a3)
loc_2098e0:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20990a
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_20590c).l
loc_20990a:
	rts
loc_20990c:
	tst.w ($ff1588).l
	beq.s loc_209962
	bsr.w sub_209b5e
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
	lea (dat_209cbe).l,a2
	moveq #$2,d6
	bsr.w sub_209d16
	bra.w loc_2099bc
loc_209962:
	tst.b ($ff1511).l
	beq.s loc_209986
	bpl.s loc_209970
	bsr.w sub_209b08
loc_209970:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_209bf8
loc_209986:
	tst.b ($ff150f).l
	beq.s loc_2099bc
	bpl.s loc_209994
	bsr.w sub_209af4
loc_209994:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_2099b8
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_2099b8:
	bsr.w sub_209bee
loc_2099bc:
	tst.w ($ff1588).l
	bne.w loc_209a68
	tst.b ($ff1510).l
	beq.w loc_209a68
	tst.w ($f63a).w
	bne.w loc_209a68
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_209ac6
	tst.b ($f7cc).w
	bne.s loc_209a12
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209a12
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_209a12
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_209a12
	move.b #$9,(a1)
loc_209a12:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_209d04
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_209d0e
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_209a64
	move.w #$63,d1
loc_209a64:
	bsr.w sub_209d0e
loc_209a68:
	tst.b ($ff150e).l
	beq.s loc_209a7a
	clr.b ($ff150e).l
	bsr.w sub_209ce4
loc_209a7a:
	tst.b ($f7d6).w
	beq.s loc_209ac4
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209a9a
	move.l #$6d400001,d0
loc_209a9a:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_209b7c
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_209aba
	move.l #$6e800001,d0
loc_209aba:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_209b7c
loc_209ac4:
	rts
loc_209ac6:
	btst.b #$7,($ff152e).l
	bne.s loc_209af2
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_206c40
	move.b #$1,($ff150c).l
loc_209af2:
	rts

sub_209af4:
	move.l #$73600002,($c00004).l
	lea dat_209b5a(pc),a2
	move.w #$2,d2
	bra.s loc_209b24

sub_209b08:
	lea ($c00000).l,a6
	bsr.w sub_209ce4
	move.l #$70600002,($c00004).l
	lea dat_209b52(pc),a2
	move.w #$6,d2
loc_209b24:
	lea (dat_233a34).l,a1
loc_209b2a:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_209b46
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_209b3a:
	move.l (a3)+,(a6)
	dbf d1,loc_209b3a
loc_209b40:
	dbf d2,loc_209b2a
	rts
loc_209b46:
	move.l #$0,(a6)
	dbf d1,loc_209b46
	bra.s loc_209b40
dat_209b52:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_209b5a:
	dc.b $ff,$ff,$00,$00

sub_209b5e:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_209cda
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_209cda

sub_209b7c:
	lea (dat_209cb6).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209b8c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209b90:
	sub.l d3,d1
	bcs.s loc_209b98
	addq.w #$1,d2
	bra.s loc_209b90
loc_209b98:
	add.l d3,d1
	tst.w d2
	beq.s loc_209ba2
	move.w #$1,d4
loc_209ba2:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_209bae
	tst.w d6
	bne.s loc_209be0
loc_209bae:
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
loc_209bd4:
	addi.l #$400000,d0
	dbf d6,loc_209b8c
	rts
loc_209be0:
	moveq #$f,d5
loc_209be2:
	move.l #$0,(a6)
	dbf d5,loc_209be2
	bra.s loc_209bd4

sub_209bee:
	lea (dat_209cbe).l,a2
	moveq #$2,d6
	bra.s loc_209c00

sub_209bf8:
	lea (dat_209cb2).l,a2
	moveq #$5,d6
loc_209c00:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209c08:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209c0c:
	sub.l d3,d1
	bcs.s loc_209c14
	addq.w #$1,d2
	bra.s loc_209c0c
loc_209c14:
	add.l d3,d1
	tst.w d2
	beq.s loc_209c1e
	move.w #$1,d4
loc_209c1e:
	tst.w d4
	beq.s loc_209c4c
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
loc_209c4c:
	addi.l #$400000,d0
	dbf d6,loc_209c08
	rts
	.incbin 40024, 32
loc_209c78:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209c7c:
	sub.l d3,d1
	bcs.s loc_209c84
	addq.w #$1,d2
	bra.s loc_209c7c
loc_209c84:
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
	dbf d6,loc_209c78
	rts
dat_209cb2:
	dc.b $00,$01,$86,$a0
dat_209cb6:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_209cbe:
	dc.b $00,$00,$00,$64
dat_209cc2:
	dc.b $00,$00,$00,$0a
dat_209cc6:
	dc.b $00,$00,$00,$01
dat_209cca:
	.incbin 40138, 16

sub_209cda:
	moveq #$3,d6
	lea (dat_209cca).l,a2
	bra.s sub_209d16

sub_209ce4:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_209cfa
	moveq #$9,d1
loc_209cfa:
	lea (dat_209cc6).l,a2
	moveq #$0,d6
	bra.s sub_209d16

sub_209d04:
	lea (dat_209cc6).l,a2
	moveq #$0,d6
	bra.s sub_209d16

sub_209d0e:
	lea (dat_209cc2).l,a2
	moveq #$1,d6

sub_209d16:
	moveq #$0,d4
	lea (dat_233a34).l,a1
loc_209d1e:
	moveq #$0,d2
	move.l (a2)+,d3
loc_209d22:
	sub.l d3,d1
	bcs.s loc_209d2a
	addq.w #$1,d2
	bra.s loc_209d22
loc_209d2a:
	add.l d3,d1
	tst.w d2
	beq.s loc_209d34
	move.w #$1,d4
loc_209d34:
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
	dbf d6,loc_209d1e
	rts
	.incbin 40298, 2940
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a8f4(pc,d0.w),d0
	jmp dat_20a8f4(pc,d0.w)
dat_20a8f4:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_20590c).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20a9ca,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20a950
	tst.b ($ff1508).l
	beq.s loc_20a958
	move.l #$20a9ce,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20a958
loc_20a950:
	tst.b ($ff1508).l
	bne.s loc_20a968
loc_20a958:
	bset.b #$7,($ff156b).l
	jsr (sub_2073d2).l
	beq.s loc_20a96e
loc_20a968:
	jmp (sub_2037d2).l
loc_20a96e:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20a9b0
	move.w #$6e,d0
	jmp (sub_20590c).l
loc_20a9b0:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20a9c4
	bge.s loc_20a9c0
	neg.w d0
loc_20a9c0:
	add.w d0,$8(a0)
loc_20a9c4:
	jmp (sub_203726).l
	.incbin 43466, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20aa10(pc,d0.w),d0
	jmp dat_20aa10(pc,d0.w)
dat_20aa10:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20b10e,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20b0ce).l,a2
loc_20aa5e:
	jsr (sub_2073d2).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20b10e,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20aab0
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20aab0:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20aa5e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20aad8
	bge.s loc_20aace
	neg.w d0
loc_20aace:
	add.w d0,$a(a0)
	jmp (sub_203726).l
loc_20aad8:
	addq.b #$4,$24(a0)
	jmp (sub_203726).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20aafc
	bge.s loc_20aaf2
	neg.w d0
loc_20aaf2:
	add.w d0,$8(a0)
	jmp (sub_203726).l
loc_20aafc:
	addq.b #$4,$24(a0)
	jmp (sub_203726).l
	tst.b $1e(a0)
	beq.s loc_20ab16
	subq.b #$1,$1e(a0)
	jmp (sub_203726).l
loc_20ab16:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20ab30
	bge.s loc_20ab26
	neg.w d0
loc_20ab26:
	add.w d0,$a(a0)
	jmp (sub_203726).l
loc_20ab30:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2025c2).l
	tst.b $1e(a0)
	beq.s loc_20ab52
	subq.b #$1,$1e(a0)
	jmp (sub_203726).l
loc_20ab52:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20ab6c
	bge.s loc_20ab62
	neg.w d0
loc_20ab62:
	add.w d0,$8(a0)
	jmp (sub_203726).l
loc_20ab6c:
	jmp (sub_2037d2).l
	tst.l ($f680).w
	bne.s loc_20ab86
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_2037d2).l
loc_20ab86:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ab96(pc,d0.w),d0
	jmp dat_20ab96(pc,d0.w)
dat_20ab96:
	.incbin 43926, 1336
dat_20b0ce:
	.incbin 45262, 3306
loc_20bdb8:
	lea dat_20be0a(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bdc4:
	cmp.w (a1)+,d0
	bcs.s loc_20bdcc
	addq.b #$2,d1
	bra.s loc_20bdc4
loc_20bdcc:
	move.b d1,($ff1574).l
	move.w dat_20be22(pc,d1.w),d0
	jmp (sub_2025c2).l

sub_20bddc:
	lea dat_20be0a(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bde8:
	cmp.w (a1)+,d0
	bcs.s loc_20bdf0
	addq.b #$2,d1
	bra.s loc_20bde8
loc_20bdf0:
	cmp.b ($ff1574).l,d1
	bne.s loc_20bdfa
	rts
loc_20bdfa:
	move.b d1,($ff1574).l
	move.w dat_20be16(pc,d1.w),d0
	jmp (loc_2025f4).l
dat_20be0a:
	dc.b $07,$00,$0b,$00,$0f,$00,$14,$00
	dc.b $18,$20,$ff,$ff
dat_20be16:
	dc.b $00,$09,$00,$0a,$00,$0b,$00,$0c
	dc.b $00,$0d,$00,$0e
dat_20be22:
	dc.b $00,$02,$00,$04,$00,$05,$00,$06
	dc.b $00,$07,$00,$08

sub_20be2e:
	move.w #$4ea,d1
	cmpi.b #$e,d0
	beq.s loc_20be3c
	move.w #$4f2,d1
loc_20be3c:
	move.w d1,$2(a0)
	rts
	.incbin 48706, 42
	tst.b $28(a0)
	bmi.w loc_20bf5e
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20be92(pc,d0.w),d0
	jsr dat_20be92(pc,d0.w)
	jsr (sub_203726).l
	move.w $36(a0),d0
	jmp (loc_20740c).l
dat_20be92:
	.incbin 48786, 204
loc_20bf5e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20bfb2(pc,d0.w),d0
	jsr dat_20bfb2(pc,d0.w)
	jsr (sub_203726).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20bfa2
	movea.w d1,a1
	tst.b $0(a1)
	beq.s loc_20bfac
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20bfa2:
	move.w $36(a0),d0
	jmp (loc_20740c).l
loc_20bfac:
	jmp (sub_2037d2).l
dat_20bfb2:
	dc.b $00,$04,$00,$54
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$488,$2(a0)
	move.b #$4,$18(a0)
	move.l #$20c0a4,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	cmpi.b #$ff,$28(a0)
	beq.s loc_20c006
	move.b #$1,$1a(a0)
	move.b #$83,$20(a0)
	move.b #$12,$19(a0)
loc_20c006:
	tst.b $1a(a0)
	bne.w loc_20c076
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20c01e
	neg.w d0
loc_20c01e:
	cmpi.w #$20,d0
	bcc.s loc_20c074
	jsr (sub_207ecc).l
	beq.s loc_20c074
	btst.b #$3,$22(a0)
	beq.s loc_20c074
	tst.b ($ff1521).l
	bne.s loc_20c074
	tst.b ($ff151f).l
	bne.s loc_20c074
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20c072
	tst.w $30(a0)
	bne.s loc_20c072
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_206b92).l
loc_20c072:
	movea.l (a7)+,a0
loc_20c074:
	rts
loc_20c076:
	btst.b #$7,$1(a0)
	beq.s loc_20c0a2
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20c08e
	neg.w d0
loc_20c08e:
	cmpi.w #$20,d0
	bcc.s loc_20c0a2
	move.w $8(a0),d3
	move.w $c(a0),d4
	jsr (sub_207ecc).l
loc_20c0a2:
	rts
	.incbin 49316, 694
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c37a(pc,d0.w),d0
	jsr dat_20c37a(pc,d0.w)
	bsr.s sub_20c37e
	jsr (sub_203726).l
	move.w $36(a0),d0
	jmp (loc_20740c).l
dat_20c37a:
	dc.b $00,$0e,$00,$38

sub_20c37e:
	lea ($d000).w,a1
	jmp (sub_207ecc).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.w #$41b,$2(a0)
	move.l #$20c430,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	tst.b $3a(a0)
	bne.s loc_20c3d8
	moveq #$0,d0
	move.b $3c(a0),d0
	add.b d0,d0
	add.b d0,d0
	lea dat_20c400(pc,d0.w),a2
	move.b (a2)+,$1a(a0)
	move.b (a2)+,$3a(a0)
	move.b (a2)+,$19(a0)
	move.b (a2)+,$16(a0)
	bra.s loc_20c3ee
loc_20c3d8:
	subq.b #$1,$3a(a0)
	bne.s loc_20c3ee
	addq.b #$1,$3c(a0)
	cmpi.b #$c,$3c(a0)
	bcs.s loc_20c3ee
	clr.b $3c(a0)
loc_20c3ee:
	clr.w $12(a0)
	tst.b $1a(a0)
	bne.s loc_20c3fe
	move.w #$100,$12(a0)
loc_20c3fe:
	rts
dat_20c400:
	.incbin 50176, 224
	tst.b $29(a0)
	bpl.s loc_20c4ea
	bra.w loc_20c60e
loc_20c4ea:
	jsr (sub_20e450).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c50e(pc,d0.w),d0
	jsr dat_20c50e(pc,d0.w)
	jsr (sub_203726).l
	move.w $30(a0),d0
	jmp (loc_20740c).l
dat_20c50e:
	.incbin 50446, 256
loc_20c60e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c622(pc,d0.w),d0
	jsr dat_20c622(pc,d0.w)
	jmp (sub_203726).l
dat_20c622:
	.incbin 50722, 236
	tst.b $29(a0)
	bne.w loc_20c8a0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c724(pc,d0.w),d0
	jmp dat_20c724(pc,d0.w)
dat_20c724:
	dc.b $00,$0a,$00,$66,$00,$a4,$00,$be
	dc.b $01,$66
	move.b #$4,$1(a0)
	move.l #$20c908,$4(a0)
	move.b #$11,$16(a0)
	move.w #$44d8,d0
	cmpi.b #$2,($ff1507).l
	bne.s loc_20c754
	move.w #$437a,d0
loc_20c754:
	move.w d0,$2(a0)
	move.b $28(a0),d0
	bpl.s loc_20c760
	neg.b d0
loc_20c760:
	move.b d0,d1
	subq.b #$1,d0
	move.b d0,$1a(a0)
	lsl.b #$3,d1
	move.b d1,$17(a0)
	move.b d1,$19(a0)
	moveq #$3,d0
	moveq #$2,d1
	tst.b $28(a0)
	bpl.s loc_20c780
	moveq #$1,d0
	moveq #$8,d1
loc_20c780:
	move.b d0,$18(a0)
	move.b d1,$24(a0)
	rts
	lea ($d000).w,a1
	jsr (sub_207ec6).l
	beq.s loc_20c7bc
	addq.b #$2,$24(a0)
	clr.b $23(a0)
	move.w #$8,$2a(a0)
	moveq #$8,d0
	tst.w ($d010).w
	bpl.s loc_20c7ae
	neg.w d0
loc_20c7ae:
	move.w d0,$2c(a0)
	move.w #$a3,d0
	jsr (sub_2023f8).l
loc_20c7bc:
	jsr (sub_203726).l
	jmp (loc_207408).l
	.incbin 51144, 216
loc_20c8a0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c8ae(pc,d0.w),d0
	jmp dat_20c8ae(pc,d0.w)
dat_20c8ae:
	.incbin 51374, 1134
	tst.b $28(a0)
	beq.s loc_20cd26
	bra.w loc_20ceca
loc_20cd26:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cd4e(pc,d0.w),d0
	jsr dat_20cd4e(pc,d0.w)
	lea dat_20ce64(pc),a1
	jsr (sub_20594c).l
	jsr (sub_203726).l
	move.w $30(a0),d0
	jmp (loc_20740c).l
dat_20cd4e:
	dc.b $00,$06,$00,$d8,$00,$f0
	move.w $8(a0),$30(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.w #$36a,$2(a0)
	move.w #$80,$2a(a0)
	move.l #$10000,$2c(a0)
	move.l #$20ce6a,$4(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$2e,$16(a0)
	jsr (sub_2073e8).l
	beq.s loc_20cda6
	jmp (sub_2037d2).l
loc_20cda6:
	move.b $0(a0),$0(a1)
	move.w a0,$3e(a1)
	move.b #$1,$28(a1)
	lea (a1),a2
	jsr (sub_2073e8).l
	beq.s loc_20cdc6
	jmp (sub_2037d2).l
loc_20cdc6:
	move.b $0(a0),$0(a1)
	move.w a0,$3e(a1)
	move.b #$ff,$28(a1)
	move.w #$ffd4,$3c(a1)
	move.w #$14,$3c(a2)
	bset.b #$1,$1(a2)
	bset.b #$1,$22(a2)
	lea (a1),a6
	bsr.s sub_20cdf4
	lea (a2),a6

sub_20cdf4:
	ori.b #$4,$1(a6)
	move.w #$36a,$2(a6)
	move.w a0,$3e(a6)
	move.b #$3,$18(a6)
	move.l #$20cfd4,$4(a6)
	move.b #$20,$17(a6)
	move.b #$20,$19(a6)
	move.b #$1c,$16(a6)
	rts
	addq.w #$1,$c(a0)
	jsr (sub_2066cc).l
	tst.w d1
	bpl.s loc_20ce3c
	add.w d1,$c(a0)
	addq.b #$2,$24(a0)
loc_20ce3c:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	jsr (sub_2066cc).l
	add.w d1,$c(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20ce62
	neg.l $2c(a0)
	move.w #$80,$2a(a0)
loc_20ce62:
	rts
dat_20ce64:
	.incbin 52836, 102
loc_20ceca:
	movea.w $3e(a0),a1
	cmpi.b #$28,$0(a1)
	beq.s loc_20cedc
	jmp (sub_2037d2).l
loc_20cedc:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cf08(pc,d0.w),d0
	jsr dat_20cf08(pc,d0.w)
	movea.w $3e(a0),a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.w $3c(a0),d0
	add.w d0,$c(a0)
	jmp (sub_203726).l
dat_20cf08:
	.incbin 53000, 18
	tst.b $28(a0)
	bpl.s loc_20cf28
	move.b #$a,$24(a0)
	bra.s loc_20cf78
loc_20cf28:
	move.b #$2,$24(a0)
	bra.w loc_20cf32
loc_20cf32:
	move.b #$6,$1a(a0)
	move.w #$5,$2a(a0)
	move.w #$0,$20(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cf56
	addq.b #$2,$24(a0)
	bra.s loc_20cf58
loc_20cf56:
	rts
loc_20cf58:
	move.b #$7,$1a(a0)
	move.w #$49,$2a(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cf76
	addq.b #$2,$24(a0)
	bra.s loc_20cf78
loc_20cf76:
	rts
loc_20cf78:
	move.b #$6,$1a(a0)
	move.w #$5,$2a(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cf96
	addq.b #$2,$24(a0)
	bra.s loc_20cf98
loc_20cf96:
	rts
loc_20cf98:
	move.w #$ff,$1c(a0)
	move.w #$49,$2a(a0)
	move.w #$a800,$20(a0)
	addq.b #$2,$24(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20cfc0
	addi.b #$f2,$24(a0)
	bra.w loc_20cf32
loc_20cfc0:
	lea dat_20cfca(pc),a1
	jmp (sub_20594c).l
dat_20cfca:
	.incbin 53194, 656
	tst.b $28(a0)
	bne.w loc_20d3c6
	tst.b $29(a0)
	beq.s loc_20d28e
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20d576
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20d576
	move.w $30(a0),d0
	cmp.w $30(a1),d0
	bne.w loc_20d576
loc_20d28e:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d2b4(pc,d0.w),d0
	jsr dat_20d2b4(pc,d0.w)
	jsr (sub_203726).l
	tst.b $29(a0)
	bmi.s loc_20d2b2
	move.w $2e(a0),d0
	jmp (loc_20740c).l
loc_20d2b2:
	rts
dat_20d2b4:
	dc.b $00,$08,$00,$aa,$00,$ba,$00,$fa
	lea dat_20d5f6(pc),a5
	moveq #$0,d0
	move.b $29(a0),d0
	add.w d0,d0
	adda.w $0(a5,d0.w),a5
	move.w (a5)+,$2c(a0)
	lea (a0),a6
	bsr.s sub_20d31e
	move.w (a5)+,d6
	bra.s loc_20d318
loc_20d2d8:
	jsr (sub_2073d2).l
	beq.s loc_20d2e6
	jmp (sub_2037d2).l
loc_20d2e6:
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
	bsr.s sub_20d31e
loc_20d318:
	dbf d6,loc_20d2d8
	rts

sub_20d31e:
	move.b #$2,$24(a6)
	ori.b #$4,$1(a6)
	move.b #$3,$18(a6)
	move.b #$10,$17(a6)
	move.b #$10,$19(a6)
	move.b #$5,$16(a6)
	move.w #$34c,$2(a6)
	move.l #$20d58c,$4(a6)
	move.w $8(a0),$2e(a6)
	move.w $c(a0),$30(a6)
	rts
	move.b #$5,$16(a0)
	move.w #$78,$2c(a0)
	addq.b #$2,$24(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_207ec6).l
	sne $3e(a0)
	addi.w #$ffff,$2c(a0)
	bne.s loc_20d3ac
	move.b #$10,$16(a0)
	move.w #$ff,$1c(a0)
	addq.b #$2,$24(a0)
	tst.b $3e(a0)
	beq.s loc_20d3ac
	lea ($d000).w,a1
	jmp (sub_207d7e).l
loc_20d3ac:
	rts
	lea dat_20d57c(pc),a1
	jsr (sub_20594c).l
	tst.b $1a(a0)
	bne.s loc_20d3c4
	move.b #$2,$24(a0)
loc_20d3c4:
	rts
loc_20d3c6:
	tst.b $29(a0)
	beq.s loc_20d3f2
	movea.w $2a(a0),a1
	cmpi.b #$2a,$0(a1)
	bne.w loc_20d576
	move.w $2c(a0),d0
	cmp.w $2c(a1),d0
	bne.w loc_20d576
	move.w $2e(a0),d0
	cmp.w $2e(a1),d0
	bne.w loc_20d576
loc_20d3f2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d418(pc,d0.w),d0
	jsr dat_20d418(pc,d0.w)
	jsr (sub_203726).l
	tst.b $29(a0)
	bmi.s loc_20d416
	move.w $2c(a0),d0
	jmp (loc_20740c).l
loc_20d416:
	rts
dat_20d418:
	.incbin 54296, 350
loc_20d576:
	jmp (sub_2037d2).l
dat_20d57c:
	.incbin 54652, 122
dat_20d5f6:
	.incbin 54774, 3674

sub_20e450:
	tst.b ($ff156a).l
	beq.s loc_20e496
	cmpi.b #$1,($ff152e).l
	bne.s loc_20e468
	tst.b $28(a0)
	beq.s loc_20e496
loc_20e468:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_2037d2).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20e494
	move.w #$9e,d0
	jsr (sub_2023f8).l
loc_20e494:
	addq.l #$4,a7
loc_20e496:
	rts

sub_20e498:
	tst.b $28(a0)
	bmi.s loc_20e4c8
	cmpi.b #$2,($ff152e).l
	bge.s loc_20e4b8
	tst.b ($ff156d).l
	bne.s loc_20e4c8
	addq.l #$4,a7
	jmp (loc_207408).l
loc_20e4b8:
	tst.b ($ff156a).l
	bne.s loc_20e4c8
	addq.l #$4,a7
	jmp (sub_2037d2).l
loc_20e4c8:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e4ee(pc,d0.w),d0
	jsr dat_20e4ee(pc,d0.w)
	jsr (sub_203726).l
	cmpi.b #$2,$24(a0)
	bgt.s loc_20e4ec
	jmp (loc_207408).l
loc_20e4ec:
	rts
dat_20e4ee:
	dc.b $00,$08,$00,$9e,$01,$08,$01,$66
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.b #$22,$17(a0)
	move.b #$22,$19(a0)
	move.b #$20,$16(a0)
	lea dat_20e6de(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	move.l #$23ec00,$4(a0)
	move.l #$20e69e,$2c(a0)
	move.w $c(a0),$30(a0)
	move.w #$4,$2a(a0)
	move.w #$1,$32(a0)
	moveq #$0,d0
	tst.b ($ff156a).l
	bne.s loc_20e562
	addq.b #$2,d0
loc_20e562:
	tst.b ($ff152e).l
	bne.s loc_20e56c
	addq.b #$1,d0
loc_20e56c:
	move.b d0,$1a(a0)
	tst.b ($ff156a).l
	bne.s loc_20e58c
	tst.b ($ff152e).l
	bne.s loc_20e58c
	move.b #$e2,$20(a0)
	subi.w #$10,$c(a0)
loc_20e58c:
	tst.b ($ff156a).l
	bne.s loc_20e5f4
	tst.b ($ff152e).l
	bne.s loc_20e5f4
	bsr.w sub_20e670
	tst.b $21(a0)
	beq.s loc_20e5e0
	clr.w $20(a0)
	clr.w $2a(a0)
	move.b #$7,$1a(a0)
	addq.b #$2,$24(a0)
	move.b #$1,($ff156a).l
	move.l #$96,d0
	jsr (sub_2098c4).l
	lea ($d000).w,a1
	jsr (sub_207ecc).l
	beq.s loc_20e5de
	jsr (sub_207d7e).l
loc_20e5de:
	rts
loc_20e5e0:
	lea ($d000).w,a1
	jsr (sub_207ecc).l
	lea dat_20e696(pc),a1
	jmp (sub_20594c).l
loc_20e5f4:
	rts
	.incbin 58870, 122

sub_20e670:
	addq.w #$1,$2a(a0)
	move.w $2a(a0),d0
	andi.w #$7,d0
	bne.s loc_20e686
	move.w $32(a0),d0
	add.w d0,$c(a0)
loc_20e686:
	move.w $2a(a0),d0
	andi.w #$1f,d0
	bne.s loc_20e694
	neg.w $32(a0)
loc_20e694:
	rts
dat_20e696:
	.incbin 59030, 72
dat_20e6de:
	.incbin 59102, 22
	jsr (sub_20e498).l
	move.b $28(a0),d0
	andi.b #$7f,d0
	bne.w loc_20e7b2
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e714(pc,d0.w),d0
	jmp dat_20e714(pc,d0.w)
dat_20e714:
	dc.b $00,$04,$00,$3a
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$8080408,$16(a0)
	move.l #$20e874,$4(a0)
	move.w $8(a0),$2a(a0)
	move.w $c(a0),$2c(a0)
	bsr.w sub_20e842
	bsr.w sub_20e850
	move.w #$101,$2e(a0)
	rts
	moveq #$1,d2
	moveq #$1,d3
	bsr.w sub_20e792
	move.b $2e(a0),d0
	add.b $2f(a0),d0
	move.b d0,d1
	subq.b #$1,d1
	subi.b #$7f,d1
	bcs.s loc_20e774
	move.b $2e(a0),d0
	neg.b $2f(a0)
	bsr.w sub_20e842
loc_20e774:
	move.b d0,$2e(a0)
	lea dat_20e86e(pc),a1
	jsr (sub_20594c).l
	jsr (sub_203726).l
	move.w $2a(a0),d0
	jmp (loc_20740c).l

sub_20e792:
	move.b $2e(a0),d0
	jsr (sub_2008fc).l
	asr.w d2,d1
	asr.w d3,d0
	add.w $2a(a0),d1
	add.w $2c(a0),d0
	move.w d1,$8(a0)
	move.w d0,$c(a0)
	rts
loc_20e7b2:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e7c0(pc,d0.w),d0
	jmp dat_20e7c0(pc,d0.w)
dat_20e7c0:
	dc.b $00,$04,$00,$34
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.l #$7080408,$16(a0)
	move.l #$20e884,$4(a0)
	bsr.w sub_20e850
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
	jsr (sub_2066cc).l
	tst.w d1
	bpl.s loc_20e830
	add.w d1,$c(a0)
	move.l #$fffc0000,$30(a0)
	neg.l $2c(a0)
	bsr.s sub_20e842
loc_20e830:
	jsr (sub_203726).l
	jmp (loc_207408).l
	dc.b $4e,$f9,$00,$20,$37,$d2

sub_20e842:
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	rts

sub_20e850:
	lea dat_20e894(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	rts
dat_20e86e:
	.incbin 59502, 38
dat_20e894:
	.incbin 59540, 22
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e8c2(pc,d0.w),d0
	jsr dat_20e8c2(pc,d0.w)
	move.w $36(a0),d0
	jmp (loc_20740c).l
dat_20e8c2:
	dc.b $00,$06,$00,$8c,$00,$ac
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$4,$18(a0)
	move.l #$20e9da,$4(a0)
	move.b #$8,$19(a0)
	move.b #$6,$16(a0)
	move.w $8(a0),$36(a0)
	move.w #$100,$10(a0)
	moveq #$e,d0
	jsr (sub_20be2e).l
	jsr (sub_2073e8).l
	beq.s loc_20e90e
	jmp (sub_2037d2).l
loc_20e90e:
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
	bpl.s loc_20e94e
	move.w #$40,$3a(a0)
loc_20e94e:
	jsr (sub_2066cc).l
	tst.w d1
	bpl.s loc_20e968
	add.w d1,$c(a0)
	move.w $c(a0),$32(a0)
	addq.b #$2,$24(a0)
	rts
loc_20e968:
	addq.w #$1,$c(a0)
	rts
	move.w #$20,d3
	lea (loc_206796).l,a1
	tst.w $10(a0)
	bpl.s loc_20e988
	move.w #$ffe8,d3
	lea (loc_206938).l,a1
loc_20e988:
	jsr (a1)
	cmpi.w #$7,d1
	bmi.s loc_20e9ba
	move.w $8(a0),d0
	sub.w $36(a0),d0
	bcc.s loc_20e99c
	neg.w d0
loc_20e99c:
	cmp.w $3a(a0),d0
	bcc.s loc_20e9ba
	jsr (sub_2066cc).l
	cmpi.w #$fff9,d1
	blt.s loc_20e9ba
	cmpi.w #$7,d1
	bgt.s loc_20e9ba
	add.w d1,$c(a0)
	bra.s loc_20e9be
loc_20e9ba:
	neg.w $10(a0)
loc_20e9be:
	jsr (sub_2036d0).l
	lea dat_20e9d4(pc),a1
	jsr (sub_20594c).l
	jmp (sub_203726).l
dat_20e9d4:
	.incbin 59860, 22

sub_20e9ea:
	jsr (sub_2061c0).l
	lea ($f66c).w,a2
	lea ($f666).w,a4
	lea (dat_20eada).l,a1
	move.w #$3f,d6
	bsr.w sub_20ea96
	bne.s loc_20ea2c
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$42c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20ea2c:
	lea (dat_20eaec).l,a1
	move.w #$3f,d6
	bsr.w sub_20ea96
	bne.s loc_20ea60
	lea ($c00004).l,a5
	move.l #$94009380,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$43c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20ea60:
	lea (dat_20eafe).l,a1
	move.w #$7f,d6
	bsr.w sub_20ea96
	bne.s loc_20ea94
	lea ($c00004).l,a5
	move.l #$94019300,(a5)
	move.l #$968c95c0,(a5)
	move.w #$977f,(a5)
	move.w #$44c0,(a5)
	move.w #$81,($f640).w
	move.w ($f640).w,(a5)
loc_20ea94:
	rts

sub_20ea96:
	subq.b #$1,(a2)
	bpl.w loc_20eace
	move.b (a1),(a2)
	moveq #$0,d0
	move.b (a4),d0
	addq.b #$1,d0
	cmp.b $1(a1),d0
	bcs.s loc_20eaac
	moveq #$0,d0
loc_20eaac:
	move.b d0,(a4)
	add.w d0,d0
	add.w d0,d0
	movea.l $2(a1,d0.w),a1
	lea ($ff1980).l,a3
loc_20eabc:
	move.l (a1)+,(a3)+
	dbf d6,loc_20eabc
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$0,d0
	rts
loc_20eace:
	adda.w #$1,a2
	adda.w #$1,a4
	moveq #$1,d0
	rts
dat_20eada:
	.incbin 60122, 18
dat_20eaec:
	.incbin 60140, 18
dat_20eafe:
	.incbin 60158, 18
dat_20eb10:
	.incbin 60176, 16
dat_20eb20:
	.incbin 60192, 2468
	jmp ($206358).l
	.incbin 62666, 1706
	tst.b $24(a0)
	bne.s loc_20fb9e
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$11,$16(a0)
	move.l #$20fbde,$4(a0)
loc_20fb9e:
	move.b ($ff1588).l,$1a(a0)
	tst.b ($ff1956).l
	beq.s loc_20fbbe
	lea ($d000).w,a1
	jsr (sub_2094bc).l
	sne $2a(a0)
	bra.s loc_20fbd2
loc_20fbbe:
	tst.b $2a(a0)
	beq.s loc_20fbd2
	clr.b $2a(a0)
	lea ($d000).w,a1
	jsr (sub_20936e).l
loc_20fbd2:
	jsr (sub_2038cc).l
	jmp (dat_207928).l
	.incbin 64478, 16
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20fc06(pc,d0.w),d0
	jsr dat_20fc06(pc,d0.w)
	move.w $36(a0),d0
	jmp (loc_20792c).l
dat_20fc06:
	dc.b $00,$04,$00,$64
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.l #$20fdfa,$4(a0)
	move.b #$7f,$19(a0)
	move.b #$7f,$16(a0)
	move.w $8(a0),$36(a0)
	move.b $29(a0),d0
	andi.b #$3,d0
	move.b d0,$30(a0)
	move.b #$1,$18(a0)
	move.w #$a4af,$2(a0)
	btst.b #$3,$29(a0)
	beq.s loc_20fc6a
	move.b #$3,$18(a0)
	move.w #$24af,$2(a0)
	cmpi.b #$1,($ff152e).l
	beq.s loc_20fc6a
	addi.w #$2000,$2(a0)
loc_20fc6a:
	move.w ($f704).w,d0
	addi.w #$70,d0
	move.w d0,$c(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	add.w d0,d0
	move.w dat_20fcb8(pc,d0.w),d0
	jsr dat_20fcb8(pc,d0.w)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	btst.b #$2,$29(a0)
	beq.s loc_20fca6
	cmp.b $30(a0),d0
	bne.s loc_20fca4
	jsr (sub_2038cc).l
loc_20fca4:
	rts
loc_20fca6:
	andi.b #$1,d0
	cmp.b $30(a0),d0
	bne.s loc_20fcb6
	jsr (sub_2038cc).l
loc_20fcb6:
	rts
dat_20fcb8:
	.incbin 64696, 18
	lea dat_20fcd8(pc),a2
	move.b #$b,$3d(a0)
	bra.w loc_20fd04
dat_20fcd8:
	.incbin 64728, 44
loc_20fd04:
	tst.b $3a(a0)
	bne.s loc_20fd4a
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
	beq.s loc_20fd4a
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
loc_20fd4a:
	subq.b #$1,$3a(a0)
	bne.s loc_20fd62
	addq.b #$1,$3c(a0)
	move.b $3c(a0),d0
	cmp.b $3d(a0),d0
	bcs.s loc_20fd62
	clr.b $3c(a0)
loc_20fd62:
	rts
	lea dat_20fd72(pc),a2
	move.b #$8,$3d(a0)
	bra.w loc_20fd04
dat_20fd72:
	.incbin 64882, 62
	lea dat_20fdbe(pc),a2
	move.b #$4,$3d(a0)
	bra.w loc_20fd04
dat_20fdbe:
	.incbin 64958, 16
	move.b $28(a0),d0
	subq.b #$4,d0
	bcc.s loc_20fdd8
	moveq #$0,d0
loc_20fdd8:
	move.b d0,$1a(a0)
	rts
	move.b $28(a0),d0
	subq.b #$6,d0
	bcc.s loc_20fde8
	moveq #$0,d0
loc_20fde8:
	move.b d0,$1a(a0)
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	rts
	.incbin 65018, 154
	jmp (loc_20634a).l
	.incbin 65178, 65894
dat_220000:
	.incbin 131072, 61872
dat_22f1b0:
	.incbin 192944, 18180
dat_2338b4:
	.incbin 211124, 384
dat_233a34:
	.incbin 211508, 1590
dat_23406a:
	.incbin 213098, 5984
dat_2357ca:
	.incbin 219082, 256
dat_2358ca:
	.incbin 219338, 4096
dat_2368ca:
	.incbin 223434, 4896
dat_237bea:
	.incbin 228330, 14280
dat_23b3b2:
	.incbin 242610, 19534
