; R42A__.MMD
; disassembled from the disc; code only, data comes from data/R42A__.MMD at build time
	.file "R42A__.MMD", 262144

	.org 0, $200000		; main CPU
	.incbin 0, 256
	jmp (loc_20011e).l
	dc.b $4e,$f9,$00,$20,$01,$18
	jmp (loc_20235e).l
	jmp (loc_201e78).l
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
	bsr.w sub_20249a
	bsr.w sub_202442
	move.b #$0,($f600).w
	move.b ($f600).w,d0
	andi.w #$1c,d0
	jmp loc_200180(pc,d0.w)
loc_200180:
	bra.w loc_20143a

sub_200184:
	tst.b ($ff1507).l
	bne.s loc_2001aa
	cmpi.w #$280,($f700).w
	bcc.s loc_2001aa
	cmpi.w #$160,($f704).w
	bcs.s loc_2001f2
	bset.b #$7,($f7bb).w
	bne.s loc_2001aa
	moveq #$4,d0
	bsr.w sub_2005d4
loc_2001aa:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_20032c).l,a1
	lea (dat_200354).l,a2
	bsr.w sub_200256
	lea (dat_200336).l,a1
	lea (dat_200354).l,a2
	bsr.w sub_200256
	lea (dat_200340).l,a1
	lea (dat_200354).l,a2
	bsr.w sub_200256
	lea (dat_20034a).l,a1
	lea (dat_200354).l,a2
	bra.w sub_200256
loc_2001f2:
	lea ($f7b7).w,a5
	lea ($f7b0).w,a4
	lea (dat_200294).l,a1
	lea (dat_2002a6).l,a2
	bsr.w sub_200256
	lea (dat_2002ae).l,a1
	lea (dat_2002c0).l,a2
	bsr.w sub_200256
	lea (dat_2002ca).l,a1
	lea (dat_2002dc).l,a2
	bsr.w sub_200256
	lea (dat_2002e4).l,a1
	lea (dat_2002f6).l,a2
	bsr.w sub_200256
	lea (dat_200300).l,a1
	lea (dat_200312).l,a2
	bsr.w sub_200256
	lea (dat_200316).l,a1
	lea (dat_200328).l,a2

sub_200256:
	subq.b #$1,(a5)
	bpl.s loc_20028a
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
	bcs.s loc_200276
	moveq #$0,d0
loc_200276:
	move.b d0,(a4)
	add.w d0,d0
	move.b $0(a1,d0.w),(a5)
	move.b $1(a1,d0.w),d0
	ext.w d0
	add.w d0,d0
	move.w $0(a2,d0.w),(a3)
loc_20028a:
	adda.w #$1,a4
	adda.w #$1,a5
	rts
dat_200294:
	.incbin 660, 18
dat_2002a6:
	dc.b $00,$02,$00,$4a,$00,$28,$00,$04
dat_2002ae:
	.incbin 686, 18
dat_2002c0:
	dc.b $0a,$80,$0a,$4e,$0e,$8c,$0a,$48
	dc.b $0a,$60
dat_2002ca:
	.incbin 714, 18
dat_2002dc:
	dc.b $06,$20,$04,$08,$0a,$48,$06,$24
dat_2002e4:
	.incbin 740, 18
dat_2002f6:
	dc.b $0a,$60,$08,$2c,$0c,$6a,$08,$26
	dc.b $08,$42
dat_200300:
	.incbin 768, 18
dat_200312:
	dc.b $06,$4c,$06,$6c
dat_200316:
	.incbin 790, 18
dat_200328:
	dc.b $04,$08,$04,$2a
dat_20032c:
	dc.b $31,$04,$02,$00,$02,$01,$02,$02
	dc.b $02,$03
dat_200336:
	dc.b $32,$04,$02,$01,$02,$02,$02,$03
	dc.b $02,$00
dat_200340:
	dc.b $33,$04,$02,$02,$02,$03,$02,$00
	dc.b $02,$01
dat_20034a:
	dc.b $34,$04,$02,$03,$02,$00,$02,$01
	dc.b $02,$02
dat_200354:
	dc.b $0e,$ee,$0e,$ca,$0e,$a8,$0e,$86

sub_20035c:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	moveq #$0,d1
	move.b ($f627).w,d0
loc_20036e:
	move.w d1,(a0)+
	dbf d0,loc_20036e
	move.w #$15,d4
loc_200378:
	move.b #$12,($f62a).w
	bsr.w sub_200786
	bsr.s sub_20038e
	bsr.w sub_202860
	dbf d4,loc_200378
	rts

sub_20038e:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003a4:
	bsr.s sub_2003d2
	dbf d0,loc_2003a4
	cmpi.b #$1,($ff1506).l
	bne.s loc_2003d0
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2003ca:
	bsr.s sub_2003d2
	dbf d0,loc_2003ca
loc_2003d0:
	rts

sub_2003d2:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_2003fa
	move.w d3,d1
	addi.w #$200,d1
	cmp.w d2,d1
	bhi.s loc_2003e8
	move.w d1,(a0)+
	rts
loc_2003e8:
	move.w d3,d1
	addi.w #$20,d1
	cmp.w d2,d1
	bhi.s loc_2003f6
	move.w d1,(a0)+
	rts
loc_2003f6:
	addq.w #$2,(a0)+
	rts
loc_2003fa:
	addq.w #$2,a0
	rts

sub_2003fe:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200408:
	move.b #$12,($f62a).w
	bsr.w sub_200786
	bsr.s sub_20041e
	bsr.w sub_202860
	dbf d4,loc_200408
	rts

sub_20041e:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20042e:
	bsr.s sub_20044c
	dbf d0,loc_20042e
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200444:
	bsr.s sub_20044c
	dbf d0,loc_200444
	rts

sub_20044c:
	move.w (a0),d2
	beq.s loc_200478
	move.w d2,d1
	andi.w #$e,d1
	beq.s loc_20045c
	subq.w #$2,(a0)+
	rts
loc_20045c:
	move.w d2,d1
	andi.w #$e0,d1
	beq.s loc_20046a
	subi.w #$20,(a0)+
	rts
loc_20046a:
	move.w d2,d1
	andi.w #$e00,d1
	beq.s loc_200478
	subi.w #$200,(a0)+
	rts
loc_200478:
	addq.w #$2,a0
	rts

sub_20047c:
	move.w #$3f,($f626).w
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.w #$eee,d1
	move.b ($f627).w,d0
loc_200496:
	move.w d1,(a0)+
	dbf d0,loc_200496
	move.w #$15,d4
loc_2004a0:
	move.b #$12,($f62a).w
	bsr.w sub_200786
	bsr.s sub_2004b6
	bsr.w sub_202860
	dbf d4,loc_2004a0
	rts

sub_2004b6:
	moveq #$0,d0
	lea ($fb00).w,a0
	lea ($fb80).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2004cc:
	bsr.s sub_2004fa
	dbf d0,loc_2004cc
	cmpi.b #$1,($ff1506).l
	bne.s loc_2004f8
	moveq #$0,d0
	lea ($fa80).w,a0
	lea ($fa00).w,a1
	move.b ($f626).w,d0
	adda.w d0,a0
	adda.w d0,a1
	move.b ($f627).w,d0
loc_2004f2:
	bsr.s sub_2004fa
	dbf d0,loc_2004f2
loc_2004f8:
	rts

sub_2004fa:
	move.w (a1)+,d2
	move.w (a0),d3
	cmp.w d2,d3
	beq.s loc_200526
	move.w d3,d1
	subi.w #$200,d1
	bcs.s loc_200512
	cmp.w d2,d1
	bcs.s loc_200512
	move.w d1,(a0)+
	rts
loc_200512:
	move.w d3,d1
	subi.w #$20,d1
	bcs.s loc_200522
	cmp.w d2,d1
	bcs.s loc_200522
	move.w d1,(a0)+
	rts
loc_200522:
	subq.w #$2,(a0)+
	rts
loc_200526:
	addq.w #$2,a0
	rts

sub_20052a:
	move.w #$3f,($f626).w
	move.w #$15,d4
loc_200534:
	move.b #$12,($f62a).w
	bsr.w sub_200786
	bsr.s sub_20054a
	bsr.w sub_202860
	dbf d4,loc_200534
	rts

sub_20054a:
	moveq #$0,d0
	lea ($fb00).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_20055a:
	bsr.s sub_200578
	dbf d0,loc_20055a
	moveq #$0,d0
	lea ($fa80).w,a0
	move.b ($f626).w,d0
	adda.w d0,a0
	move.b ($f627).w,d0
loc_200570:
	bsr.s sub_200578
	dbf d0,loc_200570
	rts

sub_200578:
	move.w (a0),d2
	cmpi.w #$eee,d2
	beq.s loc_2005b4
	move.w d2,d1
	andi.w #$e,d1
	cmpi.w #$e,d1
	beq.s loc_200590
	addq.w #$2,(a0)+
	rts
loc_200590:
	move.w d2,d1
	andi.w #$e0,d1
	cmpi.w #$e0,d1
	beq.s loc_2005a2
	addi.w #$20,(a0)+
	rts
loc_2005a2:
	move.w d2,d1
	andi.w #$e00,d1
	cmpi.w #$e00,d1
	beq.s loc_2005b4
	addi.w #$200,(a0)+
	rts
loc_2005b4:
	addq.w #$2,a0
	rts

sub_2005b8:
	lea (dat_200624).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	adda.w #$80,a3
	move.w (a1)+,d7
loc_2005cc:
	move.l (a2)+,(a3)+
	dbf d7,loc_2005cc
	rts

sub_2005d4:
	lea (dat_200624).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	move.w (a1)+,d7
loc_2005e4:
	move.l (a2)+,(a3)+
	dbf d7,loc_2005e4
	rts

sub_2005ec:
	lea (dat_200624).l,a1
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$80,a3
	move.w (a1)+,d7
loc_200600:
	move.l (a2)+,(a3)+
	dbf d7,loc_200600
	rts
	dc.b $43,$f9,$00,$20,$06,$24
	lsl.w #$3,d0
	adda.w d0,a1
	movea.l (a1)+,a2
	movea.w (a1)+,a3
	suba.w #$100,a3
	move.w (a1)+,d7
loc_20061c:
	move.l (a2)+,(a3)+
	dbf d7,loc_20061c
	rts
dat_200624:
	.incbin 1572, 354

sub_200786:
	move.w #$2300,sr
loc_20078a:
	tst.b ($f62a).w
	bne.s loc_20078a
	rts

sub_200792:
	andi.w #$ff,d0
	add.w d0,d0
	addi.w #$80,d0
	move.w dat_2007aa(pc,d0.w),d1
	subi.w #$80,d0
	move.w dat_2007aa(pc,d0.w),d0
	rts
dat_2007aa:
	.incbin 1962, 640

sub_200a2a:
	movem.l d3-d4,-(a7)
	moveq #$0,d3
	moveq #$0,d4
	move.w d1,d3
	move.w d2,d4
	or.w d3,d4
	beq.s loc_200a86
	move.w d2,d4
	tst.w d3
	bpl.w loc_200a44
	neg.w d3
loc_200a44:
	tst.w d4
	bpl.w loc_200a4c
	neg.w d4
loc_200a4c:
	cmp.w d3,d4
	bcc.w loc_200a5e
	lsl.l #$8,d4
	divu.w d3,d4
	moveq #$0,d0
	move.b dat_200a90(pc,d4.w),d0
	bra.s loc_200a68
loc_200a5e:
	lsl.l #$8,d3
	divu.w d4,d3
	moveq #$40,d0
	sub.b dat_200a90(pc,d3.w),d0
loc_200a68:
	tst.w d1
	bpl.w loc_200a74
	neg.w d0
	addi.w #$80,d0
loc_200a74:
	tst.w d2
	bpl.w loc_200a80
	neg.w d0
	addi.w #$100,d0
loc_200a80:
	movem.l (a7)+,d3-d4
	rts
loc_200a86:
	move.w #$40,d0
	movem.l (a7)+,d3-d4
	rts
dat_200a90:
	.incbin 2704, 258

sub_200b92:
	btst.b #$3,$22(a0)
	beq.s loc_200ba6
	moveq #$0,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	rts
loc_200ba6:
	moveq #$3,d0
	move.b d0,($f768).w
	move.b d0,($f76a).w
	move.b $26(a0),d0
	addi.b #$20,d0
	bpl.s loc_200bc8
	move.b $26(a0),d0
	bpl.s loc_200bc2
	subq.b #$1,d0
loc_200bc2:
	addi.b #$20,d0
	bra.s loc_200bd4
loc_200bc8:
	move.b $26(a0),d0
	bpl.s loc_200bd0
	addq.b #$1,d0
loc_200bd0:
	addi.b #$1f,d0
loc_200bd4:
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_200e5e
	cmpi.b #$80,d0
	beq.w loc_200dbc
	cmpi.b #$c0,d0
	beq.w loc_200d20
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
	bsr.w sub_2010e8
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
	bsr.w sub_2010e8
	move.w (a7)+,d0
	bsr.w sub_200cf4
	tst.w d1
	beq.s loc_200c62
	bpl.s loc_200c64
	cmpi.w #$fff2,d1
	blt.s loc_200c8a
	add.w d1,$c(a0)
loc_200c62:
	rts
loc_200c64:
	cmpi.w #$e,d1
	bgt.s loc_200c70
loc_200c6a:
	add.w d1,$c(a0)
	rts
loc_200c70:
	tst.b $38(a0)
	bne.s loc_200c6a
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200c8a:
	rts
	.incbin 3212, 34
loc_200cae:
	rts
	.incbin 3248, 68

sub_200cf4:
	move.b ($f76a).w,d2
	cmp.w d0,d1
	ble.s loc_200d02
	move.b ($f768).w,d2
	move.w d0,d1
loc_200d02:
	btst.l #$0,d2
	bne.s loc_200d0e
	move.b d2,$26(a0)
	rts
loc_200d0e:
	move.b $26(a0),d2
	addi.b #$20,d2
	andi.b #$c0,d2
	move.b d2,$26(a0)
	rts
loc_200d20:
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
	bsr.w sub_201258
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
	bsr.w sub_201258
	move.w (a7)+,d0
	bsr.w sub_200cf4
	tst.w d1
	beq.s loc_200d94
	bpl.s loc_200d96
	cmpi.w #$fff2,d1
	blt.w loc_200cae
	add.w d1,$8(a0)
loc_200d94:
	rts
loc_200d96:
	cmpi.w #$e,d1
	bgt.s loc_200da2
loc_200d9c:
	add.w d1,$8(a0)
	rts
loc_200da2:
	tst.b $38(a0)
	bne.s loc_200d9c
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200dbc:
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
	bsr.w sub_2010e8
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
	bsr.w sub_2010e8
	move.w (a7)+,d0
	bsr.w sub_200cf4
	tst.w d1
	beq.s loc_200e36
	bpl.s loc_200e38
	cmpi.w #$fff2,d1
	blt.w loc_200c8a
	sub.w d1,$c(a0)
loc_200e36:
	rts
loc_200e38:
	cmpi.w #$e,d1
	bgt.s loc_200e44
loc_200e3e:
	sub.w d1,$c(a0)
	rts
loc_200e44:
	tst.b $38(a0)
	bne.s loc_200e3e
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts
loc_200e5e:
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
	bsr.w sub_201258
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
	bsr.w sub_201258
	move.w (a7)+,d0
	bsr.w sub_200cf4
	tst.w d1
	beq.s loc_200ed8
	bpl.s loc_200eda
	cmpi.w #$fff2,d1
	blt.w loc_200cae
	sub.w d1,$8(a0)
loc_200ed8:
	rts
loc_200eda:
	cmpi.w #$e,d1
	bgt.s loc_200ee6
loc_200ee0:
	sub.w d1,$8(a0)
	rts
loc_200ee6:
	tst.b $38(a0)
	bne.s loc_200ee0
	bset.b #$1,$22(a0)
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
	rts

sub_200f00:
	move.w d2,d0
	lsr.w #$1,d0
	andi.w #$780,d0
	cmpi.b #$2,($ff1506).l
	bne.s loc_200f16
	andi.w #$380,d0
loc_200f16:
	move.w d3,d1
	lsr.w #$8,d1
	andi.w #$7f,d1
	add.w d1,d0
	move.l #$210000,d1
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	beq.s loc_200f76
	bmi.s loc_200f7a
	cmpi.b #$5,($ff1506).l
	beq.s loc_200f46
	cmpi.b #$6,($ff1506).l
	bne.s loc_200f4c
loc_200f46:
	andi.w #$7fff,$2(a0)
loc_200f4c:
	cmpi.b #$4,($ff1506).l
	bne.s loc_200f5c
	bclr.b #$6,$1(a0)
loc_200f5c:
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
loc_200f76:
	movea.l d1,a1
	rts
loc_200f7a:
	andi.w #$7f,d1
	cmpi.b #$4,($ff1506).l
	bne.s loc_200fe2
	btst.b #$6,$1(a0)
	bne.s loc_200fa8
	cmpi.b #$14,d1
	bne.w loc_2010cc
	bset.b #$6,$1(a0)
	andi.b #$7f,$2(a0)
	bra.w loc_2010cc
loc_200fa8:
	cmpi.b #$15,d1
	bne.s loc_200fb6
	move.w #$60,d1
	bra.w loc_2010cc
loc_200fb6:
	cmpi.b #$1e,d1
	bne.s loc_200fc4
	move.w #$61,d1
	bra.w loc_2010cc
loc_200fc4:
	cmpi.b #$1f,d1
	bne.s loc_200fd2
	move.w #$62,d1
	bra.w loc_2010cc
loc_200fd2:
	cmpi.b #$32,d1
	bne.w loc_2010cc
	move.w #$63,d1
	bra.w loc_2010cc
loc_200fe2:
	cmpi.b #$5,($ff1506).l
	bne.w loc_201048
	ori.w #$8000,$2(a0)
	cmpi.b #$4,d1
	beq.s loc_201032
	cmpi.b #$6,d1
	beq.s loc_201032
	tst.b ($ff1956).l
	beq.w loc_2010cc
	andi.w #$7fff,$2(a0)
	cmpi.b #$28,d1
	beq.s loc_201042
	cmpi.b #$3c,d1
	beq.s loc_201042
	cmpi.b #$37,d1
	beq.s loc_201042
	cmpi.b #$2f,d1
	beq.s loc_201042
	cmpi.b #$16,d1
	beq.s loc_201042
	bra.w loc_2010cc
loc_201032:
	andi.w #$7fff,$2(a0)
	btst.b #$6,$1(a0)
	beq.w loc_2010cc
loc_201042:
	addq.b #$1,d1
	bra.w loc_2010cc
loc_201048:
	cmpi.b #$6,($ff1506).l
	bne.s loc_2010b8
	cmpi.b #$3,$0(a0)
	bcc.w loc_2010cc
	ori.w #$8000,$2(a0)
	tst.b ($ff1956).l
	beq.s loc_2010cc
	andi.w #$7fff,$2(a0)
	cmpi.b #$46,d1
	bne.s loc_20107c
	move.w #$6a,d1
	bra.s loc_2010cc
loc_20107c:
	cmpi.b #$48,d1
	bne.s loc_201088
	move.w #$6b,d1
	bra.s loc_2010cc
loc_201088:
	cmpi.b #$4a,d1
	bne.s loc_201094
	move.w #$6c,d1
	bra.s loc_2010cc
loc_201094:
	cmpi.b #$10,d1
	bne.s loc_2010a0
	move.w #$6d,d1
	bra.s loc_2010cc
loc_2010a0:
	cmpi.b #$63,d1
	bne.s loc_2010ac
	move.w #$6e,d1
	bra.s loc_2010cc
loc_2010ac:
	cmpi.b #$43,d1
	bne.s loc_2010cc
	move.w #$6f,d1
	bra.s loc_2010cc
loc_2010b8:
	btst.b #$6,$1(a0)
	beq.s loc_2010cc
	addq.w #$1,d1
	cmpi.w #$29,d1
	bne.s loc_2010cc
	move.w #$51,d1
loc_2010cc:
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

sub_2010e8:
	bsr.w sub_200f00
	cmpi.l #$210000,d1
	beq.s loc_201102
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201102
	btst.l d5,d4
	bne.s loc_201110
loc_201102:
	add.w a3,d2
	bsr.w sub_2011a8
	sub.w a3,d2
	addi.w #$10,d1
	rts
loc_201110:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201102
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_201136
	not.w d1
	neg.b (a4)
loc_201136:
	btst.l #$c,d4
	beq.s loc_201146
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201146:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239a76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201162
	neg.w d0
loc_201162:
	tst.w d0
	beq.s loc_201102
	bmi.s loc_20117e
	cmpi.b #$10,d0
	beq.s loc_20119a
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
	bpl.w loc_201102
loc_20119a:
	sub.w a3,d2
	bsr.w sub_2011a8
	add.w a3,d2
	subi.w #$10,d1
	rts

sub_2011a8:
	bsr.w sub_200f00
	cmpi.l #$210000,d1
	beq.s loc_2011c2
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_2011c2
	btst.l d5,d4
	bne.s loc_2011d0
loc_2011c2:
	move.w #$f,d1
	move.w d2,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_2011d0:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_2011c2
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d3,d1
	btst.l #$b,d4
	beq.s loc_2011f6
	not.w d1
	neg.b (a4)
loc_2011f6:
	btst.l #$c,d4
	beq.s loc_201206
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_201206:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_239a76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$c,d4
	beq.s loc_201222
	neg.w d0
loc_201222:
	tst.w d0
	beq.s loc_2011c2
	bmi.s loc_201238
loc_201228:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201238:
	cmpa.w #$10,a3
	bne.s loc_201248
	move.w #$10,d0
	move.b #$0,(a4)
	bra.s loc_201228
loc_201248:
	move.w d2,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_2011c2
	not.w d1
	rts

sub_201258:
	bsr.w sub_200f00
	cmpi.l #$210000,d1
	beq.s loc_201272
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201272
	btst.l d5,d4
	bne.s loc_201280
loc_201272:
	add.w a3,d3
	bsr.w sub_201308
	sub.w a3,d3
	addi.w #$10,d1
	rts
loc_201280:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201272
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_2012ae
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_2012ae:
	btst.l #$b,d4
	beq.s loc_2012b6
	neg.b (a4)
loc_2012b6:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23aa76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_2012d2
	neg.w d0
loc_2012d2:
	tst.w d0
	beq.s loc_201272
	bmi.s loc_2012ee
	cmpi.b #$10,d0
	beq.s loc_2012fa
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_2012ee:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201272
loc_2012fa:
	sub.w a3,d3
	bsr.w sub_201308
	add.w a3,d3
	subi.w #$10,d1
	rts

sub_201308:
	bsr.w sub_200f00
	cmpi.l #$210000,d1
	beq.s loc_201322
	move.w (a1),d0
	move.w d0,d4
	andi.w #$7ff,d0
	beq.s loc_201322
	btst.l d5,d4
	bne.s loc_201330
loc_201322:
	move.w #$f,d1
	move.w d3,d0
	andi.w #$f,d0
	sub.w d0,d1
	rts
loc_201330:
	movea.l ($f796).w,a2
	move.b $0(a2,d0.w),d0
	andi.w #$ff,d0
	beq.s loc_201322
	lea (dat_239976).l,a2
	move.b $0(a2,d0.w),(a4)
	lsl.w #$4,d0
	move.w d2,d1
	btst.l #$c,d4
	beq.s loc_20135e
	not.w d1
	addi.b #$40,(a4)
	neg.b (a4)
	subi.b #$40,(a4)
loc_20135e:
	btst.l #$b,d4
	beq.s loc_201366
	neg.b (a4)
loc_201366:
	andi.w #$f,d1
	add.w d0,d1
	lea (dat_23aa76).l,a2
	move.b $0(a2,d1.w),d0
	ext.w d0
	eor.w d6,d4
	btst.l #$b,d4
	beq.s loc_201382
	neg.w d0
loc_201382:
	tst.w d0
	beq.s loc_201322
	bmi.s loc_201398
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	move.w #$f,d1
	sub.w d0,d1
	rts
loc_201398:
	move.w d3,d1
	andi.w #$f,d1
	add.w d1,d0
	bpl.w loc_201322
	not.w d1
	rts

sub_2013a8:
	rts
	.incbin 5034, 144
loc_20143a:
	clr.w ($ff1580).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_20145a
	tst.b ($ff0f01).l
	bne.s loc_20145a
	move.b #$1,($ff156a).l
loc_20145a:
	clr.b ($f62a).w
	clr.b ($ff1509).l
	move.b #$0,($f63a).w
	move.b #$0,($ff1957).l
	bset.b #$0,($ff151c).l
	bne.s loc_2014c2
	move.b #$0,($ff151d).l
	clr.b ($ff158e).l
	move.l #$1388,($ff1578).l
	bsr.w sub_207704
	clr.b ($ff1522).l
	clr.b ($ff1590).l
	clr.l ($ff1518).l
	move.b #$3,($ff1508).l
	tst.b ($ff0f01).l
	beq.s loc_2014c2
	move.b #$1,($ff1508).l
loc_2014c2:
	bset.b #$7,($f600).w
	bsr.w sub_202852
	tst.b ($ff156e).l
	bne.s loc_2014e8
	btst.b #$7,($ff152e).l
	beq.s loc_20150c
	bset.b #$0,($ff151d).l
	beq.s loc_2014f4
loc_2014e8:
	bsr.w sub_20052a
	bclr.b #$0,($ff151d).l
loc_2014f4:
	clr.b ($f784).w
	tst.w ($ff1502).l
	beq.w loc_20157c
	move.w #$0,($ff1502).l
	rts
loc_20150c:
	bset.b #$0,($ff151d).l
	beq.s loc_20151a
	bsr.w sub_2003fe
loc_20151a:
	cmpi.w #$2,($ff1502).l
	bne.s loc_201536
	move.w #$0,($ff1502).l
	move.b #$0,($ff151d).l
	bra.s loc_20155e
loc_201536:
	tst.b ($ff1508).l
	bne.s loc_20157c
	move.b #$0,($ff151c).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff1522).l
	move.b #$0,($ff151d).l
loc_20155e:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_201566:
	move.l #$0,(a1)+
	dbf d6,loc_201566
	move.b #$c,($f62a).w
	bsr.w sub_200786
	rts
loc_20157c:
	cmpi.w #$800,($f78e).w
	bne.s loc_20159a
	move.w #$0,($f78e).w
	clr.w ($ff1580).l
	move.b #$0,($ff151d).l
	rts
loc_20159a:
	moveq #$0,d0
	btst.b #$0,($ff0f22).l
	bne.s loc_2015b0
	btst.b #$7,($ff152e).l
	beq.s loc_2015b6
loc_2015b0:
	move.l #$eee0eee,d0
loc_2015b6:
	lea ($fb00).w,a1
	move.w #$1f,d6
loc_2015be:
	move.l d0,(a1)+
	dbf d6,loc_2015be
loc_2015c4:
	move.b #$c,($f62a).w
	bsr.w sub_200786
	bsr.w sub_202860
	bne.s loc_2015c4
	tst.l ($f680).w
	bne.s loc_2015c4
	bsr.w sub_201a4c
	moveq #$0,d0
	lea (dat_20faac).l,a2
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2015f0
	bsr.w sub_202966
loc_2015f0:
	moveq #$1,d0
	bsr.w sub_202966
	clr.b ($ff156b).l
	clr.l ($ff1900).l
	lea ($ac00).w,a1
	moveq #$0,d0
	move.w #$ff,d1
loc_20160c:
	move.l d0,(a1)+
	dbf d1,loc_20160c
	lea ($ff1600).l,a1
	moveq #$0,d0
	move.w #$27f,d1
loc_20161e:
	move.l d0,(a1)+
	dbf d1,loc_20161e
	lea ($d000).w,a1
	moveq #$0,d0
	move.w #$7ff,d1
loc_20162e:
	move.l d0,(a1)+
	dbf d1,loc_20162e
	lea ($f628).w,a1
	moveq #$0,d0
	move.w #$15,d1
loc_20163e:
	move.l d0,(a1)+
	dbf d1,loc_20163e
	lea ($f700).w,a1
	moveq #$0,d0
	move.w #$3f,d1
loc_20164e:
	move.l d0,(a1)+
	dbf d1,loc_20164e
	move.w #$2700,sr
	move.l #$213600,($f78a).w
	move.w #$0,($f78e).w
	bsr.w sub_20253c
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
	bne.s loc_2016e2
	move.w #$8014,(a6)
	moveq #$0,d0
	move.b ($ff1507).l,d0
	lsl.w #$3,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	add.w d1,d1
	add.w d1,d0
	lea (dat_201b62).l,a1
	move.w $0(a1,d0.w),d0
	move.w d0,($f646).w
	move.w d0,($f648).w
	move.w d0,($f64a).w
	clr.b ($f64d).w
	clr.b ($f64e).w
	move.b #$1,($f64c).w
loc_2016e2:
	move.w #$1e,($ff150a).l
	move.w #$2300,sr
	moveq #$3,d0
	bsr.w sub_2005d4
	moveq #$3,d0
	bsr.w sub_2005b8
	bsr.w sub_202bc8
	bsr.w sub_202d24
	bset.b #$2,($f754).w
	bsr.w sub_203652
	bsr.w sub_203604
	jsr (sub_2013a8).l
	bsr.w sub_2019ae
loc_20171a:
	move.b #$c,($f62a).w
	bsr.w sub_200786
	bsr.w sub_202860
	bne.s loc_20171a
	tst.l ($f680).w
	bne.s loc_20171a
	bsr.w sub_201992
	move.b #$1c,($d080).w
	move.b #$1c,($d0c0).w
	move.b #$1,($d0e8).w
	move.b #$1c,($d140).w
	move.b #$1,($d169).w
	bsr.w sub_201a9c
	move.b #$19,($d7c0).w
	move.b #$a,($d7e8).w
	bset.b #$1,($ff151c).l
	bne.s loc_20177e
	move.b #$3c,($d100).w
	move.b #$1,($f7cc).w
	clr.b ($ff1574).l
loc_20177e:
	move.b #$4,($d800).w
	move.w #$0,($f602).w
	move.w #$0,($f604).w
	move.w #$0,($f606).w
	move.w #$0,($f780).w
	move.w #$0,($f782).w
	moveq #$0,d0
	tst.b ($ff1522).l
	bne.s loc_2017be
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff150d).l
loc_2017be:
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
	jsr (sub_20faa6).l
	move.b #$1,($ff1903).l
	bclr.b #$7,($ff152e).l
	beq.s loc_20184e
loc_201848:
	bsr.w sub_20047c
	bra.s loc_20185c
loc_20184e:
	bclr.b #$0,($ff0f22).l
	bne.s loc_201848
	bsr.w sub_20035c
loc_20185c:
	cmpi.b #$2,($ff1506).l
	bne.s loc_20186c
	moveq #$0,d0
	bsr.w sub_2005ec
loc_20186c:
	bclr.b #$7,($f600).w
	move.b #$1,($ff1957).l
loc_20187a:
	move.b #$8,($f62a).w
	bsr.w sub_200786
	tst.b ($f7cc).w
	bne.s loc_201898
	btst.b #$7,($f605).w
	beq.s loc_201898
	eori.b #$1,($f63a).w
loc_201898:
	btst.b #$0,($f63a).w
	beq.w loc_20191e
	bsr.w sub_201df6
	move.b ($f605).w,d0
	tst.b ($ff0f01).l
	bne.s loc_2018fc
	andi.b #$70,d0
	cmpi.b #$70,d0
	bne.s loc_20187a
	subq.b #$1,($ff1508).l
	bpl.s loc_2018ca
	clr.b ($ff1508).l
loc_2018ca:
	move.w #$e,d0
	jsr (sub_205d68).l
	bsr.w sub_207704
	clr.b ($ff1522).l
	jsr (sub_2025c2).l
	move.b #$1,($a01c3e).l
	jsr (sub_2025de).l
	move.w #$1,($ff1502).l
	bra.s loc_20190a
loc_2018fc:
	andi.b #$70,d0
	beq.w loc_20187a
	clr.b ($ff1508).l
loc_20190a:
	clr.b ($f63a).w
	clr.w ($ff1580).l
	clr.b ($ff158e).l
	bra.w loc_20143a
loc_20191e:
	bsr.w sub_201e3c
	addq.w #$1,($ff1504).l
	jsr (sub_20771a).l
	jsr (sub_203a66).l
	cmpi.w #$800,($f78e).w
	beq.w loc_20143a
	tst.w ($ff1502).l
	bne.w loc_20143a
	tst.w ($ff1906).l
	bne.s loc_201966
	cmpi.b #$6,($d024).w
	bcs.s loc_201966
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
	bra.s loc_20196a
loc_201966:
	bsr.w sub_202d24
loc_20196a:
	bsr.w sub_201cd2
	jsr (sub_203c10).l
	tst.w ($ff190e).l
	bne.s loc_201980
	bsr.w sub_200184
loc_201980:
	jsr (sub_20bf6c).l
	bsr.w sub_202860
	bsr.w sub_2019b8
	bra.w loc_20187a

sub_201992:
	lea ($d000).w,a1
	moveq #$1,d0
	move.b d0,$0(a1)
	tst.b ($ff1522).l
	beq.s loc_2019aa
	move.w #$78,$30(a1)
loc_2019aa:
	rts
	dc.b $4e,$75

sub_2019ae:
	move.l #$23ba76,($f796).w
	rts

sub_2019b8:
	subq.b #$1,($ff1910).l
	bpl.s loc_2019d6
	move.b #$b,($ff1910).l
	subq.b #$1,($ff1911).l
	andi.b #$7,($ff1911).l
loc_2019d6:
	subq.b #$1,($ff1912).l
	bpl.s loc_2019f4
	move.b #$7,($ff1912).l
	addq.b #$1,($ff1913).l
	andi.b #$3,($ff1913).l
loc_2019f4:
	subq.b #$1,($ff1914).l
	bpl.s loc_201a1c
	move.b #$7,($ff1914).l
	addq.b #$1,($ff1915).l
	cmpi.b #$6,($ff1915).l
	bcs.s loc_201a1c
	move.b #$0,($ff1915).l
loc_201a1c:
	tst.b ($ff1916).l
	beq.s loc_201a4a
	moveq #$0,d0
	move.b ($ff1916).l,d0
	add.w ($ff1918).l,d0
	move.w d0,($ff1918).l
	rol.w #$7,d0
	andi.w #$3,d0
	move.b d0,($ff1917).l
	subq.b #$1,($ff1916).l
loc_201a4a:
	rts

sub_201a4c:
	moveq #$0,d0
	moveq #$0,d1
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b ($ff0f01).l
	bne.s loc_201a6e
	cmpi.b #$2,d0
	bne.s loc_201a6e
	add.b ($ff156a).l,d0
loc_201a6e:
	move.b ($ff1506).l,d1
	add.w d1,d1
	add.w d1,d1
	add.w d0,d1
	moveq #$0,d0
	move.b dat_201a86(pc,d1.w),d0
	jmp (sub_205d68).l
dat_201a86:
	.incbin 6790, 22

sub_201a9c:
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

sub_201b00:
	tst.b ($f63a).w
	bne.s loc_201b60
	cmpi.b #$6,($d024).w
	bcc.s loc_201b12
	bsr.w sub_201b7a
loc_201b12:
	move.b #$0,($f64e).w
	moveq #$0,d0
	addq.b #$2,($ff1955).l
	move.b ($ff1955).l,d0
	jsr (sub_200792).l
	lsr.w #$6,d0
	ext.w d0
	add.w ($f648).w,d0
	move.w d0,($f646).w
	move.w ($f646).w,d0
	sub.w ($f704).w,d0
	bcc.s loc_201b52
	tst.w d0
	bpl.s loc_201b52
	move.b #$df,($f625).w
	move.b #$1,($f64e).w
loc_201b52:
	cmpi.w #$df,d0
	bcs.s loc_201b5c
	move.w #$df,d0
loc_201b5c:
	move.b d0,($f625).w
loc_201b60:
	rts
dat_201b62:
	.incbin 7010, 24

sub_201b7a:
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_201ba6(pc,d0.w),d0
	jsr dat_201ba6(pc,d0.w)
	moveq #$0,d1
	move.b ($f64c).w,d1
	move.w ($f64a).w,d0
	sub.w ($f648).w,d0
	beq.s loc_201ba4
	bcc.s loc_201ba0
	neg.w d1
loc_201ba0:
	add.w d1,($f648).w
loc_201ba4:
	rts
dat_201ba6:
	dc.b $00,$06,$00,$56,$00,$fa
	move.w ($d008).w,d2
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201bc2
	rts
loc_201bc2:
	cmpi.b #$1,d0
	bne.s loc_201bd8
	move.w #$280,d1
	cmpi.w #$5e0,d2
	bcs.s loc_201bf6
	move.w #$260,d1
	bra.s loc_201bf6
loc_201bd8:
	move.w #$1d0,d1
	cmpi.w #$920,d2
	bcs.s loc_201bf6
	move.w #$110,d1
	cmpi.w #$1980,d2
	bcs.s loc_201bf6
	move.w #$240,d1
	move.b #$3,($f64c).w
loc_201bf6:
	move.w d1,($f64a).w
	rts
	move.w ($d008).w,d2
	move.w ($f704).w,d1
	addi.w #$e8,d1
	cmpi.w #$200,d2
	bcs.s loc_201c24
	cmpi.w #$600,($d00c).w
	bcs.s loc_201c2a
	cmpi.w #$6c0,($d00c).w
	bcc.s loc_201c2a
	cmpi.w #$2a0,d2
	bcc.s loc_201c2a
loc_201c24:
	move.w d1,($f648).w
	bra.s loc_201c9a
loc_201c2a:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	bne.s loc_201c40
	move.w #$5b0,d1
	bra.s loc_201c24
loc_201c40:
	cmpi.b #$1,d0
	bne.s loc_201c78
	move.w #$530,d1
	cmpi.w #$c00,d2
	bcs.s loc_201c9a
	move.w #$780,d1
	cmpi.w #$dc0,d2
	bcs.s loc_201c9a
	move.w #$500,d1
	cmpi.w #$1380,d2
	bcc.s loc_201c9a
	cmpi.w #$400,($d00c).w
	bcc.s loc_201c76
	move.w #$3c0,d1
	cmpi.w #$1100,d2
	bcc.s loc_201c9a
loc_201c76:
	rts
loc_201c78:
	move.w #$510,d1
	cmpi.w #$400,d2
	bcs.s loc_201c9a
	move.w #$390,d1
	cmpi.w #$1600,d2
	bcs.s loc_201c9a
	move.w #$410,d1
	cmpi.w #$1900,d2
	bcs.s loc_201c9a
	move.w #$500,d1
loc_201c9a:
	move.w d1,($f64a).w
	rts
	.incbin 7328, 50

sub_201cd2:
	lea ($d000).w,a1
	cmpi.b #$2b,$1c(a1)
	beq.w loc_201df2
	btst.b #$0,$2c(a1)
	bne.w loc_201df2
	tst.b (a1)
	beq.w loc_201df2
	tst.w ($ff1906).l
	bne.w loc_201df2
	moveq #$0,d0
	move.b ($ff1507).l,d0
	cmpi.b #$2,d0
	bcc.w loc_201df2
	lea (dat_20bdbe).l,a2
loc_201d10:
	move.w $8(a1),d0
	cmp.w (a2),d0
	bcs.w loc_201dd8
	cmp.w $4(a2),d0
	bcc.w loc_201dd8
	move.w $c(a1),d2
	cmp.w $2(a2),d2
	bcs.w loc_201dd8
	cmp.w $6(a2),d2
	bcc.w loc_201dd8
	move.b ($ff190d).l,d0
	andi.b #$3f,d0
	bne.s loc_201d46
	move.w #$d0,d0
loc_201d46:
	lea ($f7e0).w,a3
	moveq #$0,d0
	move.b $d(a2),d0
	cmpi.b #$1,$c(a2)
	bne.s loc_201d62
	btst.b #$6,$0(a3,d0.w)
	beq.w loc_201df2
loc_201d62:
	cmpi.b #$4,$24(a1)
	bcc.w loc_201dee
	move.b #$1,($f7c7).w
	clr.b $3c(a1)
	move.w $8(a2),$10(a1)
	move.w $a(a2),$12(a1)
	move.b #$f,$1c(a1)
	bset.b #$1,$22(a1)
	cmpi.b #$2,$c(a2)
	bne.s loc_201da6
	btst.b #$5,$0(a3,d0.w)
	beq.s loc_201da6
	neg.w $10(a1)
	neg.w $12(a1)
loc_201da6:
	btst.b #$0,($f602).w
	beq.s loc_201db2
	subq.w #$1,$c(a1)
loc_201db2:
	btst.b #$1,($f602).w
	beq.s loc_201dbe
	addq.w #$1,$c(a1)
loc_201dbe:
	btst.b #$2,($f602).w
	beq.s loc_201dca
	subq.w #$1,$8(a1)
loc_201dca:
	btst.b #$3,($f602).w
	beq.s loc_201dd6
	addq.w #$1,$8(a1)
loc_201dd6:
	rts
loc_201dd8:
	adda.w #$e,a2
	tst.b (a2)
	bpl.w loc_201d10
	tst.b ($f7c7).w
	beq.s loc_201df2
	move.b #$0,$1c(a1)
loc_201dee:
	clr.b ($f7c7).w
loc_201df2:
	rts
	dc.b $4e,$75

sub_201df6:
	move.w #$ab,d0
	jsr (sub_20262a).l
	bset.b #$7,($f63a).w
	bne.s loc_201e3a
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201e20
loc_201e16:
	move.w #$d5,d0
	jmp (sub_205d68).l
loc_201e20:
	tst.b ($ff151f).l
	bne.s loc_201e16
	tst.b ($ff1520).l
	bne.s loc_201e16
	move.w #$90,d0
	jmp (sub_205d68).l
loc_201e3a:
	rts

sub_201e3c:
	bclr.b #$7,($f63a).w
	beq.s loc_201e76
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	tst.b d0
	beq.s loc_201e5c
loc_201e52:
	move.w #$d6,d0
	jmp (sub_205d68).l
loc_201e5c:
	tst.b ($ff151f).l
	bne.s loc_201e52
	tst.b ($ff1520).l
	bne.s loc_201e52
	move.w #$91,d0
	jmp (sub_205d68).l
loc_201e76:
	rts
loc_201e78:
	bset.b #$0,($a12000).l
	movem.l d0-d7/a0-a6,-(a7)
	tst.b ($f62a).w
	beq.s loc_201efe
	move.w ($c00004).l,d0
	move.l #$40000010,($c00004).l
	move.l ($f616).w,($c00000).l
	btst.b #$6,($ff1586).l
	beq.s loc_201eb4
	move.w #$700,d0
loc_201eb0:
	dbf d0,loc_201eb0
loc_201eb4:
	move.b ($f62a).w,d0
	move.b #$0,($f62a).w
	andi.w #$3e,d0
	move.w dat_201ee4(pc,d0.w),d0
	jsr dat_201ee4(pc,d0.w)
loc_201eca:
	tst.b ($f63a).w
	bne.s loc_201ed8
	bsr.w sub_202402
	bsr.w sub_2023f0
loc_201ed8:
	addq.l #$1,($ff190a).l
	movem.l (a7)+,d0-d7/a0-a6
	rte
dat_201ee4:
	.incbin 7908, 26
loc_201efe:
	tst.b ($ff1957).l
	beq.s loc_201eca
	cmpi.b #$2,($ff1506).l
	bne.w loc_201eca
	move.w ($c00004).l,d0
	btst.b #$6,($ff1586).l
	beq.s loc_201f2a
	move.w #$700,d0
loc_201f26:
	dbf d0,loc_201f26
loc_201f2a:
	move.w #$1,($f6fc).w
	jsr (sub_2025c2).l
	jsr (sub_201b00).l
	tst.b ($f64e).w
	bne.s loc_201f68
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_201f8c
loc_201f68:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_201f8c:
	move.w ($f624).w,(a5)
	jsr (sub_2025de).l
	bra.w loc_201eca
	.incbin 8090, 60
	jsr (sub_20264e).l
	jsr (sub_2025c2).l
	bsr.w sub_20245e
	jsr (sub_201b00).l
	tst.b ($f64e).w
	bne.s loc_202018
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_20203c
loc_202018:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_20203c:
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
	bsr.w sub_205c8a
	tst.b ($f767).w
	beq.s loc_2020c6
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_2020c6:
	tst.w ($ff190e).l
	bne.s loc_2020d4
	jsr (sub_20faa6).l
loc_2020d4:
	jsr (sub_2025de).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	cmpi.b #$60,($f625).w
	bcc.s sub_20210a
	move.b #$1,($f64f).w
	addq.l #$4,a7
	bra.w loc_201eca

sub_20210a:
	bsr.w sub_2032e0
	bsr.w sub_2028d2
	jmp (loc_20a2c0).l
	dc.b $4e,$75
	jsr (sub_2025c2).l
	bsr.w sub_20245e
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
	jsr (sub_2025de).l
	movem.l ($f700).w,d0-d7
	movem.l d0-d7,($ff1926).l
	movem.l ($f754).w,d0-d1
	movem.l d0-d1,($ff1946).l
	bsr.w sub_2032e0
	bra.w loc_2028b6
	.incbin 8634, 16
	bsr.w sub_2022b6
	cmpi.b #$1,($ff1903).l
	bne.s loc_2021ec
	addq.b #$1,($ff1903).l
	move.w ($f60c).w,d0
	ori.b #$40,d0
	move.w d0,($c00004).l
loc_2021ec:
	move.w ($f624).w,(a5)
	bra.w loc_2028b6
	.incbin 8692, 82
	lea ($c00004).l,a5
	move.l #$940193c0,(a5)
	move.l #$96e69500,(a5)
	move.w #$977f,(a5)
	move.w #$7c00,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	jsr (sub_2025de).l
	lea ($d000).w,a0
	bsr.w sub_205c8a
	tst.b ($f767).w
	beq.s loc_2022a8
	lea ($c00004).l,a5
	move.l #$94019370,(a5)
	move.l #$96e49500,(a5)
	move.w #$977f,(a5)
	move.w #$7000,(a5)
	move.w #$83,($f640).w
	move.w ($f640).w,(a5)
	move.b #$0,($f767).w
loc_2022a8:
	tst.w ($f614).w
	beq.w loc_2022b4
	subq.w #$1,($f614).w
loc_2022b4:
	rts

sub_2022b6:
	jsr (sub_2025c2).l
	bsr.w sub_20245e
	tst.b ($f64e).w
	bne.s loc_2022ec
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9580,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
	bra.s loc_202310
loc_2022ec:
	lea ($c00004).l,a5
	move.l #$94009340,(a5)
	move.l #$96fd9540,(a5)
	move.w #$977f,(a5)
	move.w #$c000,(a5)
	move.w #$80,($f640).w
	move.w ($f640).w,(a5)
loc_202310:
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
	jmp (sub_2025de).l
loc_20235e:
	move.w #$2700,sr
	tst.w ($f6fc).w
	beq.s loc_2023dc
	move.w #$0,($f6fc).w
	cmpi.b #$df,($f625).w
	beq.s loc_2023dc
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
	bne.s loc_2023de
loc_2023dc:
	rte
loc_2023de:
	clr.b ($f64f).w
	movem.l d0-d7/a0-a6,-(a7)
	bsr.w sub_20210a
	movem.l (a7)+,d0-d7/a0-a6
	rte

sub_2023f0:
	tst.b ($d02a).w
	bne.s loc_202400
	tst.w ($f786).w
	beq.s loc_202400
	addq.w #$1,($f786).w
loc_202400:
	rts

sub_202402:
	tst.w ($f780).w
	beq.s loc_20240c
	addq.w #$1,($f780).w
loc_20240c:
	tst.w ($f782).w
	beq.s loc_202416
	addq.w #$1,($f782).w
loc_202416:
	rts

sub_202418:
	move.l d1,-(a7)
	move.l ($f636).w,d1
	bne.s loc_202426
	move.l #$2a6d365a,d1
loc_202426:
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

sub_202442:
	bsr.w sub_2025c2
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	bra.w sub_2025de

sub_20245e:
	lea ($f604).w,a0
	lea ($a10003).l,a1
	bsr.s sub_20246c
	addq.w #$2,a1

sub_20246c:
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

sub_20249a:
	lea ($c00004).l,a0
	lea ($c00000).l,a1
	lea (dat_202516).l,a2
	moveq #$12,d7
loc_2024ae:
	move.w (a2)+,(a0)
	dbf d7,loc_2024ae
	move.w (dat_202518).l,d0
	move.w d0,($f60c).w
	move.w #$8adf,($f624).w
	moveq #$0,d0
	move.l #$c0000000,($c00004).l
	move.w #$3f,d7
loc_2024d4:
	move.w d0,(a1)
	dbf d7,loc_2024d4
	clr.l ($f616).w
	clr.l ($f61a).w
	move.l d1,-(a7)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$94ff93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000080,(a5)
	move.w #$0,($c00000).l
loc_202506:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_202506
	move.w #$8f02,(a5)
	move.l (a7)+,d1
	rts
dat_202516:
	dc.b $80,$04
dat_202518:
	.incbin 9496, 36

sub_20253c:
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$40000083,(a5)
	move.w #$0,($c00000).l
loc_20255e:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20255e
	move.w #$8f02,(a5)
	lea ($c00004).l,a5
	move.w #$8f01,(a5)
	move.l #$940f93ff,(a5)
	move.w #$9780,(a5)
	move.l #$60000083,(a5)
	move.w #$0,($c00000).l
loc_20258c:
	move.w (a5),d1
	btst.l #$1,d1
	bne.s loc_20258c
	move.w #$8f02,(a5)
	clr.l ($f616).w
	clr.l ($f61a).w
	lea ($f800).w,a1
	moveq #$0,d0
	move.w #$a0,d1
loc_2025aa:
	move.l d0,(a1)+
	dbf d1,loc_2025aa
	lea ($cc00).w,a1
	moveq #$0,d0
	move.w #$100,d1
loc_2025ba:
	move.l d0,(a1)+
	dbf d1,loc_2025ba
	rts

sub_2025c2:
	move.w sr,($f7da).w
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_2025d2:
	btst.b #$0,($a11100).l
	bne.s loc_2025d2
	rts

sub_2025de:
	move.w #$0,($a11100).l
	move.w ($f7da).w,sr
	rts
	.incbin 9708, 60

sub_202628:
	rts

sub_20262a:
	tst.b ($f00a).w
	bne.s loc_202636
	move.b d0,($f00a).w
	rts
loc_202636:
	tst.b ($f00b).w
	bne.s loc_202642
	move.b d0,($f00b).w
	rts
loc_202642:
	tst.b ($f00c).w
	bne.s loc_20264c
	move.b d0,($f00c).w
loc_20264c:
	rts

sub_20264e:
	jsr (sub_2025c2).l
	tst.b ($f00a).w
	beq.s loc_202668
	move.b ($f00a).w,($a01c09).l
	move.b #$0,($f00a).w
loc_202668:
	tst.b ($f00b).w
	beq.s loc_20267c
	move.b ($f00b).w,($a01c0a).l
	move.b #$0,($f00b).w
loc_20267c:
	tst.b ($f00c).w
	beq.s loc_202690
	move.b ($f00c).w,($a01c0b).l
	move.b #$0,($f00c).w
loc_202690:
	bra.w sub_2025de
	.incbin 9876, 32

sub_2026b4:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (loc_202776).l,a3
	lea ($c00000).l,a4
	bra.s loc_2026d0

sub_2026c6:
	movem.l d0-d7/a0-a1/a3-a5,-(a7)
	lea (dat_20278c).l,a3
loc_2026d0:
	lea ($aa00).w,a1
	move.w (a0)+,d2
	lsl.w #$1,d2
	bcc.s loc_2026de
	adda.w #$a,a3
loc_2026de:
	lsl.w #$2,d2
	movea.w d2,a5
	moveq #$8,d3
	moveq #$0,d2
	moveq #$0,d4
	bsr.w sub_2027a2
	move.b (a0)+,d5
	asl.w #$8,d5
	move.b (a0)+,d5
	move.w #$10,d6
	bsr.s sub_2026fe
	movem.l (a7)+,d0-d7/a0-a1/a3-a5
	rts

sub_2026fe:
	move.w d6,d7
	subq.w #$8,d7
	move.w d5,d1
	lsr.w d7,d1
	cmpi.b #$fc,d1
	bcc.s loc_20274a
	andi.w #$ff,d1
	add.w d1,d1
	move.b $0(a1,d1.w),d0
	ext.w d0
	sub.w d0,d6
	cmpi.w #$9,d6
	bcc.s loc_202726
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202726:
	move.b $1(a1,d1.w),d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$f0,d0
loc_202734:
	lsr.w #$4,d0
loc_202736:
	lsl.l #$4,d4
	or.b d1,d4
	subq.w #$1,d3
	bne.s loc_202744
	jmp (a3)

sub_202740:
	moveq #$0,d4
	moveq #$8,d3
loc_202744:
	dbf d0,loc_202736
	bra.s sub_2026fe
loc_20274a:
	subq.w #$6,d6
	cmpi.w #$9,d6
	bcc.s loc_202758
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
loc_202758:
	subq.w #$7,d6
	move.w d5,d1
	lsr.w d6,d1
	move.w d1,d0
	andi.w #$f,d1
	andi.w #$70,d0
	cmpi.w #$9,d6
	bcc.s loc_202734
	addq.w #$8,d6
	asl.w #$8,d5
	move.b (a0)+,d5
	bra.s loc_202734
loc_202776:
	move.l d4,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202740
	rts
	eor.l d4,d2
	move.l d2,(a4)
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202740
	rts
dat_20278c:
	dc.b $28,$c4,$53,$4d,$38,$0d,$66,$ac
	dc.b $4e,$75
	eor.l d4,d2
	move.l d2,(a4)+
	subq.w #$1,a5
	move.w a5,d4
	bne.s sub_202740
	rts

sub_2027a2:
	move.b (a0)+,d0
loc_2027a4:
	cmpi.b #$ff,d0
	bne.s loc_2027ac
	rts
loc_2027ac:
	move.w d0,d7
loc_2027ae:
	move.b (a0)+,d0
	cmpi.b #$80,d0
	bcc.s loc_2027a4
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
	bne.s loc_2027dc
	move.b (a0)+,d0
	add.w d0,d0
	move.w d7,$0(a1,d0.w)
	bra.s loc_2027ae
loc_2027dc:
	move.b (a0)+,d0
	lsl.w d1,d0
	add.w d0,d0
	moveq #$1,d5
	lsl.w d1,d5
	subq.w #$1,d5
loc_2027e8:
	move.w d7,$0(a1,d0.w)
	addq.w #$2,d0
	dbf d5,loc_2027e8
	bra.s loc_2027ae

sub_2027f4:
	movem.l a1-a2,-(a7)
	lea (dat_20fabc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	lea ($f680).w,a2
loc_20280c:
	tst.l (a2)
	beq.s loc_202814
	addq.w #$6,a2
	bra.s loc_20280c
loc_202814:
	move.w (a1)+,d0
	bmi.s loc_202820
loc_202818:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202818
loc_202820:
	movem.l (a7)+,a1-a2
	rts
loc_202826:
	movem.l a1-a2,-(a7)
	lea (dat_20fabc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	bsr.s sub_202852
	lea ($f680).w,a2
	move.w (a1)+,d0
	bmi.s loc_20284c
loc_202844:
	move.l (a1)+,(a2)+
	move.w (a1)+,(a2)+
	dbf d0,loc_202844
loc_20284c:
	movem.l (a7)+,a1-a2
	rts

sub_202852:
	lea ($f680).w,a2
	moveq #$1f,d0
loc_202858:
	clr.l (a2)+
	dbf d0,loc_202858
	rts

sub_202860:
	tst.l ($f680).w
	beq.s loc_2028b4
	tst.w ($f6f8).w
	bne.s loc_2028b4
	movea.l ($f680).w,a0
	lea (loc_202776).l,a3
	lea ($aa00).w,a1
	move.w (a0)+,d2
	bpl.s loc_202882
	adda.w #$a,a3
loc_202882:
	andi.w #$7fff,d2
	move.w d2,($f6f8).w
	bsr.w sub_2027a2
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
loc_2028b4:
	rts
loc_2028b6:
	tst.w ($f6f8).w
	beq.w loc_202954
loc_2028be:
	move.w #$12,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$240,($f684).w
	bra.s loc_2028f0

sub_2028d2:
	tst.w ($f6f8).w
	beq.s loc_202954
	tst.b ($f744).w
	bne.s loc_2028be
	move.w #$3,($f6fa).w
	moveq #$0,d0
	move.w ($f684).w,d0
	addi.w #$60,($f684).w
loc_2028f0:
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
loc_202924:
	movea.w #$8,a5
	bsr.w sub_202740
	subq.w #$1,($f6f8).w
	beq.s loc_202956
	subq.w #$1,($f6fa).w
	bne.s loc_202924
	move.l a0,($f680).w
	move.l a3,($f6e0).w
	move.l d0,($f6e4).w
	move.l d1,($f6e8).w
	move.l d2,($f6ec).w
	move.l d5,($f6f0).w
	move.l d6,($f6f4).w
loc_202954:
	rts
loc_202956:
	lea ($f680).w,a0
	moveq #$15,d0
loc_20295c:
	move.l $6(a0),(a0)+
	dbf d0,loc_20295c
	rts

sub_202966:
	lea (dat_20fabc).l,a1
	add.w d0,d0
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	move.w (a1)+,d1
loc_202978:
	movea.l (a1)+,a0
	moveq #$0,d0
	move.w (a1)+,d0
	lsl.l #$2,d0
	lsr.w #$2,d0
	ori.w #$4000,d0
	swap d0
	move.l d0,($c00004).l
	bsr.w sub_2026b4
	dbf d1,loc_202978
	rts
	.incbin 10648, 560

sub_202bc8:
	lea ($d000).w,a6
	moveq #$0,d0
	move.b d0,($f740).w
	move.b d0,($f741).w
	move.b d0,($f746).w
	move.b d0,($f748).w
	move.b d0,($f742).w
	lea (dat_202c24).l,a0
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
	bra.w loc_202c50
dat_202c24:
	dc.b $00,$04,$00,$00,$1c,$97,$00,$00
	dc.b $08,$00,$00,$60
dat_202c30:
	.incbin 11312, 32
loc_202c50:
	tst.b ($ff1522).l
	beq.s loc_202c6c
	jsr (sub_206c30).l
	moveq #$0,d0
	moveq #$0,d1
	move.w $8(a6),d1
	move.w $c(a6),d0
	bra.s loc_202ca8
loc_202c6c:
	lea (dat_202ce4).l,a1
	tst.w ($ff1580).l
	bpl.s loc_202c8e
	move.w ($ff1584).l,d0
	subq.w #$1,d0
	lsl.w #$2,d0
	lea (dat_202c30).l,a1
	adda.w d0,a1
	bra.s loc_202c98
loc_202c8e:
	move.w ($ff1580).l,d0
	lsl.w #$2,d0
	adda.w d0,a1
loc_202c98:
	moveq #$0,d1
	move.w (a1)+,d1
	move.w d1,$8(a6)
	moveq #$0,d0
	move.w (a1),d0
	move.w d0,$c(a6)
loc_202ca8:
	subi.w #$a0,d1
	bcc.s loc_202cb0
	moveq #$0,d1
loc_202cb0:
	move.w ($f72a).w,d2
	cmp.w d2,d1
	bcs.s loc_202cba
	move.w d2,d1
loc_202cba:
	move.w d1,($f700).w
	subi.w #$60,d0
	bcc.s loc_202cc6
	moveq #$0,d0
loc_202cc6:
	cmp.w ($f72e).w,d0
	blt.s loc_202cd0
	move.w ($f72e).w,d0
loc_202cd0:
	move.w d0,($f704).w
	bsr.w sub_202cec
	lea (dat_202ce8).l,a1
	move.l (a1),($f7ac).w
	rts
dat_202ce4:
	dc.b $00,$50,$04,$ec
dat_202ce8:
	dc.b $7f,$7f,$7f,$7f

sub_202cec:
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

sub_202d24:
	lea ($d000).w,a6
	tst.b ($f744).w
	beq.s loc_202d30
	rts
loc_202d30:
	clr.w ($f754).w
	clr.w ($f756).w
	clr.w ($f758).w
	clr.w ($f75a).w
	bsr.w sub_202f56
	bsr.w sub_202ff6
	bsr.w sub_2036fa
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
	bsr.w sub_203148
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
loc_202dac:
	move.w d0,(a1)+
	dbf d6,loc_202dac
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
	bra.w loc_202dd8
loc_202dd8:
	lea (dat_202e56).l,a3
	lea (dat_23f13a).l,a4
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
loc_202e0e:
	cmp.w ($f646).w,d1
	bge.s loc_202e2e
	move.l d0,(a1)+
	addq.w #$1,d1
	addq.b #$1,d3
	addq.b #$1,d4
	addq.b #$1,d2
	cmpi.b #$8,d2
	bne.s loc_202e28
	moveq #$0,d2
	move.w (a2)+,d0
loc_202e28:
	dbf d6,loc_202e0e
	rts
loc_202e2e:
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
	bne.s loc_202e50
	moveq #$0,d2
	move.w (a2)+,d0
loc_202e50:
	dbf d6,loc_202e2e
	rts
dat_202e56:
	.incbin 11862, 256

sub_202f56:
	move.w ($f700).w,d4
	bsr.s sub_202f8a
	move.w ($f700).w,d0
	andi.w #$10,d0
	move.b ($f74a).w,d1
	eor.b d1,d0
	bne.s loc_202f88
	eori.b #$10,($f74a).w
	move.w ($f700).w,d0
	sub.w d4,d0
	bpl.s loc_202f82
	bset.b #$2,($f754).w
	rts
loc_202f82:
	bset.b #$3,($f754).w
loc_202f88:
	rts

sub_202f8a:
	move.w $8(a6),d0
	sub.w ($f700).w,d0
	sub.w ($f7a0).w,d0
	beq.s loc_202f9c
	bcs.s loc_202fcc
	bra.s loc_202fa2
loc_202f9c:
	clr.w ($f73a).w
	rts
loc_202fa2:
	cmpi.w #$10,d0
	blt.s loc_202fac
	move.w #$10,d0
loc_202fac:
	add.w ($f700).w,d0
	cmp.w ($f72a).w,d0
	blt.s loc_202fba
	move.w ($f72a).w,d0
loc_202fba:
	move.w d0,d1
	sub.w ($f700).w,d1
	asl.w #$8,d1
	move.w d0,($f700).w
	move.w d1,($f73a).w
	rts
loc_202fcc:
	cmpi.w #$fff0,d0
	bge.s loc_202fd6
	move.w #$fff0,d0
loc_202fd6:
	add.w ($f700).w,d0
	cmp.w ($f728).w,d0
	bgt.s loc_202fba
	move.w ($f728).w,d0
	bra.s loc_202fba
	.incbin 12262, 16

sub_202ff6:
	moveq #$0,d1
	move.w $c(a6),d0
	sub.w ($f704).w,d0
	btst.b #$2,$22(a6)
	beq.s loc_20300a
	subq.w #$5,d0
loc_20300a:
	btst.b #$1,$22(a6)
	beq.s loc_20302a
	addi.w #$20,d0
	sub.w ($f73e).w,d0
	bcs.s loc_203076
	subi.w #$40,d0
	bcc.s loc_203076
	tst.b ($f75c).w
	bne.s loc_203088
	bra.s loc_203036
loc_20302a:
	sub.w ($f73e).w,d0
	bne.s loc_20303c
	tst.b ($f75c).w
	bne.s loc_203088
loc_203036:
	clr.w ($f73c).w
	rts
loc_20303c:
	cmpi.w #$60,($f73e).w
	bne.s loc_203064
	move.w $14(a6),d1
	bpl.s loc_20304c
	neg.w d1
loc_20304c:
	cmpi.w #$800,d1
	bcc.s loc_203076
	move.w #$600,d1
	cmpi.w #$6,d0
	bgt.s loc_2030d6
	cmpi.w #$fffa,d0
	blt.s loc_2030a0
	bra.s loc_20308e
loc_203064:
	move.w #$200,d1
	cmpi.w #$2,d0
	bgt.s loc_2030d6
	cmpi.w #$fffe,d0
	blt.s loc_2030a0
	bra.s loc_20308e
loc_203076:
	move.w #$1000,d1
	cmpi.w #$10,d0
	bgt.s loc_2030d6
	cmpi.w #$fff0,d0
	blt.s loc_2030a0
	bra.s loc_20308e
loc_203088:
	moveq #$0,d0
	move.b d0,($f75c).w
loc_20308e:
	moveq #$0,d1
	move.w d0,d1
	add.w ($f704).w,d1
	tst.w d0
	bpl.w loc_2030e0
	bra.w loc_2030ac
loc_2030a0:
	neg.w d1
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_2030ac:
	cmp.w ($f72c).w,d1
	bgt.s loc_203104
	cmpi.w #$0,d1
	bgt.s loc_2030d0
	addi.w #$800,d1
	addi.w #$800,$c(a6)
	addi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203104
loc_2030d0:
	move.w ($f72c).w,d1
	bra.s loc_203104
loc_2030d6:
	ext.l d1
	asl.l #$8,d1
	add.l ($f704).w,d1
	swap d1
loc_2030e0:
	cmp.w ($f72e).w,d1
	blt.s loc_203104
	subi.w #$800,d1
	bcs.s loc_203100
	andi.w #$7ff,$c(a6)
	subi.w #$800,($f704).w
	andi.w #$3ff,($f70c).w
	bra.s loc_203104
loc_203100:
	move.w ($f72e).w,d1
loc_203104:
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
	bne.s loc_203146
	eori.b #$10,($f74b).w
	move.w ($f704).w,d0
	sub.w d4,d0
	bpl.s loc_203140
	bset.b #$0,($f754).w
	rts
loc_203140:
	bset.b #$1,($f754).w
loc_203146:
	rts

sub_203148:
	move.l ($f708).w,d2
	move.l d2,d0
	add.l d4,d0
	move.l d0,($f708).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74c).w,d3
	eor.b d3,d1
	bne.s loc_20317c
	eori.b #$10,($f74c).w
	sub.l d2,d0
	bpl.s loc_203176
	bset.b #$2,($f756).w
	bra.s loc_20317c
loc_203176:
	bset.b #$3,($f756).w
loc_20317c:
	move.l ($f70c).w,d3
	move.l d3,d0
	add.l d5,d0
	move.l d0,($f70c).w
	move.l d0,d1
	swap d1
	andi.w #$10,d1
	move.b ($f74d).w,d2
	eor.b d2,d1
	bne.s loc_2031b0
	eori.b #$10,($f74d).w
	sub.l d3,d0
	bpl.s loc_2031aa
	bset.b #$0,($f756).w
	rts
loc_2031aa:
	bset.b #$1,($f756).w
loc_2031b0:
	rts
	.incbin 12722, 302

sub_2032e0:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($ff1948).l,a2
	lea ($ff192e).l,a3
	lea ($a040).w,a4
	move.w #$6000,d2
	bsr.w sub_203338
	lea ($ff194a).l,a2
	lea ($ff1936).l,a3
	bsr.w sub_20339e
	lea ($ff194c).l,a2
	lea ($ff193e).l,a3
	bsr.w sub_2033a0
	lea ($ff1946).l,a2
	lea ($ff1926).l,a3
	lea ($a000).w,a4
	move.w #$4000,d2

sub_203338:
	tst.b (a2)
	beq.s loc_20339c
	bclr.b #$0,(a2)
	beq.s loc_203352
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2035cc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033a2
loc_203352:
	bclr.b #$1,(a2)
	beq.s loc_20336c
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2035cc
	move.w #$e0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033a2
loc_20336c:
	bclr.b #$2,(a2)
	beq.s loc_203382
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2035cc
	moveq #$fffffff0,d4
	moveq #$fffffff0,d5
	bsr.w sub_2033f8
loc_203382:
	bclr.b #$3,(a2)
	beq.s loc_20339c
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2035cc
	moveq #$fffffff0,d4
	move.w #$140,d5
	bsr.w sub_2033f8
loc_20339c:
	rts

sub_20339e:
	rts

sub_2033a0:
	rts

sub_2033a2:
	moveq #$15,d6

sub_2033a4:
	move.l #$800000,d7
	move.l d0,d1
loc_2033ac:
	movem.l d4-d5,-(a7)
	bsr.w sub_2034a4
	move.l d1,d0
	bsr.w sub_203426
	addq.b #$4,d1
	andi.b #$7f,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d5
	dbf d6,loc_2033ac
	rts
	.incbin 13262, 42

sub_2033f8:
	moveq #$f,d6
	move.l #$800000,d7
	move.l d0,d1
loc_203402:
	movem.l d4-d5,-(a7)
	bsr.w sub_2034a4
	move.l d1,d0
	bsr.w sub_203426
	addi.w #$100,d1
	andi.w #$fff,d1
	movem.l (a7)+,d4-d5
	addi.w #$10,d4
	dbf d6,loc_203402
	rts

sub_203426:
	or.w d2,d0
	swap d0
	btst.b #$4,(a0)
	bne.s loc_203462
	btst.b #$3,(a0)
	bne.s loc_203442
	move.l d0,(a5)
	move.l (a1)+,(a6)
	add.l d7,d0
	move.l d0,(a5)
	move.l (a1)+,(a6)
	rts
loc_203442:
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
loc_203462:
	btst.b #$3,(a0)
	bne.s loc_203484
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
loc_203484:
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

sub_2034a4:
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
	beq.s loc_2034f4
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
loc_2034f4:
	rts
	.incbin 13558, 214

sub_2035cc:
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
	.incbin 13800, 28

sub_203604:
	lea ($c00004).l,a5
	lea ($c00000).l,a6
	lea ($f700).w,a3
	lea ($a000).w,a4
	move.w #$4000,d2
	bsr.s sub_20362a
	lea ($f708).w,a3
	lea ($a040).w,a4
	move.w #$6000,d2

sub_20362a:
	moveq #$fffffff0,d4
	moveq #$f,d6
loc_20362e:
	movem.l d4-d6,-(a7)
	moveq #$0,d5
	move.w d4,d1
	bsr.w sub_2035cc
	move.w d1,d4
	moveq #$0,d5
	moveq #$1f,d6
	bsr.w sub_2033a4
	movem.l (a7)+,d4-d6
	addi.w #$10,d4
	dbf d6,loc_20362e
	rts

sub_203652:
	moveq #$0,d0
	lea (dat_20faac).l,a2
	move.l a2,-(a7)
	addq.l #$4,a2
	move.l (a2)+,d1
	andi.l #$3fffff,d1
	movea.l d1,a0
	lea ($ff2000).l,a4
	bsr.w sub_2026c6
	movea.l (a2)+,a0
	bsr.w sub_2036ac
	move.w (a2)+,d0
	move.w (a2),d0
	andi.w #$ff,d0
	bsr.w sub_2005b8
	movea.l (a7)+,a2
	addq.w #$4,a2
	tst.b ($ff1522).l
	beq.s loc_203696
	jmp (loc_20bf48).l
loc_203696:
	btst.b #$1,($ff151c).l
	beq.s loc_2036aa
	moveq #$0,d0
	move.b (a2),d0
	beq.s loc_2036aa
	bsr.w sub_2027f4
loc_2036aa:
	rts

sub_2036ac:
	lea ($a000).w,a3
	move.w #$1ff,d1
	moveq #$0,d0
loc_2036b6:
	move.l d0,(a3)+
	dbf d1,loc_2036b6
	lea ($a000).w,a3
	moveq #$0,d1
	bsr.w sub_2036cc
	lea ($a040).w,a3
	moveq #$2,d1

sub_2036cc:
	moveq #$0,d0
	add.w d1,d0
	lea (dat_23bcce).l,a1
	move.w $0(a1,d0.w),d0
	lea $0(a1,d0.w),a1
	moveq #$0,d1
	move.w d1,d2
	move.b (a1)+,d1
	move.b (a1)+,d2
loc_2036e6:
	move.w d1,d0
	movea.l a3,a0
loc_2036ea:
	move.b (a1)+,(a0)+
	dbf d0,loc_2036ea
	lea $80(a3),a3
	dbf d2,loc_2036e6
	rts

sub_2036fa:
	moveq #$0,d0
	move.b ($ff1506).l,d0
	add.w d0,d0
	move.w dat_203774(pc,d0.w),d0
	jsr dat_203774(pc,d0.w)
	cmpi.b #$2b,($d01c).w
	bne.s loc_203720
	move.w ($f704).w,($f72e).w
	move.w ($f704).w,($f726).w
loc_203720:
	moveq #$4,d1
	move.w ($f726).w,d0
	sub.w ($f72e).w,d0
	beq.s loc_20374e
	bcc.s loc_203750
	neg.w d1
	move.w ($f704).w,d0
	cmp.w ($f726).w,d0
	bls.s loc_203744
	move.w d0,($f72e).w
	andi.w #$fffe,($f72e).w
loc_203744:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
loc_20374e:
	rts
loc_203750:
	move.w ($f704).w,d0
	addq.w #$8,d0
	cmp.w ($f72e).w,d0
	bcs.s loc_203768
	btst.b #$1,($d022).w
	beq.s loc_203768
	add.w d1,d1
	add.w d1,d1
loc_203768:
	add.w d1,($f72e).w
	move.b #$1,($f75c).w
	rts
dat_203774:
	.incbin 14196, 318
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_2038c4(pc,d0.w),d0
	jmp dat_2038c4(pc,d0.w)
dat_2038c4:
	.incbin 14532, 124
	moveq #$0,d0
	move.b ($ff1507).l,d0
	add.w d0,d0
	move.w dat_203952(pc,d0.w),d0
	jmp dat_203952(pc,d0.w)
dat_203952:
	dc.b $00,$06,$00,$0e,$00,$40,$31,$fc
	dc.b $05,$10,$f7,$26,$4e,$75
	cmpi.b #$2b,($d01c).w
	beq.s loc_203984
	cmpi.b #$6,($d024).w
	bcc.s loc_203984
	move.w #$800,($f72e).w
	move.w #$800,($f726).w
	cmpi.w #$200,($f700).w
	bcs.s loc_203990
loc_203984:
	move.w #$710,($f72e).w
	move.w #$710,($f726).w
loc_203990:
	rts
	.incbin 14738, 212

sub_203a66:
	lea ($d000).w,a0
	moveq #$7f,d7
	moveq #$0,d0
loc_203a6e:
	move.b (a0),d0
	beq.s loc_203a84
	add.w d0,d0
	add.w d0,d0
	lea (dat_203e88).l,a1
	movea.l -$4(a1,d0.w),a1
	jsr (a1)
	moveq #$0,d0
loc_203a84:
	lea $40(a0),a0
	dbf d7,loc_203a6e
	rts

sub_203a8e:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d2
	move.w $12(a0),d0
	btst.b #$3,$2c(a0)
	bne.s loc_203acc
	bpl.s loc_203abe
	btst.b #$1,$2c(a0)
	beq.s loc_203abe
	cmpi.w #$f800,$12(a0)
	bcs.s loc_203acc
loc_203abe:
	btst.b #$2,$2c(a0)
	bne.s loc_203acc
	addi.w #$38,$12(a0)
loc_203acc:
	tst.w $12(a0)
	bmi.s loc_203ae0
	cmpi.w #$1000,$12(a0)
	bcs.s loc_203ae0
	move.w #$1000,$12(a0)
loc_203ae0:
	ext.l d0
	asl.l #$8,d0
	add.l d0,d3
	move.l d2,$8(a0)
	move.l d3,$c(a0)
	rts

sub_203af0:
	move.l $8(a0),d2
	move.l $c(a0),d3
	move.w $10(a0),d0
	btst.b #$3,$22(a0)
	beq.s loc_203b2c
	moveq #$0,d1
	move.b $3d(a0),d1
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	movea.l d1,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_203b2c
	move.w #$ff00,d1
	btst.b #$0,$22(a1)
	beq.s loc_203b2a
	neg.w d1
loc_203b2a:
	add.w d1,d0
loc_203b2c:
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

sub_203b46:
	bclr.b #$7,$1(a0)
	move.b $1(a0),d0
	andi.w #$c,d0
	beq.w loc_203bb6
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w ($f700).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203bd2
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$140,d1
	bge.s loc_203bd2
	move.b $16(a0),d0
	move.w $c(a0),d3
	cmpi.w #$100,($f704).w
	bcc.s loc_203b90
	cmpi.w #$800,d3
	bcs.s loc_203ba2
	subi.w #$800,d3
	bra.s loc_203ba2
loc_203b90:
	cmpi.w #$700,($f704).w
	bcs.s loc_203ba2
	cmpi.w #$100,d3
	bcc.s loc_203ba2
	addi.w #$800,d3
loc_203ba2:
	sub.w ($f704).w,d3
	move.w d3,d1
	add.w d0,d1
	bmi.s loc_203bd2
	move.w d3,d1
	sub.w d0,d1
	cmpi.w #$e0,d1
	bge.s loc_203bd2
loc_203bb6:
	lea ($ac00).w,a1
	move.w $18(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	adda.w d0,a1
	cmpi.w #$7e,(a1)
	bcc.s loc_203bd2
	addq.w #$2,(a1)
	adda.w (a1),a1
	move.w a0,(a1)
loc_203bd2:
	rts
	.incbin 15316, 30

sub_203bf2:
	movea.l a0,a1
	moveq #$0,d1
	moveq #$f,d0
loc_203bf8:
	move.l d1,(a1)+
	dbf d0,loc_203bf8
	rts
dat_203c00:
	.incbin 15360, 16

sub_203c10:
	lea ($f800).w,a2
	moveq #$0,d5
	lea ($ac00).w,a4
	moveq #$7,d7
loc_203c1c:
	tst.w (a4)
	beq.w loc_203cdc
	moveq #$2,d6
loc_203c24:
	movea.w $0(a4,d6.w),a0
	tst.b (a0)
loc_203c2a:
	beq.w loc_203cd4
	move.b $1(a0),d0
	move.b d0,d4
	andi.w #$c,d0
	beq.w loc_203c8a
	movea.l dat_203c00(pc,d0.w),a1
	moveq #$0,d0
	move.b $19(a0),d0
	move.w $8(a0),d3
	sub.w (a1),d3
	addi.w #$80,d3
	moveq #$0,d0
	move.b $16(a0),d0
	move.w $c(a0),d2
	cmpi.w #$100,$4(a1)
	bcc.s loc_203c6e
	cmpi.w #$800,d2
	bcs.s loc_203c80
	subi.w #$800,d2
	bra.s loc_203c80
loc_203c6e:
	cmpi.w #$700,$4(a1)
	bcs.s loc_203c80
	cmpi.w #$100,d2
	bcc.s loc_203c80
	addi.w #$800,d2
loc_203c80:
	sub.w $4(a1),d2
	addi.w #$80,d2
	bra.s loc_203cac
loc_203c8a:
	move.w $a(a0),d2
	move.w $8(a0),d3
	bra.s loc_203cac
	.incbin 15508, 24
loc_203cac:
	movea.l $4(a0),a1
	moveq #$0,d1
	btst.l #$5,d4
	bne.s loc_203cca
	move.b $1a(a0),d1
	add.w d1,d1
	adda.w $0(a1,d1.w),a1
	moveq #$0,d1
	move.b (a1)+,d1
	subq.b #$1,d1
	bmi.s loc_203cce
loc_203cca:
	bsr.w sub_203cfe
loc_203cce:
	bset.b #$7,$1(a0)
loc_203cd4:
	addq.w #$2,d6
	subq.w #$2,(a4)
	bne.w loc_203c24
loc_203cdc:
	lea $80(a4),a4
	dbf d7,loc_203c1c
	move.b d5,($f62c).w
	cmpi.b #$50,d5
	beq.s loc_203cf6
	move.l #$0,(a2)
	rts
loc_203cf6:
	move.b #$0,-$5(a2)
	rts

sub_203cfe:
	movea.w $2(a0),a3
	btst.l #$0,d4
	bne.s loc_203d44
	btst.l #$1,d4
	bne.w loc_203d92
loc_203d10:
	cmpi.b #$50,d5
	beq.s loc_203d42
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
	bne.s loc_203d3c
	addq.w #$1,d0
loc_203d3c:
	move.w d0,(a2)+
	dbf d1,loc_203d10
loc_203d42:
	rts
loc_203d44:
	btst.l #$1,d4
	bne.w loc_203dd8
loc_203d4c:
	cmpi.b #$50,d5
	beq.s loc_203d90
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
	bne.s loc_203d8a
	addq.w #$1,d0
loc_203d8a:
	move.w d0,(a2)+
	dbf d1,loc_203d4c
loc_203d90:
	rts
loc_203d92:
	cmpi.b #$50,d5
	beq.s loc_203dd6
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
	bne.s loc_203dd0
	addq.w #$1,d0
loc_203dd0:
	move.w d0,(a2)+
	dbf d1,loc_203d92
loc_203dd6:
	rts
loc_203dd8:
	cmpi.b #$50,d5
	beq.s loc_203e2a
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
	bne.s loc_203e24
	addq.w #$1,d0
loc_203e24:
	move.w d0,(a2)+
	dbf d1,loc_203dd8
loc_203e2a:
	rts
	.incbin 15916, 92
dat_203e88:
	.incbin 16008, 334

sub_203fd6:
	lea ($f780).w,a1
	cmpi.b #$5,$1c(a0)
	beq.s loc_203fe8
	move.w #$0,(a1)
	rts
loc_203fe8:
	tst.w (a1)
	bne.s loc_203ff2
	move.b #$1,$1(a1)
loc_203ff2:
	cmpi.w #$2a30,(a1)
	bcs.s loc_20403c
	move.w #$0,(a1)
	move.b #$2b,$1c(a0)
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
	move.b #$1,($ff1508).l
	move.w #$fb00,$12(a0)
	move.w #$100,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_20402e
	neg.w $10(a0)
loc_20402e:
	move.w #$0,$14(a0)
	move.w #$79,d0
	bra.w sub_205d68
loc_20403c:
	rts
	tst.b ($ff0f01).l
	bne.s loc_20405a
	cmpa.w #$d040,a0
	beq.s loc_20405a
	tst.b ($ff1906).l
	beq.s loc_20405a
	jmp (loc_207556).l
loc_20405a:
	move.b $2a(a0),d0
	beq.s loc_204084
	addq.b #$1,d0
	btst.b #$2,$22(a0)
	beq.s loc_204076
	cmpi.b #$2d,d0
	bcs.s loc_204080
	move.b #$2d,d0
	bra.s loc_204080
loc_204076:
	cmpi.b #$1e,d0
	bcs.s loc_204080
	move.b #$1e,d0
loc_204080:
	move.b d0,$2a(a0)
loc_204084:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_204092(pc,d0.w),d1
	jmp dat_204092(pc,d1.w)
dat_204092:
	dc.b $00,$4c,$01,$8c,$13,$fe,$14,$70
	dc.b $14,$f8
loc_20409c:
	tst.b ($d300).w
	bne.s loc_2040da
	move.b #$1,($ff1521).l
	move.b #$3,($d300).w
	move.b #$5,($d31c).w
	move.b #$3,($d340).w
	move.b #$6,($d35c).w
	move.b #$3,($d380).w
	move.b #$7,($d39c).w
	move.b #$3,($d3c0).w
	move.b #$8,($d3dc).w
loc_2040da:
	rts
	dc.b $4e,$75
	addq.b #$2,$24(a0)
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	tst.b ($ff195b).l
	beq.s loc_204102
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
loc_204102:
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$18,$19(a0)
	move.b #$4,$1(a0)
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	rts

sub_204136:
	tst.b ($ff1506).l
	bne.s loc_20419c
	move.b ($ff1505).l,d0
	andi.b #$1,d0
	bne.s loc_20419c
	move.b $16(a0),d2
	ext.w d2
	add.w $c(a0),d2
	move.w $8(a0),d3
	bsr.w sub_2041a0
	cmpi.b #$2f,d1
	bne.s loc_20419e
	cmpi.w #$15c0,$8(a0)
	bcc.s loc_20419c
	tst.b $2c(a0)
	beq.s loc_20419c
	jsr (sub_207916).l
	bne.s loc_20419c
	move.b #$e,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$1,d0
	tst.w $10(a0)
	bmi.s loc_204194
	moveq #$0,d0
loc_204194:
	move.b d0,$1(a1)
	move.b d0,$22(a1)
loc_20419c:
	rts
loc_20419e:
	rts

sub_2041a0:
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

sub_2041c6:
	move.w ($f7a0).w,d1
	move.w $14(a0),d0
	bpl.s loc_2041d2
	neg.w d0
loc_2041d2:
	btst.b #$1,$2c(a0)
	beq.s loc_2041e2
	cmpi.w #$1b00,$8(a0)
	bcs.s loc_20420a
loc_2041e2:
	cmpi.w #$600,d0
	bcs.s loc_20420a
	tst.w $14(a0)
	bpl.s loc_2041fc
	addq.w #$2,d1
	cmpi.w #$e0,d1
	bcs.s loc_204218
	move.w #$e0,d1
	bra.s loc_204218
loc_2041fc:
	subq.w #$2,d1
	cmpi.w #$60,d1
	bcc.s loc_204218
	move.w #$60,d1
	bra.s loc_204218
loc_20420a:
	cmpi.w #$a0,d1
	beq.s loc_204218
	bcc.s loc_204216
	addq.w #$2,d1
	bra.s loc_204218
loc_204216:
	subq.w #$2,d1
loc_204218:
	move.w d1,($f7a0).w
	rts
	bsr.s sub_2041c6
	bsr.w sub_204136
	tst.w ($ff1588).l
	beq.s loc_20423e
	btst.b #$4,($f605).w
	beq.s loc_20423e
	move.b #$1,($ff1906).l
	rts
loc_20423e:
	tst.b ($f7cc).w
	bne.s loc_20424a
	move.w ($f604).w,($f602).w
loc_20424a:
	btst.b #$0,$2c(a0)
	beq.s loc_20426e
	cmpi.b #$6,($ff1506).l
	bne.s loc_204268
	clr.w ($f786).w
	clr.b ($ff1521).l
	bra.s loc_204286
loc_204268:
	bsr.w sub_204550
	bra.s loc_204286
loc_20426e:
	moveq #$0,d0
	move.b $22(a0),d0
	andi.w #$6,d0
	move.w dat_2042cc(pc,d0.w),d1
	jsr dat_2042cc(pc,d1.w)
	jsr (sub_206b5c).l
loc_204286:
	bsr.s sub_2042da
	bsr.w sub_20439a
	bsr.w sub_2043b4
	move.b ($f768).w,$36(a0)
	move.b ($f76a).w,$37(a0)
	tst.b ($f7c7).w
	beq.s loc_2042ae
	tst.b $1c(a0)
	bne.s loc_2042ae
	move.b $1d(a0),$1c(a0)
loc_2042ae:
	bsr.w sub_205758
	tst.b $2c(a0)
	bmi.s loc_2042c6
	cmpi.b #$2b,$1c(a0)
	beq.s loc_2042c6
	jsr (sub_207100).l
loc_2042c6:
	bsr.w sub_20560e
	rts
dat_2042cc:
	dc.b $03,$6a,$03,$c6,$04,$12,$04,$40
	dc.b $81,$82,$83,$84,$85,$86

sub_2042da:
	cmpi.w #$d2,($f786).w
	bcc.s loc_2042fe
	move.w $30(a0),d0
	beq.s loc_2042f0
	subq.w #$1,$30(a0)
	lsr.w #$3,d0
	bcc.s loc_2042fe
loc_2042f0:
	btst.b #$6,$2c(a0)
	bne.s loc_2042fe
	jsr (sub_203b46).l
loc_2042fe:
	tst.b ($ff151f).l
	beq.s loc_204342
	tst.w $32(a0)
	beq.s loc_204342
	subq.w #$1,$32(a0)
	bne.s loc_204342
	tst.b ($ff1520).l
	bne.s loc_20433a
	tst.b ($ff1958).l
	bne.s loc_20433a
	tst.b ($ff152e).l
	bne.s loc_204334
	move.w #$e,d0
	jsr (sub_205d68).l
loc_204334:
	jsr (sub_201a4c).l
loc_20433a:
	move.b #$0,($ff151f).l
loc_204342:
	tst.b ($ff1520).l
	beq.s loc_204398
	tst.w $34(a0)
	beq.s loc_204398
	subq.w #$1,$34(a0)
	bne.s loc_204398
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	tst.b ($ff151f).l
	bne.s loc_204390
	tst.b ($ff1958).l
	bne.s loc_204390
	tst.b ($ff152e).l
	bne.s loc_20438a
	move.w #$e,d0
	jsr (sub_205d68).l
loc_20438a:
	jsr (sub_201a4c).l
loc_204390:
	move.b #$0,($ff1520).l
loc_204398:
	rts

sub_20439a:
	move.w ($f7a8).w,d0
	lea ($cb00).w,a1
	lea $0(a1,d0.w),a1
	move.w $8(a0),(a1)+
	move.w $c(a0),(a1)+
	addq.b #$4,($f7a9).w
	rts

sub_2043b4:
	cmpi.b #$2,($ff1506).l
	beq.s loc_2043c0
loc_2043be:
	rts
loc_2043c0:
	cmpi.b #$1,($ff1507).l
	bne.s loc_2043d2
	cmpi.w #$c8,$8(a0)
	bcs.s loc_2043be
loc_2043d2:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bge.s loc_204416
	bset.b #$6,$22(a0)
	bne.s loc_2043be
	bsr.w sub_2061e8
	move.b #$21,($d1c0).w
	move.b #$81,($d1e8).w
	move.w #$300,($f760).w
	move.w #$6,($f762).w
	move.w #$40,($f764).w
	asr.w $10(a0)
	asr.w $12(a0)
	asr.w $12(a0)
	beq.s loc_2043be
	bra.s loc_20444e
loc_204416:
	tst.w $12(a0)
	beq.s loc_20441e
	bpl.s loc_2043be
loc_20441e:
	bclr.b #$6,$22(a0)
	beq.s loc_2043be
	move.w #$600,($f760).w
	move.w #$c,($f762).w
	move.w #$80,($f764).w
	asl.w $12(a0)
	beq.w loc_2043be
	cmpi.w #$f000,$12(a0)
	bgt.s loc_20444e
	move.w #$f000,$12(a0)
loc_20444e:
	jsr (sub_207916).l
	bne.s loc_204462
	move.b #$b,$0(a1)
	move.w $8(a0),$8(a1)
loc_204462:
	rts

sub_204464:
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
	bcs.s loc_20453e
	move.l #$50000,d0
loc_20453e:
	move.l d0,($ff1570).l
	move.b ($ff195b).l,($ff1593).l
	rts

sub_204550:
	cmpi.w #$0,($ff1506).l
	bne.s loc_204576
	tst.b ($ff152e).l
	beq.s loc_20456c
	cmpi.b #$2,($ff152e).l
	bne.s loc_204576
loc_20456c:
	cmpi.w #$900,$8(a0)
	bcs.w loc_204626
loc_204576:
	tst.b $2a(a0)
	bne.w loc_204634
	tst.b ($f784).w
	beq.w loc_204634
	move.w #$600,d2
	moveq #$0,d0
	move.w $14(a0),d0
	bpl.s loc_204594
	neg.w d0
loc_204594:
	tst.w ($f786).w
	bne.s loc_2045a0
	move.w #$1,($f786).w
loc_2045a0:
	move.w ($f786).w,d1
	cmpi.w #$e6,d1
	bcs.s loc_2045b6
	move.b #$1,($ff1502).l
	bra.w loc_205d64
loc_2045b6:
	cmpi.w #$d2,d1
	bcs.s loc_20460a
	cmpi.b #$2,($ff1522).l
	beq.s loc_204608
	move.b #$1,($f744).w
	move.b ($ff152e).l,d0
	bne.s loc_2045e0
	move.w #$82,d0
	jsr (sub_205d68).l
	moveq #$0,d0
loc_2045e0:
	add.b ($f784).w,d0
	bpl.s loc_2045ea
	moveq #$0,d0
	bra.s loc_2045f2
loc_2045ea:
	cmpi.b #$3,d0
	bcs.s loc_2045f2
	moveq #$2,d0
loc_2045f2:
	bset.l #$7,d0
	move.b d0,($ff152e).l
	bsr.w sub_204464
	move.b #$2,($ff1522).l
loc_204608:
	rts
loc_20460a:
	cmpi.w #$5a,d1
	bcc.s loc_204622
	cmp.w d2,d0
	bcc.w loc_20409c
	clr.w ($f786).w
	clr.b ($ff1521).l
	rts
loc_204622:
	cmp.w d2,d0
	bcc.s loc_204634
loc_204626:
	clr.w ($f786).w
	clr.b ($f784).w
	clr.b ($ff1521).l
loc_204634:
	rts
	bsr.w sub_203fd6
	cmpi.b #$2b,$1c(a0)
	bne.s loc_204666
	tst.b ($ff195b).l
	beq.s loc_204654
	cmpi.b #$79,$1a(a0)
	bne.s loc_204690
	bra.s loc_20465c
loc_204654:
	cmpi.b #$17,$1a(a0)
	bcs.s loc_204690
loc_20465c:
	bsr.w sub_204ef8
	jmp (sub_203a8e).l
loc_204666:
	bsr.w sub_20473e
	bsr.w sub_204550
	bsr.w sub_204fe2
	bsr.w sub_20510e
	bsr.w sub_2047b2
	bsr.w sub_204f64
	bsr.w sub_204ef8
	jsr (sub_203af0).l
	bsr.w sub_200b92
	bsr.w sub_20518c
loc_204690:
	rts
	tst.b ($f7c7).w
	bne.s loc_2046ac
	cmpi.b #$15,$1c(a0)
	beq.s loc_2046ac
	tst.w $12(a0)
	bmi.s loc_2046ac
	move.b #$0,$1c(a0)
loc_2046ac:
	bsr.w sub_20473e
	bsr.w sub_204550
	bsr.w sub_2050cc
	bsr.w sub_204e18
	bsr.w sub_204ef8
	jsr (sub_203a8e).l
	btst.b #$6,$22(a0)
	beq.s loc_2046d4
	subi.w #$28,$12(a0)
loc_2046d4:
	bsr.w sub_2051d6
	bsr.w sub_2051fa
	rts
	bsr.w sub_20473e
	bsr.w sub_204550
	bsr.w sub_204fe2
	bsr.w sub_20514a
	bsr.w sub_204c52
	bsr.w sub_204ef8
	tst.b $2a(a0)
	bne.s loc_204702
	jsr (sub_203af0).l
loc_204702:
	bsr.w sub_200b92
	bsr.w sub_20518c
	rts
	bsr.w sub_20473e
	bsr.w sub_204550
	bsr.w sub_2050cc
	bsr.w sub_204e18
	bsr.w sub_204ef8
	jsr (sub_203a8e).l
	btst.b #$6,$22(a0)
	beq.s loc_204734
	subi.w #$28,$12(a0)
loc_204734:
	bsr.w sub_2051d6
	bsr.w sub_2051fa
	rts

sub_20473e:
	cmpi.b #$1,($ff152e).l
	bne.s loc_2047aa
	tst.w ($ff1506).l
	bne.s loc_2047aa
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	lea (dat_2047ac).l,a2
loc_204772:
	move.b (a2)+,d0
	bmi.s loc_204782
	cmp.b d0,d1
	bne.s loc_204772
	bset.b #$1,$2c(a0)
	rts
loc_204782:
	bclr.b #$1,$2c(a0)
	beq.s loc_2047aa
	tst.w $12(a0)
	bpl.s loc_2047aa
	cmpi.w #$f800,$12(a0)
	bcc.s loc_2047aa
	move.w #$600,$10(a0)
	btst.b #$0,$22(a0)
	beq.s loc_2047aa
	neg.w $10(a0)
loc_2047aa:
	rts
dat_2047ac:
	dc.b $06,$07,$08,$49,$4c,$ff

sub_2047b2:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	move.w ($f764).w,d4
	tst.b ($f7ca).w
	bne.w loc_204adc
	tst.w $3e(a0)
	bne.w loc_204a8c
	btst.b #$2,($f602).w
	beq.s loc_2047da
	bsr.w sub_204b6c
loc_2047da:
	btst.b #$3,($f602).w
	beq.s loc_2047e6
	bsr.w sub_204be2
loc_2047e6:
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.w loc_204a8c
	tst.w $14(a0)
	beq.s loc_204806
	tst.b $2a(a0)
	beq.w loc_204a8c
	bra.s loc_204812
loc_204806:
	bclr.b #$5,$22(a0)
	move.b #$5,$1c(a0)
loc_204812:
	btst.b #$3,$22(a0)
	beq.s loc_204864
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	lea ($d000).w,a1
	lea $0(a1,d0.w),a1
	tst.b $22(a1)
	bmi.w loc_2048bc
	cmpi.b #$1e,$0(a1)
	bne.s loc_204844
	move.b #$0,$1c(a0)
	bra.w loc_204a8c
loc_204844:
	moveq #$0,d1
	move.b $19(a1),d1
	move.w d1,d2
	add.w d2,d2
	subq.w #$4,d2
	add.w $8(a0),d1
	sub.w $8(a1),d1
	cmpi.w #$4,d1
	blt.s loc_2048a0
	cmp.w d2,d1
	bge.s loc_20488e
	bra.s loc_2048bc
loc_204864:
	jsr (sub_206e64).l
	cmpi.w #$c,d1
	blt.s loc_2048bc
	move.w #$ab,d0
	jsr (sub_20262a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	cmpi.b #$3,$36(a0)
	bne.s loc_204898
loc_20488e:
	btst.b #$0,$22(a0)
	bne.s loc_2048a8
	bra.s loc_2048b2
loc_204898:
	cmpi.b #$3,$37(a0)
	bne.s loc_2048bc
loc_2048a0:
	btst.b #$0,$22(a0)
	bne.s loc_2048b2
loc_2048a8:
	move.b #$32,$1c(a0)
	bra.w loc_204a8c
loc_2048b2:
	move.b #$6,$1c(a0)
	bra.w loc_204a8c
loc_2048bc:
	move.b ($f788).w,d0
	andi.b #$f,d0
	beq.s loc_2048d0
	addq.b #$1,($f788).w
	andi.b #$cf,($f788).w
loc_2048d0:
	btst.b #$7,($f788).w
	bne.w loc_2049d4
	btst.b #$6,($f788).w
	bne.w loc_2049f4
	btst.b #$1,($f602).w
	bne.w loc_2049f4
	andi.b #$f,($f788).w
	beq.s loc_204908
	btst.b #$0,($f603).w
	beq.s loc_20491c
	bset.b #$7,($f788).w
	bra.w loc_204ab0
loc_204908:
	btst.b #$0,($f603).w
	beq.w loc_20491c
	move.b #$1,($f788).w
	bra.w loc_204ab0
loc_20491c:
	btst.b #$0,($f602).w
	beq.s loc_204998
	move.b #$7,$1c(a0)
	tst.b $2a(a0)
	beq.s loc_20497a
	move.b #$0,$1c(a0)
	moveq #$64,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_20494c
	asr.w #$1,d2
	sub.w d2,d1
loc_20494c:
	btst.b #$0,$22(a0)
	beq.s loc_204958
	neg.w d0
	neg.w d1
loc_204958:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_20496e
	cmp.w d0,d1
	ble.s loc_204974
	bra.s loc_204972
loc_20496e:
	cmp.w d1,d0
	ble.s loc_204974
loc_204972:
	move.w d1,d0
loc_204974:
	move.w d0,$14(a0)
	rts
loc_20497a:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204994
	move.b #$1,$2a(a0)
	move.w #$9c,d0
	jsr (sub_20262a).l
loc_204994:
	bra.w loc_204ab0
loc_204998:
	cmpi.b #$1e,$2a(a0)
	beq.s loc_2049b8
	move.w #$ab,d0
	jsr (sub_20262a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	bra.s loc_2049f4
loc_2049b8:
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20262a).l
	bra.w loc_204a8c
	dc.b $61,$00,$01,$9e,$60,$00,$00,$ba
loc_2049d4:
	btst.b #$0,($f602).w
	beq.s loc_2049f4
	move.b #$7,$1c(a0)
	cmpi.w #$c8,($f73e).w
	beq.w loc_204ab0
	addq.w #$2,($f73e).w
	bra.w loc_204ab0
loc_2049f4:
	btst.b #$6,($f788).w
	bne.w loc_204a70
	andi.b #$f,($f788).w
	beq.s loc_204a18
	btst.b #$1,($f603).w
	beq.s loc_204a2a
	bset.b #$6,($f788).w
	bra.w loc_204ab0
loc_204a18:
	btst.b #$1,($f603).w
	beq.s loc_204a2a
	move.b #$1,($f788).w
	bra.w loc_204ab0
loc_204a2a:
	btst.b #$1,($f602).w
	beq.s loc_204a8c
	move.b #$8,$1c(a0)
	tst.b $2a(a0)
	bne.s loc_204a6e
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.s loc_204a6e
	move.b #$1,$2a(a0)
	move.w #$16,$14(a0)
	btst.b #$0,$22(a0)
	beq.s loc_204a60
	neg.w $14(a0)
loc_204a60:
	move.w #$9c,d0
	jsr (sub_20262a).l
	bsr.w sub_204f8c
loc_204a6e:
	bra.s loc_204ab0
loc_204a70:
	btst.b #$1,($f602).w
	beq.s loc_204a8c
	move.b #$8,$1c(a0)
	cmpi.w #$8,($f73e).w
	beq.s loc_204ab0
	subq.w #$2,($f73e).w
	bra.s loc_204ab0
loc_204a8c:
	cmpi.w #$60,($f73e).w
	bne.s loc_204aa6
	move.b ($f788).w,d0
	andi.b #$f,d0
	bne.s loc_204ab0
	move.b #$0,($f788).w
	bra.s loc_204ab0
loc_204aa6:
	bcc.s loc_204aac
	addq.w #$4,($f73e).w
loc_204aac:
	subq.w #$2,($f73e).w
loc_204ab0:
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204adc
	move.w $14(a0),d0
	beq.s loc_204adc
	bmi.s loc_204ad0
	sub.w d5,d0
	bcc.s loc_204aca
	move.w #$0,d0
loc_204aca:
	move.w d0,$14(a0)
	bra.s loc_204adc
loc_204ad0:
	add.w d5,d0
	bcc.s loc_204ad8
	move.w #$0,d0
loc_204ad8:
	move.w d0,$14(a0)
loc_204adc:
	move.b $26(a0),d0
	jsr (sub_200792).l
	muls.w $14(a0),d1
	asr.l #$8,d1
	move.w d1,$10(a0)
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
loc_204afa:
	move.b $26(a0),d0
	addi.b #$40,d0
	bmi.s loc_204b6a
	move.b #$40,d1
	tst.w $14(a0)
	beq.s loc_204b6a
	bmi.s loc_204b12
	neg.w d1
loc_204b12:
	move.b $26(a0),d0
	add.b d1,d0
	move.w d0,-(a7)
	bsr.w sub_206d24
	move.w (a7)+,d0
	tst.w d1
	bpl.s loc_204b6a
	asl.w #$8,d1
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_204b66
	cmpi.b #$40,d0
	beq.s loc_204b54
	cmpi.b #$80,d0
	beq.s loc_204b4e
	add.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204b4e:
	sub.w d1,$12(a0)
	rts
loc_204b54:
	sub.w d1,$10(a0)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a0)
	rts
loc_204b66:
	add.w d1,$12(a0)
loc_204b6a:
	rts

sub_204b6c:
	tst.b $2a(a0)
	bne.s loc_204be0
	move.w $14(a0),d0
	beq.s loc_204b7a
	bpl.s loc_204baa
loc_204b7a:
	bset.b #$0,$22(a0)
	bne.s loc_204b8e
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204b8e:
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	ble.s loc_204b9e
	sub.w d5,d0
	cmp.w d1,d0
	bgt.s loc_204b9e
	move.w d1,d0
loc_204b9e:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204baa:
	sub.w d4,d0
	bcc.s loc_204bb2
	move.w #$ff80,d0
loc_204bb2:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204be0
	cmpi.w #$400,d0
	blt.s loc_204be0
	move.b #$d,$1c(a0)
	bclr.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20262a).l
loc_204be0:
	rts

sub_204be2:
	tst.b $2a(a0)
	bne.s loc_204c50
	move.w $14(a0),d0
	bmi.s loc_204c1a
	bclr.b #$0,$22(a0)
	beq.s loc_204c02
	bclr.b #$5,$22(a0)
	move.b #$1,$1d(a0)
loc_204c02:
	cmp.w d6,d0
	bge.s loc_204c0e
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204c0e
	move.w d6,d0
loc_204c0e:
	move.w d0,$14(a0)
	move.b #$0,$1c(a0)
	rts
loc_204c1a:
	add.w d4,d0
	bcc.s loc_204c22
	move.w #$80,d0
loc_204c22:
	move.w d0,$14(a0)
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204c50
	cmpi.w #$fc00,d0
	bgt.s loc_204c50
	move.b #$d,$1c(a0)
	bset.b #$0,$22(a0)
	move.w #$90,d0
	jsr (sub_20262a).l
loc_204c50:
	rts

sub_204c52:
	move.w ($f760).w,d6
	asl.w #$1,d6
	move.w ($f762).w,d5
	asr.w #$1,d5
	move.w ($f764).w,d4
	asr.w #$2,d4
	tst.b ($f7ca).w
	bne.w loc_204d9c
	tst.w $3e(a0)
	bne.s loc_204c8a
	btst.b #$2,($f602).w
	beq.s loc_204c7e
	bsr.w sub_204dd2
loc_204c7e:
	btst.b #$3,($f602).w
	beq.s loc_204c8a
	bsr.w sub_204df6
loc_204c8a:
	tst.b $2a(a0)
	beq.w loc_204d34
	move.w #$4b,d0
	move.w ($f760).w,d1
	move.w d1,d2
	asl.w #$1,d1
	tst.b ($ff1520).l
	beq.s loc_204caa
	asr.w #$1,d2
	sub.w d2,d1
loc_204caa:
	btst.b #$0,$22(a0)
	beq.s loc_204cb6
	neg.w d0
	neg.w d1
loc_204cb6:
	add.w d0,$14(a0)
	move.w $14(a0),d0
	btst.b #$0,$22(a0)
	beq.s loc_204ccc
	cmp.w d0,d1
	ble.s loc_204cd2
	bra.s loc_204cd0
loc_204ccc:
	cmp.w d1,d0
	ble.s loc_204cd2
loc_204cd0:
	move.w d1,d0
loc_204cd2:
	move.w d0,$14(a0)
	btst.b #$1,($f602).w
	beq.s loc_204d06
	rts
loc_204ce0:
	move.w #$ab,d0
	jsr (sub_20262a).l
	move.b #$0,$2a(a0)
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	bra.w loc_204d66
loc_204d06:
	cmpi.b #$2d,$2a(a0)
	bne.s loc_204ce0
	move.b #$0,$2a(a0)
	move.w #$91,d0
	jsr (sub_20262a).l
	btst.b #$0,$22(a0)
	bne.s loc_204d2c
	bsr.w sub_204df6
	bra.s loc_204d34
loc_204d2c:
	bsr.w sub_204dd2
	bra.s loc_204d34
	dc.b $4e,$75
loc_204d34:
	move.w $14(a0),d0
	beq.s loc_204d56
	bmi.s loc_204d4a
	sub.w d5,d0
	bcc.s loc_204d44
	move.w #$0,d0
loc_204d44:
	move.w d0,$14(a0)
	bra.s loc_204d56
loc_204d4a:
	add.w d5,d0
	bcc.s loc_204d52
	move.w #$0,d0
loc_204d52:
	move.w d0,$14(a0)
loc_204d56:
	tst.w $14(a0)
	bne.s loc_204d9c
	move.w #$ab,d0
	jsr (sub_20262a).l
loc_204d66:
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204d86
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_204d96
loc_204d86:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_204d96:
	move.b #$5,$1c(a0)
loc_204d9c:
	move.b $26(a0),d0
	jsr (sub_200792).l
	muls.w $14(a0),d0
	asr.l #$8,d0
	move.w d0,$12(a0)
	muls.w $14(a0),d1
	asr.l #$8,d1
	cmpi.w #$1000,d1
	ble.s loc_204dc0
	move.w #$1000,d1
loc_204dc0:
	cmpi.w #$f000,d1
	bge.s loc_204dca
	move.w #$f000,d1
loc_204dca:
	move.w d1,$10(a0)
	bra.w loc_204afa

sub_204dd2:
	move.w $14(a0),d0
	beq.s loc_204dda
	bpl.s loc_204de8
loc_204dda:
	bset.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204de8:
	sub.w d4,d0
	bcc.s loc_204df0
	move.w #$ff80,d0
loc_204df0:
	move.w d0,$14(a0)
	rts

sub_204df6:
	move.w $14(a0),d0
	bmi.s loc_204e0a
	bclr.b #$0,$22(a0)
	move.b #$2,$1c(a0)
	rts
loc_204e0a:
	add.w d4,d0
	bcc.s loc_204e12
	move.w #$80,d0
loc_204e12:
	move.w d0,$14(a0)
	rts

sub_204e18:
	move.w ($f760).w,d6
	move.w ($f762).w,d5
	asl.w #$1,d5
	move.w $10(a0),d0
	cmpi.b #$1,($ff152e).l
	bne.s loc_204e52
	tst.w ($ff1506).l
	bne.s loc_204e52
	cmpi.w #$6c8,$8(a0)
	bcs.s loc_204e4a
	cmpi.w #$840,$8(a0)
	bcc.s loc_204e4a
	rts
loc_204e4a:
	btst.b #$1,$2c(a0)
	bne.s loc_204e82
loc_204e52:
	btst.b #$2,($f602).w
	beq.s loc_204e6c
	bset.b #$0,$22(a0)
	sub.w d5,d0
	move.w d6,d1
	neg.w d1
	cmp.w d1,d0
	bgt.s loc_204e6c
	move.w d1,d0
loc_204e6c:
	btst.b #$3,($f602).w
	beq.s loc_204e82
	bclr.b #$0,$22(a0)
	add.w d5,d0
	cmp.w d6,d0
	blt.s loc_204e82
	move.w d6,d0
loc_204e82:
	move.w d0,$10(a0)
	cmpi.w #$60,($f73e).w
	beq.s loc_204e98
	bcc.s loc_204e94
	addq.w #$4,($f73e).w
loc_204e94:
	subq.w #$2,($f73e).w
loc_204e98:
	cmpi.w #$fc00,$12(a0)
	bcs.s loc_204ec6
	move.w $10(a0),d0
	move.w d0,d1
	asr.w #$5,d1
	beq.s loc_204ec6
	bmi.s loc_204eba
	sub.w d1,d0
	bcc.s loc_204eb4
	move.w #$0,d0
loc_204eb4:
	move.w d0,$10(a0)
	rts
loc_204eba:
	sub.w d1,d0
	bcs.s loc_204ec2
	move.w #$0,d0
loc_204ec2:
	move.w d0,$10(a0)
loc_204ec6:
	rts
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	bne.s loc_204ef6
	bsr.w sub_206f5e
	tst.w d1
	bpl.s loc_204ef6
	move.w #$0,$14(a0)
	move.w #$0,$10(a0)
	move.w #$0,$12(a0)
	move.b #$b,$1c(a0)
loc_204ef6:
	rts

sub_204ef8:
	move.l $8(a0),d1
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,d1
	swap d1
	move.w ($f728).w,d0
	addi.w #$10,d0
	cmp.w d1,d0
	bhi.s loc_204f4c
	move.w ($f72a).w,d0
	addi.w #$130,d0
	tst.b ($f7aa).w
	bne.s loc_204f26
	addi.w #$38,d0
loc_204f26:
	cmp.w d1,d0
	bls.s loc_204f4c
loc_204f2a:
	move.w ($f72e).w,d0
	addi.w #$e0,d0
	cmp.w $c(a0),d0
	blt.s loc_204f3a
	rts
loc_204f3a:
	cmpi.b #$2b,$1c(a0)
	bne.w sub_207392
	move.b #$6,$24(a0)
	rts
loc_204f4c:
	move.w d0,$8(a0)
	move.w #$0,$a(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	bra.s loc_204f2a

sub_204f64:
	tst.b ($f7ca).w
	bne.s loc_204f8a
	move.w $14(a0),d0
	bpl.s loc_204f72
	neg.w d0
loc_204f72:
	cmpi.w #$80,d0
	bcs.s loc_204f8a
	move.b ($f602).w,d0
	andi.b #$c,d0
	bne.s loc_204f8a
	btst.b #$1,($f602).w
	bne.s sub_204f8c
loc_204f8a:
	rts

sub_204f8c:
	btst.b #$2,$22(a0)
	beq.s loc_204f96
	bra.s loc_204fc6
loc_204f96:
	bset.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_204fb6
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_204fc6
loc_204fb6:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_204fc6:
	move.b #$2,$1c(a0)
	tst.w $14(a0)
	bmi.s loc_204fe0
	cmpi.w #$200,$14(a0)
	bcc.s loc_204fe0
	move.w #$200,$14(a0)
loc_204fe0:
	rts

sub_204fe2:
	tst.b $2a(a0)
	beq.s loc_204fea
	rts
loc_204fea:
	move.b ($f602).w,d0
	andi.b #$3,d0
	beq.s loc_204ffc
	tst.w $14(a0)
	beq.w loc_2050c2
loc_204ffc:
	move.b ($f603).w,d0
	andi.b #$70,d0
	beq.w loc_2050c2
	btst.b #$3,$22(a0)
	beq.s loc_205018
	jsr (sub_205cee).l
	beq.s loc_205048
loc_205018:
	moveq #$0,d0
	move.b $26(a0),d0
	addi.b #$80,d0
	bsr.w sub_206d8e
	cmpi.w #$6,d1
	blt.w loc_2050c2
	move.w #$680,d2
	btst.b #$6,$22(a0)
	beq.s loc_20503e
	move.w #$380,d2
loc_20503e:
	moveq #$0,d0
	move.b $26(a0),d0
	subi.b #$40,d0
loc_205048:
	jsr (sub_200792).l
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
	jsr (sub_20262a).l
	btst.b #$2,$22(a0)
	bne.s loc_2050c4
	tst.b ($ff195b).l
	beq.s loc_2050a6
	move.b #$8,$16(a0)
	move.b #$5,$17(a0)
	addq.w #$2,$c(a0)
	bra.s loc_2050b6
loc_2050a6:
	move.b #$e,$16(a0)
	move.b #$7,$17(a0)
	addq.w #$5,$c(a0)
loc_2050b6:
	bset.b #$2,$22(a0)
	move.b #$2,$1c(a0)
loc_2050c2:
	rts
loc_2050c4:
	bset.b #$4,$22(a0)
	rts

sub_2050cc:
	tst.b $3c(a0)
	beq.s loc_2050fe
	move.w #$fc00,d1
	btst.b #$6,$22(a0)
	beq.s loc_2050e2
	move.w #$fe00,d1
loc_2050e2:
	cmp.w $12(a0),d1
	ble.s loc_2050fc
	move.b ($f602).w,d0
	andi.b #$70,d0
	bne.s loc_2050fc
	move.b #$0,$2a(a0)
	move.w d1,$12(a0)
loc_2050fc:
	rts
loc_2050fe:
	cmpi.w #$f040,$12(a0)
	bge.s loc_20510c
	move.w #$f040,$12(a0)
loc_20510c:
	rts

sub_20510e:
	tst.b $2a(a0)
	bne.s loc_205148
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_205148
	move.b $26(a0),d0
	jsr (sub_200792).l
	muls.w #$20,d0
	asr.l #$8,d0
	tst.w $14(a0)
	beq.s loc_205148
	bmi.s loc_205144
	tst.w d0
	beq.s loc_205142
	add.w d0,$14(a0)
loc_205142:
	rts
loc_205144:
	add.w d0,$14(a0)
loc_205148:
	rts

sub_20514a:
	tst.b $2a(a0)
	bne.s loc_20518a
	move.b $26(a0),d0
	addi.b #$60,d0
	cmpi.b #$c0,d0
	bcc.s loc_20518a
	move.b $26(a0),d0
	jsr (sub_200792).l
	muls.w #$50,d0
	asr.l #$8,d0
	tst.w $14(a0)
	bmi.s loc_205180
	tst.w d0
	bpl.s loc_20517a
	asr.l #$2,d0
loc_20517a:
	add.w d0,$14(a0)
	rts
loc_205180:
	tst.w d0
	bmi.s loc_205186
	asr.l #$2,d0
loc_205186:
	add.w d0,$14(a0)
loc_20518a:
	rts

sub_20518c:
	nop
	tst.b $38(a0)
	bne.s loc_2051ce
	tst.w $3e(a0)
	bne.s loc_2051d0
	move.b $26(a0),d0
	addi.b #$20,d0
	andi.b #$c0,d0
	beq.s loc_2051ce
	move.w $14(a0),d0
	bpl.s loc_2051b0
	neg.w d0
loc_2051b0:
	cmpi.w #$280,d0
	bcc.s loc_2051ce
	clr.w $14(a0)
	nop
	nop
	nop
	nop
	bset.b #$1,$22(a0)
	move.w #$1e,$3e(a0)
loc_2051ce:
	rts
loc_2051d0:
	subq.w #$1,$3e(a0)
	rts

sub_2051d6:
	btst.b #$1,$2c(a0)
	bne.s loc_2051f8
	move.b $26(a0),d0
	beq.s loc_2051f8
	bpl.s loc_2051ee
	addq.b #$2,d0
	bcc.s loc_2051ec
	moveq #$0,d0
loc_2051ec:
	bra.s loc_2051f4
loc_2051ee:
	subq.b #$2,d0
	bcc.s loc_2051f4
	moveq #$0,d0
loc_2051f4:
	move.b d0,$26(a0)
loc_2051f8:
	rts

sub_2051fa:
	move.w $10(a0),d1
	move.w $12(a0),d2
	jsr (sub_200a2a).l
	move.b d0,($ff157c).l
	subi.b #$20,d0
	move.b d0,($ff157d).l
	andi.b #$c0,d0
	move.b d0,($ff157e).l
	cmpi.b #$40,d0
	beq.w loc_2052de
	cmpi.b #$80,d0
	beq.w loc_205340
	cmpi.b #$c0,d0
	beq.w loc_20539c
	bsr.w sub_2070a4
	tst.w d1
	bpl.s loc_20524c
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20524c:
	bsr.w sub_206f06
	tst.w d1
	bpl.s loc_20525e
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_20525e:
	bsr.w sub_206db6
	move.b d1,($ff157f).l
	tst.w d1
	bpl.s loc_2052dc
	move.b $12(a0),d2
	addq.b #$8,d2
	neg.b d2
	cmp.b d2,d1
	bge.s loc_20527c
	cmp.b d2,d0
	blt.s loc_2052dc
loc_20527c:
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2053fe
	move.b #$0,$1c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_2052ba
	move.b d3,d0
	addi.b #$10,d0
	andi.b #$20,d0
	beq.s loc_2052ac
	asr.w $12(a0)
	bra.s loc_2052ce
loc_2052ac:
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
	rts
loc_2052ba:
	move.w #$0,$10(a0)
	cmpi.w #$fc0,$12(a0)
	ble.s loc_2052ce
	move.w #$fc0,$12(a0)
loc_2052ce:
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_2052dc
	neg.w $14(a0)
loc_2052dc:
	rts
loc_2052de:
	bsr.w sub_2070a4
	tst.w d1
	bpl.s loc_2052f8
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2052f8:
	bsr.w sub_206f5e
	tst.w d1
	bpl.s loc_205312
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_205310
	move.w #$0,$12(a0)
loc_205310:
	rts
loc_205312:
	tst.w $12(a0)
	bmi.s loc_20533e
	bsr.w sub_206db6
	tst.w d1
	bpl.s loc_20533e
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2053fe
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_20533e:
	rts
loc_205340:
	bsr.w sub_2070a4
	tst.w d1
	bpl.s loc_205352
	sub.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205352:
	bsr.w sub_206f06
	tst.w d1
	bpl.s loc_205364
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
loc_205364:
	bsr.w sub_206f5e
	tst.w d1
	bpl.s loc_20539a
	sub.w d1,$c(a0)
	move.b d3,d0
	addi.b #$20,d0
	andi.b #$40,d0
	bne.s loc_205384
	move.w #$0,$12(a0)
	rts
loc_205384:
	move.b d3,$26(a0)
	bsr.w sub_205470
	move.w $12(a0),$14(a0)
	tst.b d3
	bpl.s loc_20539a
	neg.w $14(a0)
loc_20539a:
	rts
loc_20539c:
	bsr.w sub_206f06
	tst.w d1
	bpl.s loc_2053b6
	add.w d1,$8(a0)
	move.w #$0,$10(a0)
	move.w $12(a0),$14(a0)
	rts
loc_2053b6:
	bsr.w sub_206f5e
	tst.w d1
	bpl.s loc_2053d0
	sub.w d1,$c(a0)
	tst.w $12(a0)
	bpl.s loc_2053ce
	move.w #$0,$12(a0)
loc_2053ce:
	rts
loc_2053d0:
	tst.w $12(a0)
	bmi.s loc_2053fc
	bsr.w sub_206db6
	tst.w d1
	bpl.s loc_2053fc
	add.w d1,$c(a0)
	move.b d3,$26(a0)
	bsr.w sub_2053fe
	move.b #$0,$1c(a0)
	move.w #$0,$12(a0)
	move.w $10(a0),$14(a0)
loc_2053fc:
	rts

sub_2053fe:
	btst.b #$4,$22(a0)
	beq.s loc_205408
	nop
loc_205408:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	btst.b #$2,$22(a0)
	beq.s loc_205462
	bclr.b #$2,$22(a0)
	tst.b ($ff195b).l
	beq.s loc_205442
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	subq.w #$2,$c(a0)
	bra.s loc_205452
loc_205442:
	move.b #$13,$16(a0)
	move.b #$9,$17(a0)
	subq.w #$5,$c(a0)
loc_205452:
	move.b #$0,$1c(a0)
	move.w #$ab,d0
	jsr (sub_20262a).l
loc_205462:
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts

sub_205470:
	bclr.b #$5,$22(a0)
	bclr.b #$1,$22(a0)
	bclr.b #$4,$22(a0)
	move.b #$0,$3c(a0)
	move.w #$0,($f7d0).w
	rts
	.incbin 21648, 114
	bsr.w sub_20551a
	jsr (sub_203a8e).l
	bsr.w sub_20439a
	bsr.w sub_205758
	jmp (sub_203b46).l

sub_20551a:
	move.w ($f72e).w,d0
	addi.w #$100,d0
	cmp.w $c(a0),d0
	bcc.w loc_205588
	move.w #$ffc8,$12(a0)
	addq.b #$2,$24(a0)
	clr.b ($ff1510).l
	addq.b #$1,($ff150e).l
	subq.b #$1,($ff1508).l
	bpl.s loc_20554e
	clr.b ($ff1508).l
loc_20554e:
	cmpi.b #$2b,$1c(a0)
	beq.s loc_205568
	tst.b ($ff0f01).l
	beq.s loc_205568
	move.b #$0,($ff1508).l
	bra.s loc_205582
loc_205568:
	jsr (sub_207916).l
	move.b #$3b,$0(a1)
	move.w #$1e0,$3a(a0)
	tst.b ($ff1508).l
	beq.s loc_205588
loc_205582:
	move.w #$3c,$3a(a0)
loc_205588:
	rts
	tst.w $3a(a0)
	beq.w loc_20560c
	subq.w #$1,$3a(a0)
	bne.w loc_20560c
	move.w #$1,($ff1502).l
	jsr (sub_2025c2).l
	move.b #$1,($a01c3e).l
	jsr (sub_2025de).l
	bsr.w sub_207704
	clr.l ($ff1900).l
	tst.b ($ff158e).l
	bne.s loc_2055da
	cmpi.b #$1,($ff152e).l
	bne.s loc_2055da
	bclr.b #$1,($ff151c).l
loc_2055da:
	move.w #$e,d0
	tst.b ($ff1508).l
	beq.s loc_205608
	cmpi.b #$1,($ff152e).l
	bne.s loc_205602
	tst.b ($ff158e).l
	beq.s loc_205608
	move.b #$1,($ff1522).l
	bra.s loc_205608
loc_205602:
	clr.b ($ff1522).l
loc_205608:
	bra.w sub_205d68
loc_20560c:
	rts

sub_20560e:
	cmpi.b #$3,($ff1506).l
	beq.s loc_205636
	cmpi.b #$5,($ff1506).l
	beq.s loc_205636
	cmpi.b #$2,($ff1506).l
	beq.s loc_205636
	tst.b ($ff1506).l
	bne.w loc_2056f8
loc_205636:
	move.w $c(a0),d0
	lsr.w #$1,d0
	andi.w #$380,d0
	move.b $8(a0),d1
	andi.w #$7f,d1
	add.w d1,d0
	lea ($a000).w,a1
	move.b $0(a1,d0.w),d1
	cmp.b ($f7ae).w,d1
	bne.s loc_205674
	tst.b ($ff1506).l
	bne.w loc_2056fa
	move.w $c(a0),d0
	andi.w #$ff,d0
	cmpi.w #$90,d0
	bcc.w loc_2056fa
	bra.s loc_20567c
loc_205674:
	cmp.b ($f7af).w,d1
	beq.w loc_2056fa
loc_20567c:
	cmp.b ($f7ac).w,d1
	beq.s loc_2056ac
	cmp.b ($f7ad).w,d1
	beq.s loc_205690
	bclr.b #$6,$1(a0)
	rts
loc_205690:
	cmpi.b #$5,($ff1506).l
	beq.w loc_205712
	btst.b #$1,$22(a0)
	beq.s loc_2056ac
	bclr.b #$6,$1(a0)
	rts
loc_2056ac:
	move.w $8(a0),d2
	cmpi.b #$2c,d2
	bcc.s loc_2056be
	bclr.b #$6,$1(a0)
	rts
loc_2056be:
	cmpi.b #$e0,d2
	bcs.s loc_2056cc
	bset.b #$6,$1(a0)
	rts
loc_2056cc:
	btst.b #$6,$1(a0)
	bne.s loc_2056e8
	move.b $26(a0),d1
	beq.s loc_2056f8
	cmpi.b #$80,d1
	bhi.s loc_2056f8
	bset.b #$6,$1(a0)
	rts
loc_2056e8:
	move.b $26(a0),d1
	cmpi.b #$80,d1
	bls.s loc_2056f8
	bclr.b #$6,$1(a0)
loc_2056f8:
	rts
loc_2056fa:
	btst.b #$2,$22(a0)
	bne.s loc_20570c
	move.w #$9c,d0
	jsr (sub_20262a).l
loc_20570c:
	jmp (sub_204f8c).l
loc_205712:
	tst.w $12(a0)
	bmi.s loc_205756
	move.w $c(a0),d1
	andi.w #$ff,d1
	move.w $8(a0),d0
	andi.w #$ff,d0
	cmpi.w #$80,d0
	bcc.s loc_20574a
	cmpi.w #$38,d1
	bcs.s loc_205742
	cmpi.w #$80,d1
	bcs.s loc_205756
loc_20573a:
	bclr.b #$6,$1(a0)
	rts
loc_205742:
	bset.b #$6,$1(a0)
	rts
loc_20574a:
	cmpi.w #$38,d1
	bcs.s loc_20573a
	cmpi.w #$80,d1
	bcc.s loc_205742
loc_205756:
	rts

sub_205758:
	lea (dat_205a48).l,a1
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_20577a
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_20577a:
	bsr.w sub_2059ea
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),d0
	bmi.s loc_2057f2
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	subq.b #$1,$1e(a0)
	bpl.s loc_2057c0
	move.b d0,$1e(a0)

sub_2057a4:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	beq.s loc_2057b8
	bpl.s loc_2057b8
	cmpi.b #$fd,d0
	bge.s loc_2057c2
loc_2057b8:
	move.b d0,$1a(a0)
	addq.b #$1,$1b(a0)
loc_2057c0:
	rts
loc_2057c2:
	addq.b #$1,d0
	bne.s loc_2057d2
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_2057b8
loc_2057d2:
	addq.b #$1,d0
	bne.s loc_2057e6
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_2057b8
loc_2057e6:
	addq.b #$1,d0
	bne.s loc_2057f0
	move.b $2(a1,d1.w),$1c(a0)
loc_2057f0:
	rts
loc_2057f2:
	subq.b #$1,$1e(a0)
	bpl.s loc_2057c0
	addq.b #$1,d0
	bne.w loc_2058ac
	tst.b ($ff195b).l
	bne.w loc_205974
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_20581a
	not.b d0
loc_20581a:
	btst.b #$1,$2c(a0)
	bne.s loc_205828
	addi.b #$10,d0
	bra.s loc_20582a
loc_205828:
	addq.b #$8,d0
loc_20582a:
	bpl.s loc_20582e
	moveq #$3,d1
loc_20582e:
	andi.b #$fc,$1(a0)
	eor.b d1,d2
	or.b d2,$1(a0)
	btst.b #$5,$22(a0)
	bne.w loc_205920
	move.w $14(a0),d2
	bpl.s loc_20584c
	neg.w d2
loc_20584c:
	btst.b #$1,$2c(a0)
	beq.s loc_205864
	lsr.b #$4,d0
	lsl.b #$1,d0
	andi.b #$e,d0
	lea (dat_205c4a).l,a1
	bra.s loc_20588e
loc_205864:
	lsr.b #$4,d0
	andi.b #$6,d0
	lea (dat_205c24).l,a1
	cmpi.w #$a00,d2
	bcc.s loc_20588e
	lea (dat_205ac8).l,a1
	cmpi.w #$600,d2
	bcc.s loc_20588e
	lea (dat_205ac0).l,a1
	move.b d0,d1
	lsr.b #$1,d1
	add.b d1,d0
loc_20588e:
	add.b d0,d0
	move.b d0,d3
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_20589c
	moveq #$0,d2
loc_20589c:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bsr.w sub_2057a4
	add.b d3,$1a(a0)
	rts
loc_2058ac:
	addq.b #$1,d0
	bne.s loc_20591c
	move.w $14(a0),d2
	bpl.s loc_2058b8
	neg.w d2
loc_2058b8:
	lea (dat_205ba6).l,a1
	tst.b ($ff195b).l
	bne.s loc_2058f6
	lea (dat_205ad8).l,a1
	btst.b #$1,$2c(a0)
	beq.s loc_2058ea
	move.b $26(a0),d0
	addi.b #$10,d0
	andi.b #$c0,d0
	beq.s loc_2058f6
	lea (dat_205c52).l,a1
	bra.s loc_2058f6
loc_2058ea:
	cmpi.w #$600,d2
	bcc.s loc_2058f6
	lea (dat_205ad0).l,a1
loc_2058f6:
	neg.w d2
	addi.w #$400,d2
	bpl.s loc_205900
	moveq #$0,d2
loc_205900:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057a4
loc_20591c:
	addq.b #$1,d0
	bne.s loc_205960
loc_205920:
	move.w $14(a0),d2
	bmi.s loc_205928
	neg.w d2
loc_205928:
	addi.w #$800,d2
	bpl.s loc_205930
	moveq #$0,d2
loc_205930:
	lsr.w #$6,d2
	move.b d2,$1e(a0)
	lea (dat_205bb8).l,a1
	tst.b ($ff195b).l
	bne.s loc_20594a
	lea (dat_205ae0).l,a1
loc_20594a:
	move.b $22(a0),d1
	andi.b #$1,d1
	andi.b #$fc,$1(a0)
	or.b d1,$1(a0)
	bra.w sub_2057a4
loc_205960:
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),$1a(a0)
	move.b #$0,$1e(a0)
	rts
loc_205974:
	moveq #$0,d1
	move.b $26(a0),d0
	move.b $22(a0),d2
	andi.b #$1,d2
	bne.s loc_205986
	not.b d0
loc_205986:
	addi.b #$10,d0
	bpl.s loc_20598e
	moveq #$0,d1
loc_20598e:
	andi.b #$fc,$1(a0)
	or.b d2,$1(a0)
	addi.b #$30,d0
	cmpi.b #$60,d0
	bcs.s loc_2059bc
	bset.b #$2,$22(a0)
	move.b #$a,$16(a0)
	move.b #$5,$17(a0)
	move.b #$ff,d0
	bra.w loc_2058ac
loc_2059bc:
	move.w $14(a0),d2
	bpl.s loc_2059c4
	neg.w d2
loc_2059c4:
	lea (dat_205ba0).l,a1
	cmpi.w #$600,d2
	bcc.s loc_2059d6
	lea (dat_205b9a).l,a1
loc_2059d6:
	neg.w d2
	addi.w #$800,d2
	bpl.s loc_2059e0
	moveq #$0,d2
loc_2059e0:
	lsr.w #$8,d2
	move.b d2,$1e(a0)
	bra.w sub_2057a4

sub_2059ea:
	tst.b ($ff195b).l
	beq.s loc_2059f6
	move.b dat_2059f8(pc,d0.w),d0
loc_2059f6:
	rts
dat_2059f8:
	.incbin 23032, 80
dat_205a48:
	.incbin 23112, 120
dat_205ac0:
	dc.b $ff,$35,$36,$37,$38,$33,$34,$ff
dat_205ac8:
	dc.b $ff,$4b,$4c,$4d,$4e,$ff,$ff,$ff
dat_205ad0:
	dc.b $fe,$2d,$2e,$2f,$30,$31,$ff,$ff
dat_205ad8:
	dc.b $fe,$2d,$2e,$31,$2f,$30,$31,$ff
dat_205ae0:
	.incbin 23264, 186
dat_205b9a:
	dc.b $ff,$73,$74,$75,$74,$ff
dat_205ba0:
	dc.b $ff,$76,$77,$ff,$ff,$ff
dat_205ba6:
	.incbin 23462, 18
dat_205bb8:
	.incbin 23480, 108
dat_205c24:
	.incbin 23588, 38
dat_205c4a:
	dc.b $ff,$a6,$a7,$a8,$a9,$ff,$ff,$ff
dat_205c52:
	.incbin 23634, 56

sub_205c8a:
	tst.b (a0)
	beq.w loc_205cec
	lea ($f766).w,a2
	moveq #$0,d0
	move.b $1a(a0),d0
	cmp.b (a2),d0
	beq.s loc_205cec
	move.b d0,(a2)
	lea (dat_233a26).l,a2
	add.w d0,d0
	adda.w $0(a2,d0.w),a2
	moveq #$0,d1
	move.w (a2)+,d1
	subq.b #$1,d1
	bmi.s loc_205cec
	lea ($c800).w,a3
	move.b #$1,($f767).w
loc_205cbe:
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
loc_205cd8:
	movem.l (a1)+,d2-d6/a4-a6
	movem.l d2-d6/a4-a6,(a3)
	lea $20(a3),a3
	dbf d0,loc_205cd8
	dbf d1,loc_205cbe
loc_205cec:
	rts

sub_205cee:
	moveq #$0,d0
	move.b $3d(a0),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	movea.l d0,a1
	cmpi.b #$1e,$0(a1)
	bne.s loc_205d62
	move.w #$98,d0
	jsr (sub_20262a).l
	move.b #$1,$1c(a1)
	move.w $8(a1),d1
	move.w $c(a1),d2
	addi.w #$18,d2
	sub.w $8(a0),d1
	sub.w $c(a0),d2
	jsr (sub_200a2a).l
	moveq #$0,d2
	move.b $19(a1),d2
	move.w $8(a0),d3
	sub.w $8(a1),d3
	add.w d2,d3
	btst.b #$0,$22(a1)
	bne.s loc_205d50
	move.w #$40,d1
	sub.w d3,d1
	move.w d1,d3
loc_205d50:
	move.w #$f600,d2
	move.w d2,d1
	ext.l d1
	muls.w d3,d1
	divs.w #$40,d1
	add.w d1,d2
	moveq #$0,d1
loc_205d62:
	rts
loc_205d64:
	move.w #$e,d0

sub_205d68:
	cmpi.w #$67,d0
	bne.s loc_205d76
	move.b #$1,($ff1958).l
loc_205d76:
	move.w d0,($a12010).l
loc_205d7c:
	move.w ($a12020).l,d0
	beq.s loc_205d7c
	cmp.w ($a12020).l,d0
	bne.s loc_205d7c
	move.w #$0,($a12010).l
loc_205d94:
	move.w ($a12020).l,d0
	bne.s loc_205d94
	move.w ($a12020).l,d0
	bne.s loc_205d94
	rts
	dc.b $00,$00

sub_205da8:
	moveq #$0,d0
	move.b $1c(a0),d0
	cmp.b $1d(a0),d0
	beq.s loc_205dc4
	move.b d0,$1d(a0)
	move.b #$0,$1b(a0)
	move.b #$0,$1e(a0)
loc_205dc4:
	subq.b #$1,$1e(a0)
	bpl.s loc_205e04
	add.w d0,d0
	adda.w $0(a1,d0.w),a1
	move.b (a1),$1e(a0)
	moveq #$0,d1
	move.b $1b(a0),d1
	move.b $1(a1,d1.w),d0
	bmi.s loc_205e06
loc_205de0:
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
loc_205e04:
	rts
loc_205e06:
	addq.b #$1,d0
	bne.s loc_205e16
	move.b #$0,$1b(a0)
	move.b $1(a1),d0
	bra.s loc_205de0
loc_205e16:
	addq.b #$1,d0
	bne.s loc_205e2a
	move.b $2(a1,d1.w),d0
	sub.b d0,$1b(a0)
	sub.b d0,d1
	move.b $1(a1,d1.w),d0
	bra.s loc_205de0
loc_205e2a:
	addq.b #$1,d0
	bne.s loc_205e34
	move.b $2(a1,d1.w),$1c(a0)
loc_205e34:
	addq.b #$1,d0
	bne.s loc_205e3c
	addq.b #$2,$24(a0)
loc_205e3c:
	addq.b #$1,d0
	bne.s loc_205e4a
	move.b #$0,$1b(a0)
	clr.b $25(a0)
loc_205e4a:
	addq.b #$1,d0
	bne.s loc_205e52
	addq.b #$2,$25(a0)
loc_205e52:
	rts

sub_205e54:
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
	bcs.s loc_205eea
	move.l #$50000,d0
loc_205eea:
	move.l d0,($ff152a).l
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_205f0c(pc,d0.w),d0
	jsr dat_205f0c(pc,d0.w)
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_205f0c:
	dc.b $00,$08,$00,$c4,$00,$fa,$01,$4c
	addq.b #$2,$24(a0)
	move.l #$23f240,$4(a0)
	move.w #$6cb,$2(a0)
	move.b #$4,$1(a0)
	move.b #$8,$19(a0)
	move.b #$18,$16(a0)
	move.b #$4,$18(a0)
	move.b ($ff158e).l,d0
	cmp.b $28(a0),d0
	bcs.s loc_205f52
	move.b #$1,$2e(a0)
	bra.s loc_205f58
loc_205f52:
	move.b #$e3,$20(a0)
loc_205f58:
	jsr (sub_207916).l
	bne.s loc_205fca
	move.b #$13,$0(a1)
	addq.b #$4,$24(a1)
	tst.b $2e(a0)
	beq.s loc_205f74
	addq.b #$2,$24(a1)
loc_205f74:
	move.l #$23f240,$4(a1)
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
loc_205fca:
	jmp (sub_203bf2).l
	tst.b $2e(a0)
	bne.s loc_206004
	tst.b $21(a0)
	beq.s loc_206004
	clr.b $20(a0)
	move.b #$1,$2e(a0)
	move.b $28(a0),($ff158e).l
	move.b #$1,($ff1522).l
	bsr.w sub_205e54
	move.w #$ae,d0
	jmp (sub_20262a).l
loc_206004:
	rts
	tst.b $2e(a0)
	bne.s loc_20601c
	movea.l $30(a0),a1
	tst.b $2e(a1)
	beq.s loc_206056
	move.b #$1,$2e(a0)
loc_20601c:
	addq.b #$8,$34(a0)
	moveq #$0,d0
	move.b $34(a0),d0
	jsr (sub_200792).l
	muls.w #$8,d0
	lsr.l #$8,d0
	move.w $2a(a0),$8(a0)
	add.w d0,$8(a0)
	muls.w #$fff8,d1
	lsr.l #$8,d1
	move.w $2c(a0),$c(a0)
	add.w d1,$c(a0)
	tst.b $34(a0)
	bne.s loc_206056
	addq.b #$2,$24(a0)
loc_206056:
	rts
	dc.b $43,$f9,$00,$23,$f2,$3a,$60,$00
	dc.b $fd,$48
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_206070(pc,d0.w),d1
	jmp dat_206070(pc,d1.w)
dat_206070:
	.incbin 24688, 18
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_2060ca
	addq.b #$8,$24(a0)
	move.l #$2398be,$4(a0)
	ori.w #$48a,$2(a0)
	andi.w #$7f,d0
	move.b d0,$33(a0)
	bra.w loc_20622e
loc_2060ca:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	lea (dat_206430).l,a1
	jsr (sub_205da8).l
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_206104
	move.b #$6,$24(a0)
	addq.b #$7,$1c(a0)
	cmpi.b #$d,$1c(a0)
	beq.s loc_206148
	bra.s loc_206148
loc_206104:
	tst.b ($f7c7).w
	beq.s loc_20610e
	addq.w #$4,$30(a0)
loc_20610e:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23f13a).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	bsr.s sub_20619c
	jsr (sub_203af0).l
	tst.b $1(a0)
	bpl.s loc_206142
	jmp (sub_203b46).l
loc_206142:
	jmp (sub_203bf2).l
loc_206148:
	bsr.s sub_20619c
	lea (dat_206430).l,a1
	jsr (sub_205da8).l
	jmp (sub_203b46).l
	jmp (sub_203bf2).l
	cmpi.w #$c,($ff150a).l
	bhi.s loc_206196
	subq.w #$1,$38(a0)
	bne.s loc_20617e
	move.b #$e,$24(a0)
	addq.b #$7,$1c(a0)
	bra.s loc_206148
loc_20617e:
	lea (dat_206430).l,a1
	jsr (sub_205da8).l
	tst.b $1(a0)
	bpl.s loc_206196
	jmp (sub_203b46).l
loc_206196:
	jmp (sub_203bf2).l

sub_20619c:
	tst.w $38(a0)
	beq.s loc_2061e6
	subq.w #$1,$38(a0)
	bne.s loc_2061e6
	cmpi.b #$7,$1c(a0)
	bcc.s loc_2061e6
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
loc_2061e6:
	rts

sub_2061e8:
	cmpi.w #$c,($ff150a).l
	bhi.s loc_206220
	move.w #$82,d0
	cmpi.w #$103,($ff1506).l
	bne.s loc_206204
	move.w #$86,d0
loc_206204:
	tst.b ($ff151f).l
	beq.s loc_206210
	move.w #$87,d0
loc_206210:
	tst.b ($f7aa).w
	beq.s loc_20621a
	move.w #$8c,d0
loc_20621a:
	jsr (sub_202628).l
loc_206220:
	move.w #$1e,($ff150a).l
	clr.b ($d1f2).w
	rts
loc_20622e:
	tst.w $2c(a0)
	bne.w loc_20631e
	cmpi.b #$6,($d024).w
	bcc.w loc_20642e
	btst.b #$6,($d022).w
	beq.w loc_20642e
	subq.w #$1,$38(a0)
	bpl.w loc_206344
	move.w #$3b,$38(a0)
	move.w #$1,$36(a0)
	jsr (sub_202418).l
	andi.w #$1,d0
	move.b d0,$34(a0)
	move.w ($ff150a).l,d0
	cmpi.w #$19,d0
	beq.s loc_2062b0
	cmpi.w #$14,d0
	beq.s loc_2062b0
	cmpi.w #$f,d0
	beq.s loc_2062b0
	cmpi.w #$c,d0
	bhi.s loc_2062b0
	btst.b #$5,($ff1505).l
	bne.s loc_20629e
	move.w #$df,d0
	jsr (sub_20262a).l
loc_20629e:
	subq.b #$1,$32(a0)
	bpl.s loc_2062b0
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_2062b0:
	subq.w #$1,($ff150a).l
	bcc.w loc_206342
	bsr.w sub_2061e8
	move.b #$81,($d02c).w
	move.w #$b6,d0
	jsr (sub_20262a).l
	move.b #$a,$34(a0)
	move.w #$1,$36(a0)
	move.w #$78,$2c(a0)
	move.l a0,-(a7)
	lea ($d000).w,a0
	bsr.w sub_2053fe
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
loc_20631e:
	subq.w #$1,$2c(a0)
	bne.s loc_20632c
	move.b #$6,($d024).w
	rts
loc_20632c:
	move.l a0,-(a7)
	lea ($d000).w,a0
	jsr (sub_203af0).l
	addi.w #$10,$12(a0)
	movea.l (a7)+,a0
	bra.s loc_206344
loc_206342:
	bra.s loc_206354
loc_206344:
	tst.w $36(a0)
	beq.w loc_20642e
	subq.w #$1,$3a(a0)
	bpl.w loc_20642e
loc_206354:
	jsr (sub_202418).l
	andi.w #$f,d0
	move.w d0,$3a(a0)
	jsr (sub_207916).l
	bne.w loc_20642e
	move.b #$21,$0(a1)
	move.w ($d008).w,$8(a1)
	moveq #$6,d0
	btst.b #$0,($d022).w
	beq.s loc_20638a
	neg.w d0
	move.b #$40,$26(a1)
loc_20638a:
	add.w d0,$8(a1)
	move.w ($d00c).w,$c(a1)
	move.b #$6,$28(a1)
	tst.w $2c(a0)
	beq.w loc_2063d8
	andi.w #$7,$3a(a0)
	addi.w #$0,$3a(a0)
	move.w ($d00c).w,d0
	subi.w #$c,d0
	move.w d0,$c(a1)
	jsr (sub_202418).l
	move.b d0,$26(a1)
	move.w ($ff1504).l,d0
	andi.b #$3,d0
	bne.s loc_206424
	move.b #$e,$28(a1)
	bra.s loc_206424
loc_2063d8:
	btst.b #$7,$36(a0)
	beq.s loc_206424
	move.w #$2000,$2(a1)
	move.w ($ff150a).l,d2
	lsr.w #$1,d2
	jsr (sub_202418).l
	andi.w #$3,d0
	bne.s loc_20640c
	bset.b #$6,$36(a0)
	bne.s loc_206424
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_20640c:
	tst.b $34(a0)
	bne.s loc_206424
	bset.b #$6,$36(a0)
	bne.s loc_206424
	move.b d2,$28(a1)
	move.w #$1c,$38(a1)
loc_206424:
	subq.b #$1,$34(a0)
	bpl.s loc_20642e
	clr.w $36(a0)
loc_20642e:
	rts
dat_206430:
	.incbin 25648, 202
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20650a(pc,d0.w),d0
	jmp dat_20650a(pc,d0.w)
dat_20650a:
	.incbin 25866, 414
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2066b6(pc,d0.w),d0
	jmp dat_2066b6(pc,d0.w)
dat_2066b6:
	dc.b $00,$06,$00,$42,$00,$5c
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.l #$23efe6,$4(a0)
	move.w #$298,$2(a0)
	move.b $28(a0),$1c(a0)
	moveq #$d,d0
	move.w #$a2,d0
	cmpi.b #$2,$28(a0)
	bcs.s loc_2066f2
	move.w #$a1,d0
loc_2066f2:
	jsr (sub_20262a).l
	move.w ($f646).w,$c(a0)
	addq.w #$4,$c(a0)
	lea (dat_23efce).l,a1
	bsr.w sub_205da8
	jmp (sub_203b46).l
	jmp (sub_203bf2).l
	.incbin 26392, 316
loc_206854:
	bclr.b #$7,($ff156b).l
	beq.s loc_2068a2
	moveq #$0,d0
	move.b ($ff156b).l,d0
	subq.b #$2,d0
	add.w d0,d0
	movea.l dat_2068a4(pc,d0.w),a1
	lea ($ff1980).l,a2
	move.w #$ff,d0
loc_206878:
	move.l (a1)+,(a2)+
	dbf d0,loc_206878
	lea ($c00004).l,a5
	move.l #$94029340,(a5)
	dc.b $2a,$bc

sub_20688c:
	sub.l a4,d3
	suba.l d0,a2
	move.w #$977f,(a5)
	move.w #$6880,(a5)
	move.w #$82,($f640).w
	move.w ($f640).w,(a5)
loc_2068a2:
	rts
dat_2068a4:
	.incbin 26788, 20
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2068cc(pc,d0.w),d0
	jsr dat_2068cc(pc,d0.w)
	jmp (sub_203b46).l
dat_2068cc:
	dc.b $00,$04,$00,$1c
	ori.b #$4,$1(a0)
	move.w #$8280,$2(a0)
	move.l #$20695c,$4(a0)
	addq.b #$2,$24(a0)
	move.w ($f700).w,d0
	addi.w #$a0,d0
	moveq #$0,d1
	move.b $2a(a0),d1
	addq.b #$1,d1
	cmpi.b #$2,d1
	bcs.s loc_206900
	moveq #$0,d1
loc_206900:
	move.b d1,$2a(a0)
	move.b dat_206926(pc,d1.w),d1
	ext.w d1
	add.w d1,d0
	move.w d0,$8(a0)
	move.w ($f646).w,$c(a0)
	addq.w #$2,$c(a0)
	lea (dat_206928).l,a1
	jmp (sub_205da8).l
dat_206926:
	dc.b $a0,$60
dat_206928:
	.incbin 26920, 564

sub_206b5c:
	rts
loc_206b5e:
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
	bne.s loc_206c18
	move.b ($ff1593).l,($ff195b).l
loc_206c18:
	tst.b ($ff1522).l
	bpl.s loc_206c2e
	move.w ($ff1548).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206c2e:
	rts

sub_206c30:
	lea ($d000).w,a6
	cmpi.b #$2,($ff1522).l
	beq.w loc_206b5e
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
	bne.s loc_206cea
	move.b ($ff1591).l,($ff195b).l
loc_206cea:
	cmpi.b #$2,($ff1506).l
	bne.s loc_206d0c
	move.w ($ff1542).l,($f648).w
	move.b ($ff1543).l,($f64d).w
	move.b ($ff1544).l,($f64e).w
loc_206d0c:
	tst.b ($ff1522).l
	bpl.s loc_206d22
	move.w ($ff1524).l,d0
	subi.w #$a0,d0
	move.w d0,($f728).w
loc_206d22:
	rts

sub_206d24:
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
	bpl.s loc_206d60
	move.b d1,d0
	bpl.s loc_206d5a
	subq.b #$1,d0
loc_206d5a:
	addi.b #$20,d0
	bra.s loc_206d6a
loc_206d60:
	move.b d1,d0
	bpl.s loc_206d66
	addq.b #$1,d0
loc_206d66:
	addi.b #$1f,d0
loc_206d6a:
	andi.b #$c0,d0
	beq.w loc_206e3a
	cmpi.b #$80,d0
	beq.w loc_206fd6
	andi.b #$38,d1
	bne.s loc_206d82
	addq.w #$8,d2
loc_206d82:
	cmpi.b #$40,d0
	beq.w loc_2070ac
	bra.w loc_206f0e

sub_206d8e:
	move.b d0,($f768).w
	move.b d0,($f76a).w
	addi.b #$20,d0
	andi.b #$c0,d0
	cmpi.b #$40,d0
	beq.w loc_207034
	cmpi.b #$80,d0
	beq.w sub_206f5e
	cmpi.b #$c0,d0
	beq.w loc_206e9e

sub_206db6:
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
	jsr (sub_2010e8).l
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
	jsr (sub_2010e8).l
	move.w (a7)+,d0
	move.b #$0,d2
loc_206e1a:
	move.b ($f76a).w,d3
	cmp.w d0,d1
	ble.s loc_206e28
	move.b ($f768).w,d3
	exg d0,d1
loc_206e28:
	btst.l #$0,d3
	beq.s loc_206e30
	move.b d2,d3
loc_206e30:
	rts
	dc.b $34,$28,$00,$0c,$36,$28,$00,$08
loc_206e3a:
	addi.w #$a,d2
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_2010e8).l
	move.b #$0,d2
loc_206e56:
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e62
	move.b d2,d3
loc_206e62:
	rts

sub_206e64:
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
	jsr (sub_2010e8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206e9c
	move.b #$0,d3
loc_206e9c:
	rts
loc_206e9e:
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
	jsr (sub_201258).l
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
	jsr (sub_201258).l
	move.w (a7)+,d0
	move.b #$c0,d2
	bra.w loc_206e1a

sub_206f06:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206f0e:
	addi.w #$a,d3
	lea ($f768).w,a4
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201258).l
	move.b #$c0,d2
	bra.w loc_206e56
loc_206f2e:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$10,a3
	move.w #$0,d6
	moveq #$e,d5
	jsr (sub_201258).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_206f5c
	move.b #$c0,d3
loc_206f5c:
	rts

sub_206f5e:
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
	jsr (sub_2010e8).l
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
	jsr (sub_2010e8).l
	move.w (a7)+,d0
	move.b #$80,d2
	bra.w loc_206e1a

sub_206fce:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_206fd6:
	subi.w #$a,d2
	eori.w #$f,d2
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$1000,d6
	moveq #$e,d5
	jsr (sub_2010e8).l
	move.b #$80,d2
	bra.w loc_206e56
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
	jsr (sub_2010e8).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_207032
	move.b #$80,d3
loc_207032:
	rts
loc_207034:
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
	jsr (sub_201258).l
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
	jsr (sub_201258).l
	move.w (a7)+,d0
	move.b #$40,d2
	bra.w loc_206e1a

sub_2070a4:
	move.w $c(a0),d2
	move.w $8(a0),d3
loc_2070ac:
	subi.w #$a,d3
	eori.w #$f,d3
	lea ($f768).w,a4
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201258).l
	move.b #$40,d2
	bra.w loc_206e56
loc_2070d0:
	add.w $8(a0),d3
	move.w $c(a0),d2
	lea ($f768).w,a4
	move.b #$0,(a4)
	movea.w #$fff0,a3
	move.w #$800,d6
	moveq #$e,d5
	jsr (sub_201258).l
	move.b ($f768).w,d3
	btst.l #$0,d3
	beq.s loc_2070fe
	move.b #$40,d3
loc_2070fe:
	rts

sub_207100:
	nop
	move.w $8(a0),d2
	move.w $c(a0),d3
	subq.w #$8,d2
	moveq #$0,d5
	move.b $16(a0),d5
	subq.b #$3,d5
	sub.w d5,d3
	cmpi.b #$39,$1a(a0)
	bne.s loc_207124
	addi.w #$c,d3
	moveq #$a,d5
loc_207124:
	move.w #$10,d4
	add.w d5,d5
	lea ($d800).w,a1
	move.w #$5f,d6
loc_207132:
	tst.b $1(a1)
	bpl.s loc_20713e
	move.b $20(a1),d0
	bne.s loc_20714a
loc_20713e:
	lea $40(a1),a1
	dbf d6,loc_207132
	moveq #$0,d0
	rts
loc_20714a:
	andi.w #$3f,d0
	add.w d0,d0
	lea (dat_2074d8).l,a2
	lea -$2(a2,d0.w),a2
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $8(a1),d0
	sub.w d1,d0
	sub.w d2,d0
	bcc.s loc_207172
	add.w d1,d1
	add.w d1,d0
	bcs.s loc_207178
	bra.w loc_20713e
loc_207172:
	cmp.w d4,d0
	bhi.w loc_20713e
loc_207178:
	moveq #$0,d1
	move.b (a2)+,d1
	move.w $c(a1),d0
	sub.w d1,d0
	sub.w d3,d0
	bcc.s loc_207190
	add.w d1,d1
	add.w d0,d1
	bcs.s loc_207196
	bra.w loc_20713e
loc_207190:
	cmp.w d5,d0
	bhi.w loc_20713e
loc_207196:
	move.b $20(a1),d1
	andi.b #$c0,d1
	beq.w sub_20720a
	cmpi.b #$c0,d1
	beq.w loc_2073ea
	tst.b d1
	bmi.w sub_2072d4
	move.b $20(a1),d0
	andi.b #$3f,d0
	cmpi.b #$6,d0
	beq.s loc_2071ce
	cmpi.w #$5a,$30(a0)
	bcc.w loc_2071cc
	addq.b #$2,$24(a1)
loc_2071cc:
	rts
loc_2071ce:
	tst.w $12(a0)
	bpl.s loc_2071f8
	move.w $c(a0),d0
	subi.w #$10,d0
	cmp.w $c(a1),d0
	bcs.s loc_207208
	neg.w $12(a0)
	move.w #$fe80,$12(a1)
	tst.b $25(a1)
	bne.s loc_207208
	addq.b #$4,$25(a1)
	rts
loc_2071f8:
	cmpi.b #$2,$1c(a0)
	bne.s loc_207208
	neg.w $12(a0)
	addq.b #$2,$24(a1)
loc_207208:
	rts

sub_20720a:
	tst.b ($ff1521).l
	bne.s loc_207224
	tst.b ($ff151f).l
	bne.s loc_207224
	cmpi.b #$2,$1c(a0)
	bne.w sub_2072d4
loc_207224:
	tst.b $21(a1)
	beq.s loc_20724e
	neg.w $10(a0)
	neg.w $12(a0)
	asr.w $10(a0)
	asr.w $12(a0)
	move.b #$0,$20(a1)
	subq.b #$1,$21(a1)
	bne.s loc_20724c
	bset.b #$7,$22(a1)
loc_20724c:
	rts
loc_20724e:
	bset.b #$7,$22(a1)
	moveq #$0,d0
	move.w ($f7d0).w,d0
	addq.w #$2,($f7d0).w
	cmpi.w #$6,d0
	bcs.s loc_207266
	moveq #$6,d0
loc_207266:
	move.w d0,$3e(a1)
	move.w dat_2072c6(pc,d0.w),d0
	cmpi.w #$20,($f7d0).w
	bcs.s loc_207280
	move.w #$3e8,d0
	move.w #$a,$3e(a1)
loc_207280:
	bsr.w sub_20a278
	move.w #$96,d0
	jsr (sub_20262a).l
	move.b #$18,$0(a1)
	move.b #$0,$24(a1)
	move.b #$1,$28(a1)
	tst.w $12(a0)
	bmi.s loc_2072b6
	move.w $c(a0),d0
	cmp.w $c(a1),d0
	bcc.s loc_2072be
	neg.w $12(a0)
	rts
loc_2072b6:
	addi.w #$100,$12(a0)
	rts
loc_2072be:
	subi.w #$100,$12(a0)
	rts
dat_2072c6:
	dc.b $00,$0a,$00,$14,$00,$32,$00,$64
	dc.b $08,$e9,$00,$07,$00,$22

sub_2072d4:
	tst.b ($ff1521).l
	bne.s loc_2072e4
	tst.b ($ff151f).l
	beq.s loc_2072e8
loc_2072e4:
	moveq #$ffffffff,d0
	rts
loc_2072e8:
	nop
	tst.w $30(a0)
	bne.s loc_2072e4
	movea.l a1,a2

sub_2072f2:
	tst.b ($ff151e).l
	bne.s loc_20731e
	tst.w ($ff1512).l
	beq.w loc_207388
	jsr (sub_207916).l
	bne.s loc_20731e
	move.b #$11,$0(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20731e:
	clr.b $2a(a0)
	bclr.b #$0,($ff151e).l
	bne.s loc_207334
	move.b #$0,($ff156f).l
loc_207334:
	move.b #$4,$24(a0)
	bsr.w sub_2053fe
	bset.b #$1,$22(a0)
	move.w #$fc00,$12(a0)
	move.w #$fe00,$10(a0)
	btst.b #$6,$22(a0)
	beq.s loc_207364
	move.w #$fe00,$12(a0)
	move.w #$ff00,$10(a0)
loc_207364:
	move.w $8(a0),d0
	cmp.w $8(a2),d0
	bcs.s loc_207372
	neg.w $10(a0)
loc_207372:
	move.w #$0,$14(a0)
	move.b #$1a,$1c(a0)
	move.w #$78,$30(a0)
	moveq #$ffffffff,d0
	rts
loc_207388:
	tst.w ($ff1588).l
	bne.w loc_20731e

sub_207392:
	tst.w ($ff1906).l
	bne.s loc_2073e6
	move.b #$0,($ff151f).l
	move.b #$6,$24(a0)
	bsr.w sub_2053fe
	bset.b #$1,$22(a0)
	move.w #$f900,$12(a0)
	move.w #$0,$10(a0)
	move.w #$0,$14(a0)
	move.w $c(a0),$38(a0)
	move.b #$18,$1c(a0)
	bset.b #$7,$2(a0)
	move.b #$0,$18(a0)
	move.w #$93,d0
	jsr (sub_20262a).l
loc_2073e6:
	moveq #$ffffffff,d0
	rts
loc_2073ea:
	move.b $20(a1),d1
	andi.b #$3f,d1
	cmpi.b #$1f,d1
	beq.w loc_207472
	cmpi.b #$23,d1
	beq.w loc_207472
	cmpi.b #$33,d1
	beq.w loc_2074ca
	cmpi.b #$3a,d1
	beq.w loc_2074ca
	cmpi.b #$3b,d1
	beq.w loc_2074ca
	tst.b ($f7aa).w
	beq.w loc_207470
	cmpi.b #$1,($f7aa).w
	beq.s loc_20743a
	cmpi.b #$4,($f7aa).w
	beq.s loc_20745c
	cmpi.b #$5,($f7aa).w
	beq.s loc_20746a
loc_20743a:
	cmpi.b #$3c,d1
	blt.s loc_207470
	cmpi.b #$3f,d1
	bgt.s loc_207470
	bsr.w sub_20720a
	tst.b $20(a1)
	bne.s loc_207454
	addq.b #$3,$21(a1)
loc_207454:
	clr.b $20(a1)
	bra.w loc_207472
loc_20745c:
	cmpi.b #$3f,d1
	beq.s loc_20747e
	cmpi.b #$3e,d1
	beq.s loc_207478
	bra.s loc_207470
loc_20746a:
	cmpi.b #$3d,d1
	beq.s loc_207478
loc_207470:
	rts
loc_207472:
	addq.b #$1,$21(a1)
	rts
loc_207478:
	bsr.w sub_2072d4
	bra.s loc_207472
loc_20747e:
	move.b $22(a0),d0
	andi.b #$14,d0
	beq.s loc_2074c8
	bclr.b #$2,$22(a0)
	bclr.b #$4,$22(a0)
	clr.b $20(a1)
	move.b #$15,$1c(a0)
	move.w #$ad,d0
	jsr (sub_20262a).l
	jsr (sub_2061e8).l
	move.w #$400,$12(a0)
	move.w #$fe00,$10(a0)
	move.w $8(a0),d0
	cmp.w $8(a1),d0
	bcs.s loc_2074c8
	neg.w $10(a0)
loc_2074c8:
	rts
loc_2074ca:
	cmpi.b #$2,$1c(a0)
	bne.s loc_2074d6
	addq.b #$1,$21(a1)
loc_2074d6:
	rts
dat_2074d8:
	.incbin 29912, 126
loc_207556:
	move.b ($f604).w,d0
	andi.b #$f,d0
	bne.s loc_20756c
	move.l #$4000,(dat_2076e6).l
	bra.s loc_20758c
loc_20756c:
	addi.l #$2000,(dat_2076e6).l
	cmpi.l #$80000,(dat_2076e6).l
	bls.s loc_20758c
	move.l #$80000,(dat_2076e6).l
loc_20758c:
	move.l (dat_2076e6).l,d0
	btst.b #$0,($f604).w
	beq.s loc_20759e
	sub.l d0,$c(a0)
loc_20759e:
	btst.b #$1,($f604).w
	beq.s loc_2075aa
	add.l d0,$c(a0)
loc_2075aa:
	btst.b #$2,($f604).w
	beq.s loc_2075b6
	sub.l d0,$8(a0)
loc_2075b6:
	btst.b #$3,($f604).w
	beq.s loc_2075c2
	add.l d0,$8(a0)
loc_2075c2:
	move.w $c(a0),d2
	move.b $16(a0),d0
	ext.w d0
	add.w d0,d2
	move.w $8(a0),d3
	jsr (sub_200f00).l
	move.w (a1),($ff194e).l
	lea (dat_2076ea).l,a2
	btst.b #$6,($f605).w
	beq.s loc_207604
	moveq #$0,d1
	move.b ($ff1904).l,d1
	addq.b #$1,d1
	cmp.b (a2),d1
	bcs.s loc_2075fe
	move.b #$0,d1
loc_2075fe:
	move.b d1,($ff1904).l
loc_207604:
	btst.b #$7,($f605).w
	beq.s loc_207624
	moveq #$0,d1
	move.b ($ff1904).l,d1
	subq.b #$1,d1
	cmpi.b #$ff,d1
	bne.s loc_20761e
	add.b (a2),d1
loc_20761e:
	move.b d1,($ff1904).l
loc_207624:
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
	beq.s loc_2076b0
	bsr.w sub_207916
	bne.s loc_2076b0
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
loc_2076b0:
	btst.b #$4,($f605).w
	beq.s loc_2076e0
	move.b #$0,($ff1906).l
	move.l #$232c80,$4(a0)
	move.w #$780,$2(a0)
	move.b #$2,$18(a0)
	move.b #$0,$1a(a0)
	move.b #$4,$1(a0)
loc_2076e0:
	jmp (sub_203b46).l
dat_2076e6:
	dc.b $00,$00,$40,$00
dat_2076ea:
	.incbin 30442, 26

sub_207704:
	lea ($ff1200).l,a2
	move.w #$101,(a2)+
	move.w #$be,d0
loc_207712:
	clr.l (a2)+
	dbf d0,loc_207712
	rts

sub_20771a:
	moveq #$0,d0
	move.b ($f76c).w,d0
	move.w dat_207728(pc,d0.w),d0
	jmp dat_207728(pc,d0.w)
dat_207728:
	dc.b $00,$04,$00,$82
	addq.b #$2,($f76c).w
	lea (dat_2079c8).l,a0
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
	bcc.s loc_207766
	moveq #$0,d6
loc_207766:
	andi.w #$ff80,d6
	movea.l ($f770).w,a0
loc_20776e:
	cmp.w (a0),d6
	bls.s loc_207780
	tst.b $4(a0)
	bpl.s loc_20777c
	move.b (a2),d2
	addq.b #$1,(a2)
loc_20777c:
	addq.w #$8,a0
	bra.s loc_20776e
loc_207780:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_2077a0
loc_20778e:
	cmp.w (a0),d6
	bls.s loc_2077a0
	tst.b $4(a0)
	bpl.s loc_20779c
	addq.b #$1,$1(a2)
loc_20779c:
	addq.w #$8,a0
	bra.s loc_20778e
loc_2077a0:
	move.l a0,($f774).w
	move.w #$ffff,($f76e).w
	lea ($ff1200).l,a2
	moveq #$0,d2
	move.w ($f700).w,d6
	andi.w #$ff80,d6
	cmp.w ($f76e).w,d6
	beq.w loc_20788a
	bge.s loc_207830
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f774).w,a0
	subi.w #$80,d6
	bcs.s loc_20780c
loc_2077da:
	cmp.w -$8(a0),d6
	bge.s loc_20780c
	subq.w #$8,a0
	tst.b $4(a0)
	bpl.s loc_2077f0
	subq.b #$1,$1(a2)
	move.b $1(a2),d2
loc_2077f0:
	bsr.w sub_2078ae
	bne.s loc_2077fa
	subq.w #$8,a0
	bra.s loc_2077da
loc_2077fa:
	tst.b $4(a0)
	bpl.s loc_20780a
	addq.b #$1,$1(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_20780a:
	addq.w #$8,a0
loc_20780c:
	move.l a0,($f774).w
	movea.l ($f770).w,a0
	addi.w #$300,d6
loc_207818:
	cmp.w -$8(a0),d6
	bgt.s loc_20782a
	tst.b -$4(a0)
	bpl.s loc_207826
	subq.b #$1,(a2)
loc_207826:
	subq.w #$8,a0
	bra.s loc_207818
loc_20782a:
	move.l a0,($f770).w
	rts
loc_207830:
	nop
	nop
	nop
	nop
	move.w d6,($f76e).w
	movea.l ($f770).w,a0
	addi.w #$280,d6
loc_207844:
	cmp.w (a0),d6
	bls.s loc_207866
	tst.b $4(a0)
	bpl.s loc_207852
	move.b (a2),d2
	addq.b #$1,(a2)
loc_207852:
	bsr.w sub_2078ae
	beq.s loc_207844
	tst.b $4(a0)
	bpl.s loc_207866
	subq.b #$1,(a2)
	bclr.b #$7,$2(a2,d3.w)
loc_207866:
	move.l a0,($f770).w
	movea.l ($f774).w,a0
	subi.w #$300,d6
	bcs.s loc_207886
loc_207874:
	cmp.w (a0),d6
	bls.s loc_207886
	tst.b $4(a0)
	bpl.s loc_207882
	addq.b #$1,$1(a2)
loc_207882:
	addq.w #$8,a0
	bra.s loc_207874
loc_207886:
	move.l a0,($f774).w
loc_20788a:
	rts

sub_20788c:
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

sub_2078ae:
	bsr.s sub_20788c
	beq.s loc_2078c0
	tst.b $4(a0)
	bpl.s loc_2078c6
	bset.b #$7,$2(a2,d3.w)
	beq.s loc_2078c6
loc_2078c0:
	addq.w #$8,a0
	moveq #$0,d0
	rts
loc_2078c6:
	bsr.w sub_207916
	bne.s loc_207914
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
	bpl.s loc_2078f6
	andi.b #$7f,d0
	move.b d2,$23(a1)
loc_2078f6:
	move.b d0,$0(a1)
	cmpi.b #$31,d0
	bne.s loc_207908
	nop
	nop
	nop
	nop
loc_207908:
	move.b (a0)+,$28(a1)
	move.b (a0)+,d0
	move.b (a0)+,$29(a1)
	moveq #$0,d0
loc_207914:
	rts

sub_207916:
	lea ($d800).w,a1
	move.w #$5f,d0
loc_20791e:
	tst.b (a1)
	beq.s loc_20792a
	lea $40(a1),a1
	dbf d0,loc_20791e
loc_20792a:
	rts

sub_20792c:
	movea.l a0,a1
	lea $40(a1),a1
	move.w #$f000,d0
	sub.w a0,d0
	lsr.w #$6,d0
	subq.w #$2,d0
	bcs.s loc_20794a
loc_20793e:
	tst.b (a1)
	beq.s loc_20794a
	lea $40(a1),a1
	dbf d0,loc_20793e
loc_20794a:
	rts

sub_20794c:
	move.w $8(a0),d0
loc_207950:
	tst.b $1(a0)
	bmi.s loc_2079ba
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_2079ba
loc_20796e:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_2079b0
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_2079a8
loc_207990:
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_2079a0
	moveq #$0,d1
	bra.s loc_2079a8
loc_2079a0:
	cmpi.w #$3,d1
	bcs.s loc_2079a8
	moveq #$2,d1
loc_2079a8:
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_2079b0:
	jsr (sub_203bf2).l
	moveq #$1,d0
	rts
loc_2079ba:
	btst.b #$7,($ff152e).l
	bne.s loc_20796e
	moveq #$0,d0
	rts
dat_2079c8:
	.incbin 31176, 3434

sub_208732:
	btst.b #$3,$22(a0)
	beq.s loc_2087a2
	btst.b #$3,$22(a1)
	beq.s loc_2087a2
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	bne.s loc_2087a2
	tst.b $2a(a1)
	beq.s loc_208764
	move.w #$ab,d0
	jsr (sub_20262a).l
loc_208764:
	clr.b $38(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	bclr.b #$3,$22(a0)
	btst.b #$6,$2c(a1)
	bne.s loc_208790
	cmpi.b #$17,$1c(a1)
	beq.s loc_208790
	bclr.b #$0,$2c(a1)
loc_208790:
	clr.b $3d(a1)
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2087a2
	bclr.b #$1,$22(a1)
loc_2087a2:
	rts

sub_2087a4:
	cmpi.b #$4,$24(a1)
	bne.s loc_2087b6
	subq.b #$2,$24(a1)
	move.w #$78,$30(a1)
loc_2087b6:
	clr.b $25(a0)
	clr.b $3c(a1)
	bset.b #$3,$22(a0)
	bne.s loc_208816
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2087d8
	bclr.b #$3,$22(a0)
	bra.w sub_208732
loc_2087d8:
	bclr.b #$4,$22(a1)
	bclr.b #$2,$22(a1)
	beq.s loc_208816
	tst.b ($ff195b).l
	beq.s loc_208800
	move.b #$a,$16(a1)
	move.b #$5,$17(a1)
	subq.w #$2,$c(a1)
	bra.s loc_208810
loc_208800:
	move.b #$13,$16(a1)
	move.b #$9,$17(a1)
	subq.w #$5,$c(a1)
loc_208810:
	move.b #$0,$1c(a1)
loc_208816:
	bset.b #$3,$22(a1)
	beq.s loc_208838
	moveq #$0,d0
	move.b $3d(a1),d0
	lsl.w #$6,d0
	addi.l #$ffd000,d0
	cmpa.w d0,a0
	beq.s loc_208870
	movea.l d0,a2
	bclr.b #$3,$22(a2)
loc_208838:
	move.w a0,d0
	subi.w #$d000,d0
	lsr.w #$6,d0
	andi.w #$7f,d0
	move.b d0,$3d(a1)
	move.b #$0,$26(a1)
	move.w #$0,$12(a1)
	cmpi.b #$a,$0(a0)
	bne.s loc_208864
	cmpi.b #$2,$24(a0)
	beq.s loc_20886a
loc_208864:
	move.w $10(a1),$14(a1)
loc_20886a:
	bclr.b #$1,$22(a1)
loc_208870:
	rts
	dc.b $11,$7c,$00,$02,$00,$25,$60,$06

sub_20887a:
	move.b #$1,$25(a0)

sub_208880:
	cmpi.b #$17,$1c(a1)
	beq.w loc_208b34
	btst.b #$6,$2c(a1)
	bne.w loc_208b34
	cmpi.b #$6,$24(a1)
	bcc.w loc_208b34
	tst.b $0(a1)
	beq.w loc_208b34
	tst.b $1(a0)
	bpl.w loc_208b34
	tst.b ($ff1906).l
	bne.w loc_208b34
	move.b $19(a0),d1
	ext.w d1
	addi.w #$a,d1
	move.w $8(a1),d0
	sub.w $8(a0),d0
	add.w d1,d0
	bmi.w loc_208b34
	move.w d1,d2
	add.w d2,d2
	cmp.w d2,d0
	bcc.w loc_208b34
	cmpi.b #$2b,$1c(a1)
	bne.s loc_2088ee
	btst.b #$3,$22(a0)
	bne.s loc_208900
	bra.w loc_208b34
loc_2088ee:
	cmpi.b #$1,$25(a0)
	bne.s loc_208900
	tst.w $12(a1)
	beq.s loc_208900
	bmi.w loc_208b34
loc_208900:
	move.b $16(a0),d2
	ext.w d2
	move.b $16(a1),d3
	ext.w d3
	add.w d2,d3
	addq.w #$2,d3
	move.w $c(a1),d2
	sub.w $c(a0),d2
	add.w d3,d2
	bmi.w loc_208b34
	move.w d3,d4
	add.w d4,d4
	cmp.w d4,d2
	bcc.w loc_208b34
	move.w d0,d4
	cmp.w d0,d1
	bcc.s loc_208936
	add.w d1,d1
	sub.w d1,d0
	move.w d0,d4
	neg.w d4
loc_208936:
	move.w d2,d5
	cmp.w d2,d3
	bcc.s loc_208944
	add.w d3,d3
	sub.w d3,d2
	move.w d2,d5
	neg.w d5
loc_208944:
	cmp.w d4,d5
	bcs.w loc_2089d8
	cmpi.b #$1,$25(a0)
	beq.w loc_208b34
	cmpi.b #$a,$0(a0)
	bne.s loc_208966
	btst.b #$1,$22(a1)
	bne.w loc_208b34
loc_208966:
	cmpi.b #$4,d5
	bls.w loc_208b34
	bsr.w sub_208b84
	move.l d0,-(a7)
	bsr.w sub_208732
	clr.b $25(a0)
	move.l (a7)+,d0
	sub.w d0,$8(a1)
	tst.w d0
	bmi.s loc_208990
	tst.w $10(a1)
	beq.s loc_2089c0
	bpl.s loc_208998
	bra.s loc_2089c0
loc_208990:
	tst.w $10(a1)
	beq.s loc_2089c0
	bpl.s loc_2089c0
loc_208998:
	bsr.w sub_208b44
	btst.b #$1,$22(a1)
	bne.s loc_2089b6
	bset.b #$5,$22(a1)
	bset.b #$5,$22(a0)
	move.w #$0,$14(a1)
loc_2089b6:
	move.w #$0,$10(a1)
	moveq #$0,d0
	rts
loc_2089c0:
	bsr.w sub_208bfa
	bsr.w sub_208b44
	bclr.b #$5,$22(a1)
	bclr.b #$5,$22(a0)
	moveq #$0,d0
	rts
loc_2089d8:
	cmpi.b #$19,$0(a0)
	bne.s loc_2089ea
	btst.b #$2,$22(a1)
	bne.w loc_208b34
loc_2089ea:
	move.b $16(a0),d0
	ext.w d0
	move.b $16(a1),d1
	ext.w d1
	add.w d0,d1
	tst.w d2
	beq.s loc_208a00
	bmi.w loc_208ad0
loc_208a00:
	cmpi.b #$2b,$1c(a1)
	beq.s loc_208a12
	tst.w $12(a1)
	beq.s loc_208a12
	bmi.w loc_208b34
loc_208a12:
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
	beq.s loc_208a5e
	bpl.s loc_208a3e
	neg.b d0
loc_208a3e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d24).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a5e
	tst.w $10(a0)
	bpl.s loc_208a5a
	neg.w d1
loc_208a5a:
	add.w d1,$8(a1)
loc_208a5e:
	moveq #$0,d1
	move.w $12(a0),d1
	ext.l d1
	asl.l #$8,d1
	move.l $c(a1),d0
	add.l d1,d0
	move.l d0,$c(a1)
	cmpi.b #$a,$0(a0)
	beq.s loc_208ac8
	tst.w $12(a0)
	bmi.s loc_208a9c
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206db6).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208a9c
	add.w d1,$c(a1)
	bra.w loc_208b34
loc_208a9c:
	tst.w $12(a0)
	bpl.s loc_208ac8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206fce).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208ac8
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207392).l
	movem.l (a7)+,a0-a1
	bra.s loc_208b34
loc_208ac8:
	bsr.w sub_2087a4
	moveq #$1,d0
	rts
loc_208ad0:
	cmpi.b #$1,$25(a0)
	beq.s loc_208b34
	cmpi.b #$9,$0(a0)
	beq.s loc_208b34
	cmpi.b #$a,$0(a0)
	bne.s loc_208afa
	cmpi.b #$2,$25(a0)
	beq.s loc_208b1a
	btst.b #$1,$1(a0)
	bne.s loc_208b1a
	bra.s loc_208b34
loc_208afa:
	btst.b #$1,$22(a1)
	bne.s loc_208b1a
	tst.w $12(a0)
	beq.s loc_208b1a
	bmi.s loc_208b1a
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207392).l
	movem.l (a7)+,a0-a1
loc_208b1a:
	sub.w d2,$c(a1)
	move.w #$0,$12(a1)
	bsr.w sub_208bfa
	bsr.w sub_208732
	clr.b $25(a0)
	moveq #$1,d0
	rts
loc_208b34:
	bsr.w sub_208bfa
	bsr.w sub_208732
	clr.b $25(a0)
	moveq #$0,d0
	rts

sub_208b44:
	tst.w $10(a0)
	beq.s loc_208b82
	cmpi.b #$a,$0(a0)
	beq.s loc_208b82
	move.b #$c0,d0
	tst.w $10(a0)
	bpl.s loc_208b5e
	neg.b d0
loc_208b5e:
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_206d24).l
	movem.l (a7)+,a0-a1
	tst.w d1
	bpl.s loc_208b82
	movem.l a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207392).l
	movem.l (a7)+,a0-a1
loc_208b82:
	rts

sub_208b84:
	cmpi.b #$a,$0(a0)
	bne.s loc_208b94
	move.b #$0,$20(a1)
	rts
loc_208b94:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208be8
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	beq.s loc_208bf8
	movea.l d1,a2
	tst.w $10(a0)
	bne.s loc_208bb6
	tst.w $10(a2)
	beq.s loc_208bf8
loc_208bb6:
	move.w $8(a1),d1
	cmp.w $8(a0),d1
	bcc.s loc_208bc8
	cmp.w $8(a2),d1
	bcs.s loc_208bf8
	bra.s loc_208bce
loc_208bc8:
	cmp.w $8(a2),d1
	bcc.s loc_208bf8
loc_208bce:
	cmpi.b #$15,$0(a0)
	beq.s loc_208bf8
	movem.l d0/a0-a1,-(a7)
	movea.l a1,a0
	jsr (sub_207392).l
	movem.l (a7)+,d0/a0-a1
	rts
loc_208be8:
	move.w a0,d1
	subi.w #$d000,d1
	lsr.w #$6,d1
	andi.w #$7f,d1
	move.b d1,$20(a1)
loc_208bf8:
	rts

sub_208bfa:
	moveq #$0,d1
	move.b $20(a1),d1
	beq.s loc_208c14
	lsl.w #$6,d1
	addi.l #$ffd000,d1
	cmpa.w d1,a0
	bne.s loc_208c14
	move.b #$0,$20(a1)
loc_208c14:
	rts
	.incbin 35862, 374
loc_208d8c:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_208d9a(pc,d0.w),d0
	jmp dat_208d9a(pc,d0.w)
dat_208d9a:
	.incbin 36250, 64
	cmpi.b #$5,$25(a0)
	beq.s loc_208d8c
	moveq #$0,d0
	move.b $24(a0),d0
	beq.s loc_208df0
	tst.b $1(a0)
	bpl.s loc_208df8
loc_208df0:
	move.w dat_208e4a(pc,d0.w),d1
	jsr dat_208e4a(pc,d1.w)
loc_208df8:
	bsr.w sub_203b46
	move.l #$ffff0000,d1
	move.w $34(a0),d1
	beq.s loc_208e2a
	movea.l d1,a1
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_208e2a:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203bf2
	rts
dat_208e4a:
	.incbin 36426, 26
	addq.b #$2,$24(a0)
	move.l #$2091cc,$4(a0)
	move.w #$520,$2(a0)
	ori.b #$4,$1(a0)
	move.b #$10,$19(a0)
	move.b #$8,$16(a0)
	move.w $8(a0),$36(a0)
	move.b #$4,$18(a0)
	move.b $28(a0),d0
	btst.l #$2,d0
	beq.s loc_208eba
	move.b #$8,$24(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.l #$2091d2,$4(a0)
	bra.s loc_208efc
loc_208eba:
	btst.l #$3,d0
	beq.s loc_208ee8
	move.b #$14,$24(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.l #$20921c,$4(a0)
	move.l d0,-(a7)
	moveq #$f,d0
	jsr (sub_20bfac).l
	move.l (a7)+,d0
	bra.s loc_208efc
loc_208ee8:
	btst.b #$1,$1(a0)
	beq.s loc_208efc
	move.b #$e,$24(a0)
	bset.b #$1,$22(a0)
loc_208efc:
	btst.l #$1,d0
	beq.s loc_208f08
	bset.b #$5,$2(a0)
loc_208f08:
	andi.w #$2,d0
	move.w dat_208f14(pc,d0.w),$30(a0)
	rts
dat_208f14:
	dc.b $f0,$00,$f6,$00

sub_208f18:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208880).l
	tst.b $1(a0)
	bpl.s loc_208f34
	lea ($d000).w,a1
	bsr.s sub_208f18
	bne.s loc_208f36
loc_208f34:
	rts
loc_208f36:
	move.b #$4,$24(a0)
	addq.w #$8,$c(a1)
	move.w $30(a0),$12(a1)
	bset.b #$1,$22(a1)
	bclr.b #$3,$22(a1)
	move.b #$10,$1c(a1)
	bclr.b #$3,$22(a0)
	move.w #$98,d0
	jmp (sub_20262a).l
	lea (dat_2091be).l,a1
	bra.w sub_205da8
	bclr.b #$3,$22(a0)
	move.b #$1,$1d(a0)
	subq.b #$4,$24(a0)
	move.b #$0,$1a(a0)
	rts
	.incbin 36746, 564
dat_2091be:
	.incbin 37310, 236
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2092b8(pc,d0.w),d1
	jmp dat_2092b8(pc,d1.w)
dat_2092b8:
	dc.b $00,$2a,$01,$de,$02,$16,$02,$6e
	dc.b $02,$7c
dat_2092c2:
	.incbin 37570, 32
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20931a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209312
	moveq #$0,d1
	bra.s loc_20931a
loc_209312:
	cmpi.w #$3,d1
	bcs.s loc_20931a
	moveq #$2,d1
loc_20931a:
	add.w d1,d0
	lea $2(a2,d0.w),a2
	move.b (a2),d4
	move.b $28(a0),d1
	moveq #$0,d0
	move.b d1,d0
	andi.w #$7,d1
	cmpi.w #$7,d1
	bne.s loc_209336
	moveq #$6,d1
loc_209336:
	swap d1
	move.w #$1,d1
	lsr.b #$4,d0
	add.w d0,d0
	lea (dat_2092c2).l,a1
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
	beq.s loc_209386
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20937e
	moveq #$0,d0
	bra.s loc_209386
loc_20937e:
	cmpi.w #$3,d0
	bcs.s loc_209386
	moveq #$2,d0
loc_209386:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209454
	dbf d0,loc_209386
	bclr.b #$7,(a2)
	bra.s loc_2093dc
loc_209398:
	swap d1
	lea $1(a2),a3
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_2093c4
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_2093bc
	moveq #$0,d0
	bra.s loc_2093c4
loc_2093bc:
	cmpi.w #$3,d0
	bcs.s loc_2093c4
	moveq #$2,d0
loc_2093c4:
	move.b -(a3),d4
	lsr.b d1,d4
	bcs.w loc_209454
	dbf d0,loc_2093c4
	bclr.b #$7,(a2)
	bsr.w sub_20792c
	bne.w loc_209460
loc_2093dc:
	move.b #$10,$0(a1)
	move.b #$2,$24(a1)
	move.w d2,$8(a1)
	move.w $8(a0),$32(a1)
	move.w d3,$c(a1)
	move.l #$209726,$4(a1)
	move.w #$a7ae,$2(a1)
	move.b #$2,$18(a1)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209432
	move.b #$0,$18(a1)
	move.b $29(a0),$29(a1)
	tst.b $29(a1)
	beq.s loc_209432
	andi.b #$7f,$2(a1)
	move.b #$2,$18(a1)
loc_209432:
	move.b #$4,$1(a1)
	move.b #$47,$20(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.b $23(a0),$23(a1)
	move.b d1,$34(a1)
loc_209454:
	addq.w #$1,d1
	add.w d5,d2
	add.w d6,d3
	swap d1
	dbf d1,loc_209398
loc_209460:
	moveq #$0,d0
	move.b ($ff152e).l,d0
	bclr.l #$7,d0
	beq.s loc_209486
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d0
	bpl.s loc_20947e
	moveq #$0,d0
	bra.s loc_209486
loc_20947e:
	cmpi.w #$3,d0
	bcs.s loc_209486
	moveq #$2,d0
loc_209486:
	lea $1(a2),a3
loc_20948a:
	btst.b #$0,-(a3)
	bne.w sub_203bf2
	dbf d0,loc_20948a
	tst.b $1(a0)
	bmi.s loc_2094ba
	move.w $32(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w loc_209534
loc_2094ba:
	tst.w ($ff190e).l
	bne.s loc_2094ca
	move.b ($ff1913).l,$1a(a0)
loc_2094ca:
	bra.w sub_203b46
	addq.b #$2,$24(a0)
	move.b #$0,$20(a0)
	move.b #$1,$18(a0)
	bsr.w sub_209538
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_20951a
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209512
	moveq #$0,d1
	bra.s loc_20951a
loc_209512:
	cmpi.w #$3,d1
	bcs.s loc_20951a
	moveq #$2,d1
loc_20951a:
	add.w d1,d0
	move.b $34(a0),d1
	subq.b #$1,d1
	bset.b d1,$2(a2,d0.w)
	lea (dat_20971e).l,a1
	bsr.w sub_205da8
	bra.w sub_203b46
loc_209534:
	bra.w sub_203bf2

sub_209538:
	addq.w #$1,($ff1512).l
	ori.b #$1,($ff150f).l
	move.w #$95,d0
	cmpi.w #$64,($ff1512).l
	bcs.s loc_209588
	bset.b #$1,($ff150d).l
	beq.s loc_209572
	cmpi.w #$c8,($ff1512).l
	bcs.s loc_209588
	bset.b #$2,($ff150d).l
	bne.s loc_209588
loc_209572:
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d68).l
loc_209588:
	jmp (sub_20262a).l
	.incbin 38286, 400
dat_20971e:
	.incbin 38686, 402
loc_2098b0:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_2098de(pc,d0.w),d0
	jsr dat_2098de(pc,d0.w)
	tst.b ($f784).w
	beq.s loc_2098dc
	cmpi.w #$5a,($f786).w
	bcs.s loc_2098d6
	btst.b #$0,($ff1505).l
	bne.s loc_2098dc
loc_2098d6:
	jmp (sub_203b46).l
loc_2098dc:
	rts
dat_2098de:
	dc.b $00,$04,$00,$22
	addq.b #$2,$24(a0)
	move.l #$209eb8,$4(a0)
	move.w #$85a8,$2(a0)
	move.w #$c4,$8(a0)
	move.w #$152,$a(a0)
	move.b #$12,$1a(a0)
	tst.b ($f784).w
	bmi.s loc_209912
	move.b #$13,$1a(a0)
loc_209912:
	rts
loc_209914:
	tst.b ($ff0f01).l
	beq.s loc_209922
	jmp (sub_203bf2).l
loc_209922:
	cmpi.b #$a,$28(a0)
	beq.w loc_2098b0
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209946(pc,d0.w),d0
	jsr dat_209946(pc,d0.w)
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_209946:
	dc.b $00,$08,$00,$90,$00,$f2,$01,$18
	addq.b #$2,$24(a0)
	move.b #$20,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209eb8,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$4,$1(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209994
	tst.b $29(a0)
	bne.s loc_209994
	move.b #$0,$18(a0)
	ori.b #$80,$2(a0)
loc_209994:
	move.b #$f,$19(a0)
	move.b $28(a0),$1c(a0)
	bsr.w sub_209a60
	bclr.b #$7,$2(a2,d0.w)
	move.b #$a,$1a(a0)
	cmpi.b #$8,$28(a0)
	beq.s loc_2099bc
	addq.b #$2,$1a(a0)
loc_2099bc:
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_2099d0
	addq.b #$1,$1a(a0)
	move.b #$6,$24(a0)
	rts
loc_2099d0:
	move.b #$df,$20(a0)
	tst.b $21(a0)
	beq.s loc_209a36
	clr.b $21(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209a02
	tst.b $29(a0)
	beq.s loc_2099fa
	tst.b ($ff1956).l
	beq.s loc_209a36
	bra.s loc_209a02
loc_2099fa:
	tst.b ($ff1956).l
	bne.s loc_209a36
loc_209a02:
	move.b #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	bsr.w sub_209a60
	bset.b #$0,$2(a2,d0.w)
	move.w #$77,d0
	move.b #$ff,($f784).w
	cmpi.b #$8,$28(a0)
	beq.s loc_209a30
	move.b #$1,($f784).w
	subq.w #$1,d0
loc_209a30:
	jsr (sub_205d68).l
loc_209a36:
	rts
	.incbin 39480, 40

sub_209a60:
	lea ($ff1200).l,a2
	moveq #$0,d0
	move.b $23(a0),d0
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	bclr.l #$7,d1
	beq.s loc_209a98
	move.b ($f784).w,d2
	ext.w d2
	neg.w d2
	add.w d2,d1
	bpl.s loc_209a90
	moveq #$0,d1
	bra.s loc_209a98
loc_209a90:
	cmpi.w #$3,d1
	bcs.s loc_209a98
	moveq #$2,d1
loc_209a98:
	add.w d1,d0
	rts

sub_209a9c:
	cmpi.b #$6,($ff1506).l
	bne.s loc_209abe
	tst.b ($ff1956).l
	beq.s loc_209ab6
	tst.b $29(a0)
	bne.s loc_209abe
	rts
loc_209ab6:
	tst.b $29(a0)
	beq.s loc_209abe
	rts
loc_209abe:
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208880).l
	tst.b $28(a0)
	bne.s loc_209ae0
	tst.b ($ff0f01).l
	beq.s loc_209ae0
	jmp (sub_20794c).l
loc_209ae0:
	cmpi.b #$8,$28(a0)
	bcc.w loc_209914
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_209af8(pc,d0.w),d1
	jmp dat_209af8(pc,d1.w)
dat_209af8:
	dc.b $00,$0a,$00,$82,$00,$da,$00,$be
	dc.b $00,$d0
	addq.b #$2,$24(a0)
	move.b #$e,$16(a0)
	move.b #$e,$17(a0)
	move.l #$209eb8,$4(a0)
	move.w #$5a8,$2(a0)
	move.b #$3,$18(a0)
	cmpi.b #$6,($ff1506).l
	bne.s loc_209b42
	tst.b $29(a0)
	bne.s loc_209b42
	ori.b #$80,$2(a0)
	move.b #$0,$18(a0)
loc_209b42:
	move.b #$4,$1(a0)
	move.b #$f,$19(a0)
	bsr.w sub_209a60
	bclr.b #$7,$2(a2,d0.w)
	btst.b #$0,$2(a2,d0.w)
	beq.s loc_209b6e
	move.b #$8,$24(a0)
	move.b #$11,$1a(a0)
	rts
loc_209b6e:
	move.b #$46,$20(a0)
	move.b $28(a0),$1c(a0)
	tst.b $1(a0)
	bpl.w loc_209bc8
	move.b $25(a0),d0
	beq.s loc_209ba8
	bsr.w sub_203a8e
	jsr (sub_206e64).l
	tst.w d1
	bpl.w loc_209bb6
	add.w d1,$c(a0)
	clr.w $12(a0)
	clr.b $25(a0)
	bra.w loc_209bb6
loc_209ba8:
	tst.b $1(a0)
	bpl.s loc_209bb6
	lea ($d000).w,a1
	bsr.w sub_209a9c
loc_209bb6:
	tst.w ($ff190e).l
	bne.s loc_209bc8
	lea (dat_209e30).l,a1
	bsr.w sub_205da8
loc_209bc8:
	bsr.w sub_203b46
	jmp (sub_20794c).l
	.incbin 39890, 606
dat_209e30:
	.incbin 40496, 586
loc_20a07a:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a08e(pc,d0.w),d0
	jsr dat_20a08e(pc,d0.w)
	jmp (sub_203b46).l
dat_20a08e:
	.incbin 41102, 146
	tst.b $28(a0)
	bmi.w loc_20a07a
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a136(pc,d0.w),d0
	jmp dat_20a136(pc,d0.w)
dat_20a136:
	dc.b $00,$04,$00,$50
	addq.b #$2,$24(a0)
	move.l #$20a1d0,$4(a0)
	move.w #$8568,$2(a0)
	move.w #$90,$8(a0)
	move.w #$88,$a(a0)
	tst.b $29(a0)
	beq.s loc_20a166
	move.b #$3,$1a(a0)
	bra.s loc_20a186
loc_20a166:
	tst.w ($ff1588).l
	beq.s loc_20a174
	move.b #$2,$1a(a0)
loc_20a174:
	tst.b $28(a0)
	beq.s loc_20a186
	move.w #$148,$a(a0)
	move.b #$1,$1a(a0)
loc_20a186:
	tst.b $28(a0)
	bne.s loc_20a1ca
	tst.b $29(a0)
	beq.s loc_20a1b6
	tst.w ($ff1512).l
	beq.s loc_20a1a2
	bclr.b #$5,$2(a0)
	bra.s loc_20a1ca
loc_20a1a2:
	move.b ($ff190d).l,d0
	andi.b #$f,d0
	bne.s loc_20a1ca
	eori.b #$20,$2(a0)
	bra.s loc_20a1ca
loc_20a1b6:
	move.b #$0,$1a(a0)
	tst.w ($ff1588).l
	beq.s loc_20a1ca
	move.b #$2,$1a(a0)
loc_20a1ca:
	jmp (sub_203b46).l
	.incbin 41424, 168

sub_20a278:
	move.b #$1,($ff1511).l
	lea ($ff1518).l,a3
	add.l d0,(a3)
	move.l #$f423f,d1
	cmp.l (a3),d1
	bhi.s loc_20a294
	move.l d1,(a3)
loc_20a294:
	move.l (a3),d0
	cmp.l ($ff1578).l,d0
	bcs.s loc_20a2be
	addi.l #$1388,($ff1578).l
	addq.b #$1,($ff1508).l
	addq.b #$1,($ff150e).l
	move.w #$7a,d0
	jmp (sub_205d68).l
loc_20a2be:
	rts
loc_20a2c0:
	tst.w ($ff1588).l
	beq.s loc_20a316
	bsr.w sub_20a512
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
	lea (dat_20a672).l,a2
	moveq #$2,d6
	bsr.w sub_20a6ca
	bra.w loc_20a370
loc_20a316:
	tst.b ($ff1511).l
	beq.s loc_20a33a
	bpl.s loc_20a324
	bsr.w sub_20a4bc
loc_20a324:
	clr.b ($ff1511).l
	move.l #$70600002,d0
	move.l ($ff1518).l,d1
	bsr.w sub_20a5ac
loc_20a33a:
	tst.b ($ff150f).l
	beq.s loc_20a370
	bpl.s loc_20a348
	bsr.w sub_20a4a8
loc_20a348:
	clr.b ($ff150f).l
	move.l #$73600002,d0
	moveq #$0,d1
	move.w ($ff1512).l,d1
	cmpi.w #$3e8,d1
	bcs.s loc_20a36c
	move.w #$3e7,d1
	move.w d1,($ff1512).l
loc_20a36c:
	bsr.w sub_20a5a2
loc_20a370:
	tst.w ($ff1588).l
	bne.w loc_20a41c
	tst.b ($ff1510).l
	beq.w loc_20a41c
	tst.w ($f63a).w
	bne.w loc_20a41c
	lea ($ff1514).l,a1
	cmpi.l #$93b3b,(a1)+
	beq.w loc_20a47a
	tst.b ($f7cc).w
	bne.s loc_20a3c6
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a3c6
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$3c,(a1)
	bcs.s loc_20a3c6
	move.b #$0,(a1)
	addq.b #$1,-(a1)
	cmpi.b #$9,(a1)
	bcs.s loc_20a3c6
	move.b #$9,(a1)
loc_20a3c6:
	move.l #$72200002,d0
	moveq #$0,d1
	move.b ($ff1515).l,d1
	bsr.w sub_20a6b8
	move.l #$72600002,d0
	moveq #$0,d1
	move.b ($ff1516).l,d1
	bsr.w sub_20a6c2
	move.l #$72e00002,d0
	moveq #$0,d1
	move.b ($ff1517).l,d1
	mulu.w #$64,d1
	divu.w #$3c,d1
	swap d1
	move.w #$0,d1
	swap d1
	cmpi.l #$93b3b,($ff1514).l
	bne.s loc_20a418
	move.w #$63,d1
loc_20a418:
	bsr.w sub_20a6c2
loc_20a41c:
	tst.b ($ff150e).l
	beq.s loc_20a42e
	clr.b ($ff150e).l
	bsr.w sub_20a698
loc_20a42e:
	tst.b ($f7d6).w
	beq.s loc_20a478
	clr.b ($f7d6).w
	move.l #$47800002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a44e
	move.l #$6d400001,d0
loc_20a44e:
	moveq #$0,d1
	move.w ($f7d2).w,d1
	bsr.w sub_20a530
	move.l #$48c00002,d0
	cmpi.w #$502,($ff1506).l
	bne.s loc_20a46e
	move.l #$6e800001,d0
loc_20a46e:
	moveq #$0,d1
	move.w ($f7d4).w,d1
	bsr.w sub_20a530
loc_20a478:
	rts
loc_20a47a:
	btst.b #$7,($ff152e).l
	bne.s loc_20a4a6
	clr.b ($ff1510).l
	move.l #$0,($ff1514).l
	lea ($d000).w,a0
	movea.l a0,a2
	bsr.w sub_207392
	move.b #$1,($ff150c).l
loc_20a4a6:
	rts

sub_20a4a8:
	move.l #$73600002,($c00004).l
	lea dat_20a50e(pc),a2
	move.w #$2,d2
	bra.s loc_20a4d8

sub_20a4bc:
	lea ($c00000).l,a6
	bsr.w sub_20a698
	move.l #$70600002,($c00004).l
	lea dat_20a506(pc),a2
	move.w #$6,d2
loc_20a4d8:
	lea (dat_238442).l,a1
loc_20a4de:
	move.w #$f,d1
	move.b (a2)+,d0
	bmi.s loc_20a4fa
	ext.w d0
	lsl.w #$5,d0
	lea $0(a1,d0.w),a3
loc_20a4ee:
	move.l (a3)+,(a6)
	dbf d1,loc_20a4ee
loc_20a4f4:
	dbf d2,loc_20a4de
	rts
loc_20a4fa:
	move.l #$0,(a6)
	dbf d1,loc_20a4fa
	bra.s loc_20a4f4
dat_20a506:
	dc.b $ff,$ff,$ff,$ff,$ff,$ff,$00,$00
dat_20a50e:
	dc.b $ff,$ff,$00,$00

sub_20a512:
	move.l #$70e00002,d0
	moveq #$0,d1
	move.w ($d008).w,d1
	bsr.w sub_20a68e
	move.l #$72600002,d0
	move.w ($d00c).w,d1
	bra.w sub_20a68e

sub_20a530:
	lea (dat_20a66a).l,a2
	moveq #$4,d6
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a540:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a544:
	sub.l d3,d1
	bcs.s loc_20a54c
	addq.w #$1,d2
	bra.s loc_20a544
loc_20a54c:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a556
	move.w #$1,d4
loc_20a556:
	move.l d0,$4(a6)
	tst.w d4
	bne.s loc_20a562
	tst.w d6
	bne.s loc_20a594
loc_20a562:
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
loc_20a588:
	addi.l #$400000,d0
	dbf d6,loc_20a540
	rts
loc_20a594:
	moveq #$f,d5
loc_20a596:
	move.l #$0,(a6)
	dbf d5,loc_20a596
	bra.s loc_20a588

sub_20a5a2:
	lea (dat_20a672).l,a2
	moveq #$2,d6
	bra.s loc_20a5b4

sub_20a5ac:
	lea (dat_20a666).l,a2
	moveq #$5,d6
loc_20a5b4:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a5bc:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a5c0:
	sub.l d3,d1
	bcs.s loc_20a5c8
	addq.w #$1,d2
	bra.s loc_20a5c0
loc_20a5c8:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a5d2
	move.w #$1,d4
loc_20a5d2:
	tst.w d4
	beq.s loc_20a600
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
loc_20a600:
	addi.l #$400000,d0
	dbf d6,loc_20a5bc
	rts
	.incbin 42508, 32
loc_20a62c:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a630:
	sub.l d3,d1
	bcs.s loc_20a638
	addq.w #$1,d2
	bra.s loc_20a630
loc_20a638:
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
	dbf d6,loc_20a62c
	rts
dat_20a666:
	dc.b $00,$01,$86,$a0
dat_20a66a:
	dc.b $00,$00,$27,$10,$00,$00,$03,$e8
dat_20a672:
	dc.b $00,$00,$00,$64
dat_20a676:
	dc.b $00,$00,$00,$0a
dat_20a67a:
	dc.b $00,$00,$00,$01
dat_20a67e:
	.incbin 42622, 16

sub_20a68e:
	moveq #$3,d6
	lea (dat_20a67e).l,a2
	bra.s sub_20a6ca

sub_20a698:
	move.l #$74a00002,d0
	moveq #$0,d1
	move.b ($ff1508).l,d1
	cmpi.b #$9,d1
	bcs.s loc_20a6ae
	moveq #$9,d1
loc_20a6ae:
	lea (dat_20a67a).l,a2
	moveq #$0,d6
	bra.s sub_20a6ca

sub_20a6b8:
	lea (dat_20a67a).l,a2
	moveq #$0,d6
	bra.s sub_20a6ca

sub_20a6c2:
	lea (dat_20a676).l,a2
	moveq #$1,d6

sub_20a6ca:
	moveq #$0,d4
	lea (dat_238442).l,a1
loc_20a6d2:
	moveq #$0,d2
	move.l (a2)+,d3
loc_20a6d6:
	sub.l d3,d1
	bcs.s loc_20a6de
	addq.w #$1,d2
	bra.s loc_20a6d6
loc_20a6de:
	add.l d3,d1
	tst.w d2
	beq.s loc_20a6e8
	move.w #$1,d4
loc_20a6e8:
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
	dbf d6,loc_20a6d2
	rts
	lea ($d000).w,a6
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20a730(pc,d0.w),d1
	jmp dat_20a730(pc,d1.w)
dat_20a730:
	dc.b $00,$0c,$00,$6a,$00,$84,$01,$3a
	dc.b $01,$58,$01,$5c
	addq.b #$2,$24(a0)
	move.l #$2398be,$4(a0)
	move.w #$848a,$2(a0)
	move.b #$84,$1(a0)
	move.b #$10,$19(a0)
	move.b #$1,$18(a0)
	move.b $28(a0),d0
	bpl.s loc_20a780
	addq.b #$8,$24(a0)
	andi.w #$7f,d0
	move.b d0,$32(a0)
	move.b d0,$33(a0)
	move.b #$6,$1c(a0)
	bra.w loc_20a88c
loc_20a780:
	move.b d0,$1c(a0)
	move.w $8(a0),$30(a0)
	move.w #$ff78,$12(a0)
	jsr (sub_202418).l
	move.b d0,$26(a0)
	lea (dat_20aa24).l,a1
	jsr (sub_205da8).l
	cmpi.b #$6,$1a(a0)
	bne.s loc_20a7b4
	move.b #$1,$2e(a0)
loc_20a7b4:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.s loc_20a7cc
loc_20a7be:
	move.b #$6,$24(a0)
	addq.b #$3,$1c(a0)
	bra.w loc_20a86a
loc_20a7cc:
	move.b $26(a0),d0
	addq.b #$1,$26(a0)
	andi.w #$7f,d0
	lea (dat_23f13a).l,a1
	move.b $0(a1,d0.w),d0
	ext.w d0
	add.w $30(a0),d0
	move.w d0,$8(a0)
	tst.b $2e(a0)
	beq.s loc_20a854
	bsr.w sub_20a9ea
	beq.s loc_20a854
	bsr.w sub_2061e8
	move.w #$ad,d0
	jsr (sub_20262a).l
	clr.w $10(a6)
	clr.w $12(a6)
	clr.w $14(a6)
	move.b #$15,$1c(a6)
	move.w #$23,$3e(a6)
	move.b #$0,$3c(a6)
	bclr.b #$5,$22(a6)
	bclr.b #$4,$22(a6)
	btst.b #$2,$22(a6)
	beq.w loc_20a7be
	bclr.b #$2,$22(a6)
	move.b #$13,$16(a6)
	move.b #$9,$17(a6)
	subq.w #$5,$c(a6)
	bra.w loc_20a7be
loc_20a854:
	bsr.w sub_203af0
	tst.b $1(a0)
	bpl.s loc_20a864
	jmp (sub_203b46).l
loc_20a864:
	jmp (sub_203bf2).l
loc_20a86a:
	lea (dat_20aa24).l,a1
	jsr (sub_205da8).l
	tst.b $1(a0)
	bpl.s loc_20a882
	jmp (sub_203b46).l
loc_20a882:
	jmp (sub_203bf2).l
	dc.b $60,$00,$93,$68
loc_20a88c:
	tst.w $36(a0)
	bne.s loc_20a8ee
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcc.w loc_20a9a0
	tst.b $1(a0)
	bpl.w loc_20a9a0
	subq.w #$1,$38(a0)
	bpl.w loc_20a994
	move.w #$1,$36(a0)
loc_20a8b4:
	jsr (sub_202418).l
	move.w d0,d1
	andi.w #$7,d0
	cmpi.w #$6,d0
	bcc.s loc_20a8b4
	move.b d0,$34(a0)
	andi.w #$c,d1
	lea (dat_20a9d8).l,a1
	adda.w d1,a1
	move.l a1,$3c(a0)
	subq.b #$1,$32(a0)
	bpl.s loc_20a8ec
	move.b $33(a0),$32(a0)
	bset.b #$7,$36(a0)
loc_20a8ec:
	bra.s loc_20a8f6
loc_20a8ee:
	subq.w #$1,$38(a0)
	bpl.w loc_20a994
loc_20a8f6:
	jsr (sub_202418).l
	andi.w #$1f,d0
	move.w d0,$38(a0)
	tst.b $1(a0)
	bpl.s loc_20a978
	bsr.w sub_207916
	bne.s loc_20a978
	move.b #$20,$0(a1)
	move.w $8(a0),$8(a1)
	jsr (sub_202418).l
	andi.w #$f,d0
	subq.w #$8,d0
	add.w d0,$8(a1)
	move.w $c(a0),$c(a1)
	moveq #$0,d0
	move.b $34(a0),d0
	movea.l $3c(a0),a2
	move.b $0(a2,d0.w),$28(a1)
	btst.b #$7,$36(a0)
	beq.s loc_20a978
	jsr (sub_202418).l
	andi.w #$3,d0
	bne.s loc_20a964
	bset.b #$6,$36(a0)
	bne.s loc_20a978
	move.b #$2,$28(a1)
loc_20a964:
	tst.b $34(a0)
	bne.s loc_20a978
	bset.b #$6,$36(a0)
	bne.s loc_20a978
	move.b #$2,$28(a1)
loc_20a978:
	subq.b #$1,$34(a0)
	bpl.s loc_20a994
	jsr (sub_202418).l
	andi.w #$7f,d0
	addi.w #$80,d0
	add.w d0,$38(a0)
	clr.w $36(a0)
loc_20a994:
	lea (dat_20aa24).l,a1
	jsr (sub_205da8).l
loc_20a9a0:
	tst.b $1(a0)
	bmi.s loc_20a9c4
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.w sub_203bf2
loc_20a9c4:
	move.w ($f646).w,d0
	cmp.w $c(a0),d0
	bcs.w sub_203b46
	bclr.b #$7,$1(a0)
	rts
dat_20a9d8:
	.incbin 43480, 18

sub_20a9ea:
	tst.b $2c(a6)
	bmi.s loc_20aa20
	move.w $8(a6),d0
	move.w $8(a0),d1
	subi.w #$10,d1
	cmp.w d0,d1
	bcc.s loc_20aa20
	addi.w #$20,d1
	cmp.w d0,d1
	bcs.s loc_20aa20
	move.w $c(a6),d0
	move.w $c(a0),d1
	cmp.w d0,d1
	bcc.s loc_20aa20
	addi.w #$10,d1
	cmp.w d0,d1
	bcs.s loc_20aa20
	moveq #$1,d0
	rts
loc_20aa20:
	moveq #$0,d0
	rts
dat_20aa24:
	.incbin 43556, 708
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ad06(pc,d0.w),d0
	jsr dat_20ad06(pc,d0.w)
	cmpi.b #$4,$24(a0)
	beq.s loc_20ad04
	jmp (sub_203b46).l
loc_20ad04:
	rts
dat_20ad06:
	.incbin 44294, 1936
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b4a4(pc,d0.w),d0
	jmp dat_20b4a4(pc,d0.w)
dat_20b4a4:
	dc.b $00,$04,$00,$bc
	move.w #$82,d0
	jsr (sub_205d68).l
	addq.b #$2,$24(a0)
	move.w #$e0,$a(a0)
	move.w #$80,$8(a0)
	move.w #$120,$2a(a0)
	move.w #$8544,$2(a0)
	move.l #$20b57a,$4(a0)
	move.b #$8,($ff156b).l
	bclr.b #$0,($ff150c).l
	beq.s loc_20b500
	tst.b ($ff1508).l
	beq.s loc_20b508
	move.l #$20b57e,$4(a0)
	addq.b #$2,($ff156b).l
	bra.s loc_20b508
loc_20b500:
	tst.b ($ff1508).l
	bne.s loc_20b518
loc_20b508:
	bset.b #$7,($ff156b).l
	jsr (sub_207916).l
	beq.s loc_20b51e
loc_20b518:
	jmp (sub_203bf2).l
loc_20b51e:
	move.b #$3b,$0(a1)
	move.b $24(a0),$24(a1)
	move.w $2(a0),$2(a1)
	move.l $4(a0),$4(a1)
	move.b #$1,$1a(a1)
	move.w #$e0,$a(a1)
	move.w #$1c0,$8(a1)
	move.w #$120,$2a(a1)
	tst.b ($ff1508).l
	bne.s loc_20b560
	move.w #$6e,d0
	jmp (sub_205d68).l
loc_20b560:
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b574
	bge.s loc_20b570
	neg.w d0
loc_20b570:
	add.w d0,$8(a0)
loc_20b574:
	jmp (sub_203b46).l
	.incbin 46458, 56
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20b5c0(pc,d0.w),d0
	jmp dat_20b5c0(pc,d0.w)
dat_20b5c0:
	dc.b $00,$0c,$00,$ae,$00,$d2,$00,$f6
	dc.b $01,$32,$01,$62
	move.b #$2,$24(a0)
	move.w #$118,$8(a0)
	move.w #$30,$a(a0)
	move.w #$30,$30(a0)
	move.w #$f0,$2e(a0)
	move.b #$5a,$1e(a0)
	move.w #$8360,$2(a0)
	move.l #$20bcbe,$4(a0)
	move.b #$4,$18(a0)
	moveq #$0,d1
	moveq #$7,d6
	lea (dat_20bc7e).l,a2
loc_20b60e:
	jsr (sub_207916).l
	move.b #$3c,$0(a1)
	move.b #$4,$24(a1)
	move.w #$8360,$2(a1)
	move.l #$20bcbe,$4(a1)
	move.w d1,d2
	lsl.w #$3,d2
	move.w $0(a2,d2.w),$a(a1)
	move.w $2(a2,d2.w),$8(a1)
	move.w $2(a2,d2.w),$2c(a1)
	move.w $4(a2,d2.w),$2a(a1)
	move.b $6(a2,d2.w),$1a(a1)
	cmpi.b #$5,d1
	bne.s loc_20b660
	move.b ($ff1507).l,d3
	add.b d3,$1a(a1)
loc_20b660:
	move.b $7(a2,d2.w),$1e(a1)
	addq.b #$1,d1
	dbf d6,loc_20b60e
	rts
	moveq #$8,d0
	move.w $2e(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b688
	bge.s loc_20b67e
	neg.w d0
loc_20b67e:
	add.w d0,$a(a0)
	jmp (sub_203b46).l
loc_20b688:
	addq.b #$4,$24(a0)
	jmp (sub_203b46).l
	moveq #$8,d0
	move.w $2a(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b6ac
	bge.s loc_20b6a2
	neg.w d0
loc_20b6a2:
	add.w d0,$8(a0)
	jmp (sub_203b46).l
loc_20b6ac:
	addq.b #$4,$24(a0)
	jmp (sub_203b46).l
	tst.b $1e(a0)
	beq.s loc_20b6c6
	subq.b #$1,$1e(a0)
	jmp (sub_203b46).l
loc_20b6c6:
	moveq #$10,d0
	move.w $30(a0),d1
	cmp.w $a(a0),d1
	beq.s loc_20b6e0
	bge.s loc_20b6d6
	neg.w d0
loc_20b6d6:
	add.w d0,$a(a0)
	jmp (sub_203b46).l
loc_20b6e0:
	addq.b #$4,$24(a0)
	move.b #$1,($f744).w
	moveq #$2,d0
	jmp (sub_2027f4).l
	tst.b $1e(a0)
	beq.s loc_20b702
	subq.b #$1,$1e(a0)
	jmp (sub_203b46).l
loc_20b702:
	moveq #$10,d0
	move.w $2c(a0),d1
	cmp.w $8(a0),d1
	beq.s loc_20b71c
	bge.s loc_20b712
	neg.w d0
loc_20b712:
	add.w d0,$8(a0)
	jmp (sub_203b46).l
loc_20b71c:
	jmp (sub_203bf2).l
	tst.l ($f680).w
	bne.s loc_20b736
	clr.b ($f744).w
	clr.b ($f7cc).w
	jmp (sub_203bf2).l
loc_20b736:
	rts
	.incbin 46904, 1350
dat_20bc7e:
	.incbin 48254, 320
dat_20bdbe:
	.incbin 48574, 394
loc_20bf48:
	lea dat_20bf9a(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bf54:
	cmp.w (a1)+,d0
	bcs.s loc_20bf5c
	addq.b #$2,d1
	bra.s loc_20bf54
loc_20bf5c:
	move.b d1,($ff1574).l
	move.w dat_20bfa6(pc,d1.w),d0
	jmp (sub_2027f4).l

sub_20bf6c:
	lea dat_20bf9a(pc),a1
	moveq #$0,d0
	moveq #$0,d1
	move.w ($f700).w,d0
loc_20bf78:
	cmp.w (a1)+,d0
	bcs.s loc_20bf80
	addq.b #$2,d1
	bra.s loc_20bf78
loc_20bf80:
	cmp.b ($ff1574).l,d1
	bne.s loc_20bf8a
	rts
loc_20bf8a:
	move.b d1,($ff1574).l
	move.w dat_20bfa0(pc,d1.w),d0
	jmp (loc_202826).l
dat_20bf9a:
	dc.b $11,$80,$15,$80,$ff,$ff
dat_20bfa0:
	dc.b $00,$05,$00,$06,$00,$05
dat_20bfa6:
	dc.b $00,$02,$00,$04,$00,$02

sub_20bfac:
	rts
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c002(pc,d0.w),d0
	jsr dat_20c002(pc,d0.w)
	jsr (sub_203b46).l
	moveq #$0,d1
	move.w $34(a0),d1
	beq.s loc_20bff8
	movea.w d1,a1
	tst.b $0(a1)
	bne.s loc_20bfd8
	jmp (sub_203bf2).l
loc_20bfd8:
	move.w $8(a1),$8(a0)
	move.w $c(a1),$c(a0)
	move.b $38(a0),d0
	ext.w d0
	add.w d0,$8(a0)
	move.b $39(a0),d0
	ext.w d0
	add.w d0,$c(a0)
loc_20bff8:
	move.w $36(a0),d0
	jmp (loc_207950).l
dat_20c002:
	dc.b $00,$6a,$00,$b8
loc_20c006:
	tst.b $1a(a0)
	beq.s loc_20c016
	lea ($d000).w,a1
	jmp (sub_208880).l
loc_20c016:
	lea ($d000).w,a1
	jsr (sub_208880).l
	beq.s loc_20c06a
	btst.b #$3,$22(a0)
	beq.s loc_20c06a
	tst.b ($ff1521).l
	bne.s loc_20c06a
	tst.b ($ff151f).l
	bne.s loc_20c06a
	move.l a0,-(a7)
	movea.l a0,a2
	lea ($d000).w,a0
	cmpi.b #$4,$24(a0)
	bcc.s loc_20c068
	tst.w $30(a0)
	bne.s loc_20c068
	move.l $c(a0),d3
	move.w $12(a0),d0
	ext.l d0
	asl.l #$8,d0
	sub.l d0,d3
	move.l d3,$c(a0)
	jsr (sub_2072f2).l
loc_20c068:
	movea.l (a7)+,a0
loc_20c06a:
	rts
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$3a0,$2(a0)
	move.b #$4,$18(a0)
	move.l #$20c136,$4(a0)
	tst.w $36(a0)
	bne.s loc_20c096
	move.w $8(a0),$36(a0)
loc_20c096:
	move.w $c(a0),$32(a0)
	move.b #$12,$19(a0)
	move.b #$c,$16(a0)
	tst.b $28(a0)
	beq.s loc_20c0ba
	move.b #$1,$1a(a0)
	move.b #$83,$20(a0)
loc_20c0ba:
	cmpi.b #$1,$28(a0)
	beq.s loc_20c0d4
	jsr sub_20c0d8(pc)
	moveq #$0,d0
	move.b $3b(a0),d0
	add.w $32(a0),d0
	move.w d0,$c(a0)
loc_20c0d4:
	bra.w loc_20c006

sub_20c0d8:
	tst.b $3a(a0)
	beq.s loc_20c0f6
	subq.b #$1,$3a(a0)
	bne.s loc_20c134
	btst.b #$7,$1(a0)
	beq.s loc_20c0f6
	move.w #$b7,d0
	jsr (sub_20262a).l
loc_20c0f6:
	tst.b $3c(a0)
	beq.s loc_20c116
	subq.b #$8,$3b(a0)
	bcc.s loc_20c134
	move.b #$0,$3b(a0)
	move.b #$0,$3c(a0)
	move.b #$3c,$3a(a0)
	bra.s loc_20c134
loc_20c116:
	addq.b #$8,$3b(a0)
	cmpi.b #$20,$3b(a0)
	bcs.s loc_20c134
	move.b #$20,$3b(a0)
	move.b #$1,$3c(a0)
	move.b #$3c,$3a(a0)
loc_20c134:
	rts
	.incbin 49462, 16
	moveq #$0,d0
	move.b $28(a0),d0
	add.b d0,d0
	move.w dat_20c156(pc,d0.w),d0
	jmp dat_20c156(pc,d0.w)
dat_20c156:
	.incbin 49494, 18

sub_20c168:
	lea ($d000).w,a1
	move.w $8(a0),d3
	move.w $c(a0),d4
	jmp (sub_208880).l
loc_20c17a:
	move.w $36(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c198
	rts
loc_20c198:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20c1bc
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20c1bc:
	jmp (sub_203bf2).l
	.incbin 49602, 484
	moveq #$0,d0
	move.b $3a(a0),d0
	jsr (sub_200792).l
	asr.w #$3,d0
	addq.b #$1,$3a(a0)
	add.w $32(a0),d0
	move.w d0,$8(a0)
	move.w (a7)+,d1
	sub.w d1,d0
	asl.w #$8,d0
	move.w d0,$10(a0)
	bra.w sub_20c168
	dc.b $00,$02,$02,$f0,$0f,$00,$00,$e0
	dc.b $f0,$0f,$00,$00,$00,$00
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c3f4(pc,d0.w),d0
	jsr dat_20c3f4(pc,d0.w)
	jsr (sub_203b46).l
	bra.w loc_20c17a
dat_20c3f4:
	dc.b $00,$04,$00,$c2
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20c52c,$4(a0)
	move.b #$20,$19(a0)
	move.b #$20,$16(a0)
	tst.b $3c(a0)
	bne.s loc_20c462
	move.w $8(a0),$36(a0)
	moveq #$1,d1
	moveq #$4,d2
loc_20c432:
	jsr (sub_207916).l
	bne.s loc_20c45c
	move.b #$24,$0(a1)
	move.b #$3,$28(a1)
	move.b d1,$3c(a1)
	move.w $36(a0),$36(a1)
	move.w $8(a0),$8(a1)
	move.w $c(a0),$c(a1)
loc_20c45c:
	addq.b #$1,d1
	dbf d2,loc_20c432
loc_20c462:
	moveq #$0,d1
	move.b $3c(a0),d0
	add.b d0,d0
	add.b d0,d0
	add.b $3c(a0),d0
	add.b $3c(a0),d0
	lea dat_20c492(pc,d0.w),a2
	move.w (a2)+,d0
	add.w $8(a0),d0
	move.w d0,$8(a0)
	move.w (a2)+,d0
	add.w $c(a0),d0
	move.w d0,$c(a0)
	move.w (a2)+,$10(a0)
	rts
dat_20c492:
	.incbin 50322, 36
	move.w $10(a0),d0
	ext.l d0
	asl.l #$8,d0
	add.l d0,$8(a0)
	bsr.s sub_20c4e8
	btst.b #$7,$1(a0)
	beq.s loc_20c4e6
	lea ($d000).w,a1
	move.w $c(a1),d0
	sub.w $c(a0),d0
	bcc.s loc_20c4dc
	neg.w d0
loc_20c4dc:
	cmpi.w #$40,d0
	bcc.s loc_20c4e6
	bsr.w sub_20c168
loc_20c4e6:
	rts

sub_20c4e8:
	tst.w $10(a0)
	bpl.w loc_20c50e
	move.w $36(a0),d0
	sub.w $8(a0),d0
	bcs.s loc_20c50c
	cmpi.w #$e0,d0
	bcs.s loc_20c50c
	move.w $36(a0),d0
	addi.w #$e0,d0
	move.w d0,$8(a0)
loc_20c50c:
	rts
loc_20c50e:
	move.w $8(a0),d0
	sub.w $36(a0),d0
	bcs.s loc_20c52a
	cmpi.w #$e0,d0
	bcs.s loc_20c52a
	move.w $36(a0),d0
	subi.w #$e0,d0
	move.w d0,$8(a0)
loc_20c52a:
	rts
	.incbin 50476, 1142
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20c9d8(pc,d0.w),d0
	jsr dat_20c9d8(pc,d0.w)
	jsr (sub_203b46).l
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20c9d4
	rts
loc_20c9d4:
	bra.w loc_20c9de
dat_20c9d8:
	dc.b $00,$3a,$00,$66,$00,$ac
loc_20c9de:
	moveq #$0,d0
	move.b $23(a0),d0
	beq.s loc_20ca02
	lea ($ff1200).l,a1
	move.w d0,d1
	add.w d1,d1
	add.w d1,d0
	moveq #$0,d1
	move.b ($ff152e).l,d1
	add.w d1,d0
	bclr.b #$7,$2(a1,d0.w)
loc_20ca02:
	jmp (sub_203bf2).l

sub_20ca08:
	lea ($d000).w,a1
	jmp (sub_208880).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$435c,$2(a0)
	move.b #$3,$18(a0)
	move.l #$20cab6,$4(a0)
	move.b #$10,$19(a0)
	move.b #$10,$16(a0)
	rts
	btst.b #$7,$1(a0)
	beq.s loc_20ca70
	bsr.w sub_20ca08
	beq.s loc_20ca70
	addq.b #$2,$24(a0)
	moveq #$0,d0
	move.b ($ff152e).l,d0
	andi.b #$3,d0
	mulu.w #$6,d0
	lea dat_20ca72(pc,d0.w),a2
	move.w (a2)+,$10(a0)
	move.w (a2)+,$12(a0)
	move.w (a2),$3e(a0)
loc_20ca70:
	rts
dat_20ca72:
	.incbin 51826, 104
	tst.b $24(a0)
	bne.w loc_20cb24
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$50a,$2(a0)
	move.l #$20cc40,$4(a0)
	move.b #$a,$16(a0)
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	lea $0(a1,d0.w),a1
	move.w a1,$3c(a0)
loc_20cb24:
	move.w $34(a0),d0
	beq.s loc_20cb54
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
loc_20cb54:
	move.b $3f(a0),$3e(a0)
	move.w $8(a0),d3
	move.w $c(a0),d4
	lea ($d000).w,a1
	jsr (sub_208880).l
	beq.s loc_20cb72
	bsr.w sub_20cc24
loc_20cb72:
	movea.w $3c(a0),a4
	sne $3f(a0)
	bne.s loc_20cb82
	bclr.b #$7,(a4)
	bra.s loc_20cb8e
loc_20cb82:
	bsr.w sub_20cc24
	bset.b #$7,(a4)
	bset.b #$6,(a4)
loc_20cb8e:
	cmpi.w #$ff,$3e(a0)
	bne.s loc_20cbc8
	tst.b $1(a0)
	bpl.s loc_20cba6
	move.w #$bf,d0
	jsr (sub_20262a).l
loc_20cba6:
	bchg.b #$5,(a4)
	addq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20cbba
	addq.b #$4,$39(a0)
	bra.s loc_20cbbe
loc_20cbba:
	addq.w #$4,$c(a0)
loc_20cbbe:
	move.b #$1,$1a(a0)
	subq.b #$4,$16(a0)
loc_20cbc8:
	cmpi.w #$ff00,$3e(a0)
	bne.s loc_20cbec
	subq.w #$8,$c(a1)
	tst.w $34(a0)
	beq.s loc_20cbe0
	subq.b #$4,$39(a0)
	bra.s loc_20cbe4
loc_20cbe0:
	subq.w #$4,$c(a0)
loc_20cbe4:
	clr.b $1a(a0)
	addq.b #$4,$16(a0)
loc_20cbec:
	jsr (sub_203b46).l
	move.w $34(a0),d0
	bne.s loc_20cbfe
	jmp (sub_20794c).l
loc_20cbfe:
	movea.w d0,a1
	move.w $36(a1),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bhi.s loc_20cc1e
	rts
loc_20cc1e:
	jmp (loc_20796e).l

sub_20cc24:
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
	.incbin 52288, 26
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20cc74(pc,d0.w),d0
	jsr dat_20cc74(pc,d0.w)
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_20cc74:
	dc.b $00,$12,$00,$80,$00,$d6,$01,$80

sub_20cc7c:
	lea ($d000).w,a1
	jmp (sub_208880).l
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$4440,$2(a0)
	move.b #$2,$18(a0)
	move.l #$20cea2,$4(a0)
	move.w $8(a0),$36(a0)
	move.w $c(a0),$32(a0)
	move.b $28(a0),d0
	move.b d0,d1
	andi.b #$f,d1
	move.b d1,$30(a0)
	asr.b #$4,d0
	andi.w #$f,d0
	move.b d0,$31(a0)
	asl.b #$2,d0
	lea dat_20cce0(pc,d0.w),a1
	move.b (a1)+,$19(a0)
	move.b (a1)+,$16(a0)
	move.b (a1)+,$3b(a0)
	move.b (a1)+,$1a(a0)
	rts
dat_20cce0:
	.incbin 52448, 20
	moveq #$0,d0
	move.b $30(a0),d0
	lea ($f7e0).w,a1
	btst.b #$7,$0(a1,d0.w)
	seq $3c(a0)
	cmpi.b #$4,$31(a0)
	beq.s loc_20cd1a
	tst.b $3a(a0)
	beq.s loc_20cd1a
	clr.b $3c(a0)
loc_20cd1a:
	lea ($d000).w,a1
	move.w $8(a1),$38(a0)
	move.w $c(a1),$3e(a0)
	jsr sub_20ce0c(pc)
	bsr.w sub_20cc7c
	cmpi.b #$4,$31(a0)
	beq.s loc_20cd48
	move.b $3a(a0),d0
	cmp.b $3b(a0),d0
	bne.s loc_20cd48
	addq.b #$2,$24(a0)
loc_20cd48:
	rts
	.incbin 52554, 194

sub_20ce0c:
	moveq #$0,d0
	move.b $31(a0),d0
	add.b d0,d0
	move.w dat_20ce1c(pc,d0.w),d0
	jmp dat_20ce1c(pc,d0.w)
dat_20ce1c:
	.incbin 52764, 32
	jsr sub_20ce7a(pc)
	moveq #$0,d0
	move.b $3a(a0),d0
	add.w $36(a0),d0
	move.w d0,$8(a0)
	rts
	.incbin 52816, 42

sub_20ce7a:
	tst.b $3c(a0)
	beq.s loc_20ce8c
	subq.b #$8,$3a(a0)
	bcc.s loc_20cea0
	clr.b $3a(a0)
	bra.s loc_20cea0
loc_20ce8c:
	addq.b #$8,$3a(a0)
	move.b $3a(a0),d0
	cmp.b $3b(a0),d0
	bcs.s loc_20cea0
	move.b $3b(a0),$3a(a0)
loc_20cea0:
	rts
	.incbin 52898, 62
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ceee(pc,d0.w),d0
	jmp dat_20ceee(pc,d0.w)
dat_20ceee:
	dc.b $00,$06,$00,$3c,$00,$d6
	lea ($f7e0).w,a1
	moveq #$0,d0
	move.b $28(a0),d0
	adda.w d0,a1
	tst.b (a1)
	bne.w loc_20cfe2
	move.l a1,$30(a0)
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.w #$446a,$2(a0)
	move.l #$20cfe8,$4(a0)
	move.l #$40400340,$16(a0)
	movea.l $30(a0),a1
	tst.b (a1)
	bne.s loc_20cf48
	lea ($d000).w,a1
	jsr (sub_208880).l
	jsr (sub_203b46).l
	jmp (sub_20794c).l
loc_20cf48:
	addq.b #$2,$24(a0)
	move.b #$10,$17(a0)
	move.b #$10,$19(a0)
	move.w #$80,$2a(a0)
	move.l #$ffff0000,$2c(a0)
	addq.b #$1,$1a(a0)
	subi.w #$30,$8(a0)
	move.w #$2,d6
	move.w $8(a0),d5
loc_20cf78:
	jsr (sub_20792c).l
	bne.w loc_20cfe2
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
	bne.s loc_20cfbe
	neg.l $2c(a1)
	addq.b #$1,$1a(a1)
loc_20cfbe:
	dbf d6,loc_20cf78
	bra.s loc_20cfd2
	subq.w #$1,$2a(a0)
	bmi.s loc_20cfe2
	move.l $2c(a0),d0
	add.l d0,$c(a0)
loc_20cfd2:
	lea ($d000).w,a1
	jsr (sub_208880).l
	jmp (sub_203b46).l
loc_20cfe2:
	jmp (sub_203bf2).l
	.incbin 53224, 606
	jsr (sub_20fa2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d26a(pc,d0.w),d0
	jsr dat_20d26a(pc,d0.w)
	jsr (sub_203b46).l
	move.w $3e(a0),d0
	jmp (loc_207950).l
dat_20d26a:
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
	lea dat_20d344(pc),a1
	move.l #$ffff0000,d0
	move.w #$4,d1
	move.w #$100,d2
	tst.b $28(a0)
	beq.s loc_20d2d2
	lea dat_20d402(pc),a1
	move.l #$ffff8000,d0
	move.w #$1,d1
	move.w #$200,d2
loc_20d2d2:
	move.l a1,$4(a0)
	move.l d0,$30(a0)
	move.w d1,$34(a0)
	move.w d2,$38(a0)
	lsr.w #$1,d2
	move.w d2,$36(a0)
	move.l $30(a0),d0
	add.l d0,$8(a0)
	move.w $2e(a0),d0
	jsr (sub_200792).l
	swap d0
	clr.w d0
	asr.l #$4,d0
	add.l $2a(a0),d0
	move.l d0,$c(a0)
	move.w $34(a0),d0
	add.w d0,$2e(a0)
	addi.w #$ffff,$36(a0)
	bne.s loc_20d32e
	move.w $38(a0),$36(a0)
	neg.l $30(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20d32e:
	lea dat_20d338(pc),a1
	jmp (sub_205da8).l
dat_20d338:
	dc.b $00,$04,$00,$08,$02,$00,$01,$ff
	dc.b $04,$00,$02,$ff
dat_20d344:
	.incbin 54084, 190
dat_20d402:
	.incbin 54274, 174
	tst.b $28(a0)
	bmi.w loc_20d720
	jsr (sub_20fa2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d4d8(pc,d0.w),d0
	jsr dat_20d4d8(pc,d0.w)
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_20d4d8:
	dc.b $00,$0a,$00,$82,$00,$d2,$01,$10
	dc.b $01,$46
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
	lea dat_20d792(pc),a1
	lea dat_20d744(pc),a2
	move.l #$fffffa00,d0
	move.l #$100,d1
	tst.b $28(a0)
	beq.s loc_20d54a
	lea dat_20d750(pc),a1
	lea dat_20d73e(pc),a2
	move.l #$fffffe00,d0
	move.l #$c0,d1
loc_20d54a:
	move.l a1,$4(a0)
	move.l a2,$38(a0)
	move.l d0,$30(a0)
	move.l d1,$34(a0)
	move.l $2c(a0),d6
	add.l $30(a0),d6
	move.l #$fffe8000,d5
	tst.b $28(a0)
	beq.s loc_20d574
	move.l #$ffff4000,d5
loc_20d574:
	cmp.l d5,d6
	bgt.s loc_20d57e
	move.l d5,d6
	bra.w loc_20d586
loc_20d57e:
	neg.l d5
	cmp.l d5,d6
	blt.s loc_20d58e
	move.l d5,d6
loc_20d586:
	addq.b #$2,$24(a0)
	neg.l $30(a0)
loc_20d58e:
	move.l d6,$2c(a0)
	tst.b $28(a0)
	bne.s loc_20d59c
	bsr.w sub_20d642
loc_20d59c:
	movea.l $38(a0),a1
	jsr (sub_205da8).l
	bra.w loc_20d62e
	move.l $2c(a0),d6
	smi d0
	add.l $34(a0),d6
	smi d1
	eor.b d0,d1
	beq.s loc_20d5d6
	addq.b #$2,$24(a0)
	neg.l $34(a0)
	clr.l d6
	move.w #$3c,d0
	tst.b $28(a0)
	beq.s loc_20d5d2
	move.w #$3c,d0
loc_20d5d2:
	move.w d0,$2a(a0)
loc_20d5d6:
	move.l d6,$2c(a0)
	tst.b $28(a0)
	bne.s loc_20d5e4
	bsr.w sub_20d642
loc_20d5e4:
	bra.w loc_20d62e
	.incbin 54760, 70
loc_20d62e:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	move.w ($f646).w,$c(a0)
	subq.w #$8,$c(a0)
	rts

sub_20d642:
	subq.w #$1,$3c(a0)
	bpl.w loc_20d6e6
	move.w #$78,$3c(a0)
	lea ($d000).w,a6
	bsr.w sub_20d6e8
	bcc.w loc_20d6e6
	jsr (sub_207916).l
	bne.w loc_20d6e6
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
	beq.s loc_20d6d2
	neg.l d0
loc_20d6d2:
	move.l d0,$2c(a1)
	tst.b $1(a0)
	bpl.s loc_20d6e6
	move.w #$a0,d0
	jsr (sub_20262a).l
loc_20d6e6:
	rts

sub_20d6e8:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20d71e
	move.w $8(a6),d0
	sub.w $8(a0),d0
	smi d1
	subi.w #$ffa0,d0
	subi.w #$c0,d0
	bcc.s loc_20d71e
	btst.b #$0,$1(a0)
	seq d0
	eor.b d1,d0
	bne.s loc_20d71e
	ori.b #$1,ccr
loc_20d71e:
	rts
loc_20d720:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	movea.l $38(a0),a1
	jsr (sub_205da8).l
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_20d73e:
	dc.b $00,$02,$14,$00,$01,$ff
dat_20d744:
	dc.b $00,$04,$00,$08,$0a,$00,$01,$ff
	dc.b $05,$02,$03,$ff
dat_20d750:
	.incbin 55120, 66
dat_20d792:
	.incbin 55186, 82
	tst.b $28(a0)
	bpl.s loc_20d7ee
	bra.w loc_20db7c
loc_20d7ee:
	jsr (sub_20fa2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20d80e(pc,d0.w),d0
	jsr dat_20d80e(pc,d0.w)
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_20d80e:
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
	move.l #$20db48,$4(a0)
	move.l #$ffff0000,$2c(a0)
	move.w #$c8,$36(a0)
	tst.b $28(a0)
	beq.s loc_20d880
	move.l #$20db62,$4(a0)
	move.l #$ffff8000,$2c(a0)
	move.w #$190,$36(a0)
	rts
loc_20d880:
	jsr (sub_207916).l
	bne.w loc_20dbf4
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$30(a0)
	jsr (sub_207916).l
	bne.w loc_20dbf4
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$32(a0)
	jsr (sub_207916).l
	bne.w loc_20dbf4
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b $23(a0),$3d(a1)
	move.w a0,$3e(a1)
	move.w a1,$34(a0)
	movea.w $30(a0),a6
	bsr.s sub_20d922
	addq.w #$2,$8(a6)
	addi.w #$fff6,$c(a6)
	movea.w $32(a0),a6
	bsr.s sub_20d922
	addi.w #$fffd,$8(a6)
	addi.w #$fff6,$c(a6)
	movea.w $34(a0),a6
	bsr.s sub_20d922
	addi.w #$fff9,$8(a6)
	addi.w #$fff7,$c(a6)
	rts

sub_20d922:
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
	bne.s loc_20d966
	lea ($d000).w,a6
	bsr.w sub_20da0c
	bcs.w loc_20da3a
loc_20d966:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	tst.b $28(a0)
	bne.s loc_20d98c
	movea.w $30(a0),a1
	add.l d0,$8(a1)
	movea.w $32(a0),a1
	add.l d0,$8(a1)
	movea.w $34(a0),a1
	add.l d0,$8(a1)
loc_20d98c:
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20da02
	move.w $36(a0),$2a(a0)
	neg.l $2c(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	tst.b $28(a0)
	bne.s loc_20da02
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
	beq.s loc_20d9f6
	neg.w d1
	neg.w d2
	neg.w d3
	addi.w #$fffd,d1
	addi.w #$fffd,d2
	addi.w #$fffd,d3
loc_20d9f6:
	add.w d1,$8(a1)
	add.w d2,$8(a2)
	add.w d3,$8(a3)
loc_20da02:
	lea dat_20db42(pc),a1
	jmp (sub_205da8).l

sub_20da0c:
	move.w $c(a6),d0
	sub.w $c(a0),d0
	subi.w #$ffc8,d0
	subi.w #$38,d0
	bcc.s loc_20da38
	move.w $8(a6),d0
	sub.w $8(a0),d0
	btst.b #$0,$1(a0)
	bne.s loc_20da30
	neg.w d0
loc_20da30:
	subi.w #$28,d0
	subi.w #$78,d0
loc_20da38:
	rts
loc_20da3a:
	addq.b #$2,$24(a0)
	move.w #$3c,$2a(a0)
	rts
	addi.w #$ffff,$2a(a0)
	bpl.w loc_20daea
	tst.b $1(a0)
	bpl.s loc_20da60
	move.w #$b3,d0
	jsr (sub_20262a).l
loc_20da60:
	move.w #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	tst.b $28(a0)
	bne.w loc_20daea
	movea.w $30(a0),a1
	move.l #$fffe0000,$2a(a1)
	move.l #$fffd0000,$2e(a1)
	move.l #$0,$32(a1)
	move.l #$2000,$36(a1)
	addq.b #$2,$24(a1)
	movea.w $32(a0),a1
	move.l #$10000,$2a(a1)
	move.l #$fffd0000,$2e(a1)
	move.l #$0,$32(a1)
	move.l #$2000,$36(a1)
	addq.b #$2,$24(a1)
	movea.w $34(a0),a1
	move.l #$20000,$2a(a1)
	move.l #$fffd0000,$2e(a1)
	move.l #$0,$32(a1)
	move.l #$2000,$36(a1)
	addq.b #$2,$24(a1)
loc_20daea:
	rts
	addi.w #$ffff,$2a(a0)
	bpl.s loc_20db1a
	addq.b #$2,$24(a0)
	move.l #$40000,$2c(a0)
	tst.b $28(a0)
	beq.s loc_20db0e
	move.l #$18000,$2c(a0)
loc_20db0e:
	btst.b #$0,$1(a0)
	bne.s loc_20db1a
	neg.l $2c(a0)
loc_20db1a:
	rts
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	rts
	.incbin 56102, 28
dat_20db42:
	.incbin 56130, 58
loc_20db7c:
	movea.w $3e(a0),a1
	cmpi.b #$2d,$0(a1)
	bne.w loc_20dbf4
	move.b $23(a1),d0
	cmp.b $3d(a0),d0
	bne.w loc_20dbf4
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dba4(pc,d0.w),d0
	jmp dat_20dba4(pc,d0.w)
dat_20dba4:
	dc.b $00,$06,$00,$12,$00,$18
	addq.b #$2,$24(a0)
	move.l #$20dbfa,$4(a0)
	jmp (sub_203b46).l
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
	bge.s loc_20dbf4
	jmp (sub_203b46).l
loc_20dbf4:
	jmp (sub_203bf2).l
	dc.b $00,$02,$01,$00,$00,$00,$1b,$00
	tst.b $28(a0)
	beq.s loc_20dc0c
	bra.w loc_20de76
loc_20dc0c:
	jsr (sub_20fa2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20dc20(pc,d0.w),d0
	jmp dat_20dc20(pc,d0.w)
dat_20dc20:
	.incbin 56352, 18
	move.w $8(a0),$3e(a0)
	addq.b #$2,$24(a0)
	move.b #$4,$1(a0)
	move.b #$2f,$20(a0)
	move.b #$1,$18(a0)
	move.b #$18,$19(a0)
	move.b #$c,$16(a0)
	move.w #$23f0,$2(a0)
	move.l #$20de4c,$4(a0)
	addi.l #$10000,$c(a0)
	jsr (sub_206e64).l
	cmpi.w #$5,d1
	bmi.s loc_20dc98
loc_20dc7c:
	lea (dat_20de46).l,a1
	jsr (sub_205da8).l
	jsr (sub_203b46).l
	move.w $3e(a0),d0
	jmp (loc_207950).l
loc_20dc98:
	addq.b #$2,$24(a0)
	move.l #$500000,$2a(a0)
	move.l #$ffffc000,$2e(a0)
	bra.s loc_20dc7c
	addi.l #$ffffc000,$2a(a0)
	bmi.s loc_20dd0e
	move.l $2e(a0),d0
	add.l d0,$8(a0)
	jsr (sub_206e64).l
	subq.w #$5,d1
	add.w d1,$c(a0)
	moveq #$0,d3
	move.b $17(a0),d3
	lea (loc_206f2e).l,a1
	btst.b #$0,$1(a0)
	bne.s loc_20dce6
	lea (loc_2070d0).l,a1
loc_20dce6:
	jsr (a1)
	cmpi.w #$5,d1
	bmi.s loc_20dd0e
	move.w $8(a0),d0
	sub.w ($d008).w,d0
	btst.b #$0,$1(a0)
	beq.s loc_20dd00
	neg.w d0
loc_20dd00:
	subi.w #$10,d0
	subi.w #$40,d0
	bcs.s loc_20dd1c
	bra.w loc_20dc7c
loc_20dd0e:
	addq.b #$2,$24(a0)
	move.w #$1f,$32(a0)
	bra.w loc_20dc7c
loc_20dd1c:
	addq.b #$6,$24(a0)
	move.w #$7,$32(a0)
	bra.w loc_20dc7c
	addi.w #$ffff,$32(a0)
	beq.s loc_20dd36
	bra.w loc_20dc7c
loc_20dd36:
	addq.b #$2,$24(a0)
	move.w #$1f,$32(a0)
	move.l #$500000,$2a(a0)
	neg.l $2e(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	bra.w loc_20dc7c
	addi.w #$ffff,$32(a0)
	beq.s loc_20dd68
	bra.w loc_20dc7c
loc_20dd68:
	addi.b #$fc,$24(a0)
	bra.w loc_20dc7c
	addi.w #$ffff,$32(a0)
	beq.s loc_20dd7e
	bra.w loc_20dc7c
loc_20dd7e:
	addq.b #$2,$24(a0)
	move.w #$1f,$32(a0)
	bra.w loc_20dc7c
	addi.l #$2000,$c(a0)
	addi.w #$ffff,$32(a0)
	beq.s loc_20dda0
	bra.w loc_20dc7c
loc_20dda0:
	addq.b #$2,$24(a0)
	move.l #$fffb8000,$38(a0)
	btst.b #$0,$1(a0)
	beq.s loc_20ddb8
	neg.l $38(a0)
loc_20ddb8:
	move.l #$fffe8000,$34(a0)
	bra.w loc_20dc7c
	move.l $38(a0),d0
	add.l d0,$8(a0)
	moveq #$0,d3
	move.b $17(a0),d3
	lea (loc_206f2e).l,a1
	btst.b #$0,$1(a0)
	bne.s loc_20dde6
	lea (loc_2070d0).l,a1
loc_20dde6:
	jsr (a1)
	cmpi.w #$5,d1
	bmi.s loc_20dd7e
	move.l $34(a0),d0
	add.l d0,$c(a0)
	tst.l $34(a0)
	bpl.s loc_20de04
	addi.l #$2000,$34(a0)
loc_20de04:
	jsr (sub_20794c).l
	bra.w loc_20dc7c
	dc.b $11,$7c,$00,$06,$00,$24,$60,$00
	dc.b $fe,$66
	addi.l #$10000,$c(a0)
	jsr (sub_206e64).l
	cmpi.w #$5,d1
	bmi.s loc_20de30
	bra.w loc_20dc7c
loc_20de30:
	move.b #$6,$24(a0)
	subq.w #$5,d1
	add.w d1,$c(a0)
	move.w #$1f,$32(a0)
	bra.w loc_20dc7c
dat_20de46:
	.incbin 56902, 48
loc_20de76:
	jsr (sub_20fa2c).l
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20de8a(pc,d0.w),d0
	jmp dat_20de8a(pc,d0.w)
dat_20de8a:
	.incbin 56970, 614
	jsr (sub_20fa74).l
	tst.b $24(a0)
	bmi.w loc_20e1c4
	bne.w loc_20e254
	ori.b #$4,$1(a0)
	move.b #$5,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$c,$16(a0)
	lea dat_20e32e(pc),a1
	moveq #$0,d0
	move.b ($ff1507).l,d0
	asl.w #$2,d0
	add.b ($ff152e).l,d0
	add.w d0,d0
	move.w $0(a1,d0.w),$2(a0)
	btst.b #$0,$28(a0)
	beq.s loc_20e14a
	addi.w #$2000,$2(a0)
loc_20e14a:
	lea dat_20e2de(pc),a1
	btst.b #$0,$28(a0)
	beq.s loc_20e15a
	lea dat_20e306(pc),a1
loc_20e15a:
	move.l a1,$4(a0)
	move.w $c(a0),$2e(a0)
	move.b $28(a0),d0
	bpl.s loc_20e1a8
	subq.b #$2,$24(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	move.w $8(a0),$38(a0)
	move.l #$200,$34(a0)
	btst.l #$0,d0
	beq.s loc_20e1a6
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	neg.l $34(a0)
	move.l #$3000,$30(a0)
loc_20e1a6:
	rts
loc_20e1a8:
	addq.b #$2,$24(a0)
	move.b #$1,$1c(a0)
	move.l #$10000,$2a(a0)
	move.l #$100,$34(a0)
	rts
loc_20e1c4:
	movea.w $3e(a0),a1
	cmpi.b #$52,$0(a1)
	bne.s loc_20e1d6
	tst.b $3f(a1)
	beq.s loc_20e1dc
loc_20e1d6:
	jmp (sub_203bf2).l
loc_20e1dc:
	move.b $32(a0),d0
	jsr (sub_200792).l
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
	bne.s loc_20e244
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
	cmpi.b #$5,$18(a0)
	beq.s loc_20e23e
	move.b #$5,$18(a0)
	bra.s loc_20e244
loc_20e23e:
	move.b #$3,$18(a0)
loc_20e244:
	lea dat_20e2b8(pc),a1
	jsr (sub_205da8).l
	jmp (sub_203b46).l
loc_20e254:
	move.l $2a(a0),d0
	add.l d0,$8(a0)
	move.b $32(a0),d0
	jsr (sub_200792).l
	swap d0
	asr.l #$3,d0
	addi.l #$8000,d0
	swap d0
	add.w $2e(a0),d0
	move.w d0,$c(a0)
	move.l $34(a0),d0
	add.l d0,$30(a0)
	bmi.s loc_20e28e
	cmpi.l #$10000,$30(a0)
	blt.s loc_20e2a2
loc_20e28e:
	neg.l $34(a0)
	neg.l $2a(a0)
	bchg.b #$0,$1(a0)
	bchg.b #$0,$22(a0)
loc_20e2a2:
	lea dat_20e2b8(pc),a1
	jsr (sub_205da8).l
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_20e2b8:
	.incbin 58040, 38
dat_20e2de:
	.incbin 58078, 40
dat_20e306:
	.incbin 58118, 40
dat_20e32e:
	.incbin 58158, 598
	tst.b $24(a0)
	bne.s loc_20e5c8
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$1,$18(a0)
	move.w #$446a,$2(a0)
	move.l #$20e5ec,$4(a0)
	moveq #$0,d0
	move.b $28(a0),d0
	move.b d0,$1a(a0)
	add.w d0,d0
	lea dat_20e5de(pc,d0.w),a1
	move.b (a1)+,d0
	move.b (a1),d1
	move.b d0,$17(a0)
	move.b d0,$19(a0)
	move.b d1,$16(a0)
loc_20e5c8:
	lea ($d000).w,a1
	jsr (sub_208880).l
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_20e5de:
	.incbin 58846, 408
	move.b $28(a0),d0
	bpl.s loc_20e780
	bra.w loc_20e9ce
loc_20e780:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e79a(pc,d0.w),d0
	jsr dat_20e79a(pc,d0.w)
	jsr (sub_203b46).l
	jmp (sub_20794c).l
dat_20e79a:
	dc.b $00,$04,$01,$52
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$19(a0)
	move.b #$8,$16(a0)
	move.l #$20e9c6,$4(a0)
	move.w #$368,$2(a0)
	move.w #$100,$2c(a0)
	move.b $28(a0),d0
	beq.s loc_20e7d8
	neg.w $2c(a0)
loc_20e7d8:
	jsr (sub_207916).l
	beq.s loc_20e7e6
	jmp (sub_203bf2).l
loc_20e7e6:
	move.w a1,$2e(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.w a0,$3e(a1)
	jsr (sub_207916).l
	beq.s loc_20e814
	jmp (sub_203bf2).l
loc_20e814:
	move.w a1,$30(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.w a0,$3e(a1)
	jsr (sub_207916).l
	beq.s loc_20e842
	jmp (sub_203bf2).l
loc_20e842:
	move.w a1,$32(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.w a0,$3e(a1)
	jsr (sub_207916).l
	beq.s loc_20e870
	jmp (sub_203bf2).l
loc_20e870:
	move.w a1,$34(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.w a0,$3e(a1)
	jsr (sub_207916).l
	beq.s loc_20e89e
	jmp (sub_203bf2).l
loc_20e89e:
	move.w a1,$36(a0)
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.w a0,$3e(a1)
	jsr (sub_207916).l
	beq.s loc_20e8cc
	jmp (sub_203bf2).l
loc_20e8cc:
	move.w a1,$38(a0)
	move.b $0(a0),$0(a1)
	move.b #$fe,$28(a1)
	move.b #$8,$19(a1)
	move.b #$8,$16(a1)
	move.w a0,$3e(a1)
	move.w $2c(a0),d0
	add.w d0,$2a(a0)
	move.w $2a(a0),d0
	lsr.w #$8,d0
	jsr (sub_200792).l
	swap d0
	swap d1
	clr.w d0
	clr.w d1
	asr.l #$2,d0
	asr.l #$2,d1
	move.l d0,d4
	move.l d1,d5
	asr.l #$1,d0
	asr.l #$1,d1
	move.l d0,d2
	move.l d1,d3
	asr.l #$1,d0
	asr.l #$1,d1
	movea.w $2e(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	movea.w $30(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	movea.w $32(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	movea.w $34(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	movea.w $36(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d0,$2e(a1)
	add.l d1,$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	movea.w $38(a0),a1
	move.l $c(a0),$2e(a1)
	move.l $8(a0),$2a(a1)
	add.l d2,$2e(a1)
	add.l d3,$2a(a1)
	add.l d4,$2e(a1)
	add.l d5,$2a(a1)
	rts
	dc.b $00,$02,$01,$f8,$05,$00,$00,$f8
loc_20e9ce:
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20e9f4(pc,d0.w),d0
	jsr dat_20e9f4(pc,d0.w)
	movea.w $3e(a0),a1
	cmpi.b #$36,$0(a1)
	bne.s loc_20e9ee
	jmp (sub_203b46).l
loc_20e9ee:
	jmp (sub_203bf2).l
dat_20e9f4:
	dc.b $00,$04,$00,$48
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	cmpi.b #$ff,$28(a0)
	bne.w loc_20ea22
	move.b #$3,$18(a0)
	move.l #$20ea4a,$4(a0)
	move.w #$368,$2(a0)
	bra.s loc_20ea3c
loc_20ea22:
	move.b #$2,$18(a0)
	move.l #$20ea52,$4(a0)
	move.w #$370,$2(a0)
	move.b #$a9,$20(a0)
loc_20ea3c:
	move.w $2a(a0),$8(a0)
	move.w $2e(a0),$c(a0)
	rts
	.incbin 59978, 412
	lea ($d000).w,a1
	jsr (sub_20887a).l
	jmp (sub_203b46).l
	.incbin 60406, 880
	moveq #$0,d0
	move.b $24(a0),d0
	move.w dat_20ef80(pc,d0.w),d0
	jsr dat_20ef80(pc,d0.w)
	jsr (sub_203b46).l
	jmp (loc_20f03e).l
dat_20ef80:
	dc.b $00,$08,$00,$7a,$00,$8e,$00,$b4
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$20,$17(a0)
	move.b #$20,$19(a0)
	move.b #$40,$16(a0)
	move.w #$446a,$2(a0)
	move.l #$20f06a,$4(a0)
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
	move.l a1,$2c(a0)
	btst.b #$0,(a1)
	bne.s loc_20efee
	bset.b #$0,(a1)
	move.w #$3c,$2a(a0)
	addq.b #$2,$24(a0)
	rts
loc_20efee:
	addi.w #$c0,$8(a0)
	addq.b #$6,$24(a0)
	rts
	addi.w #$ffff,$2a(a0)
	bne.s loc_20f00c
	move.w #$180,$2a(a0)
	addq.b #$2,$24(a0)
loc_20f00c:
	bra.s sub_20f034
	bsr.s sub_20f034
	beq.s loc_20f01e
	move.l #$8000,d0
	asr.l #$8,d0
	move.w d0,$14(a1)
loc_20f01e:
	addi.l #$8000,$8(a0)
	addi.w #$ffff,$2a(a0)
	bne.s loc_20f032
	addq.b #$2,$24(a0)
loc_20f032:
	rts

sub_20f034:
	lea ($d000).w,a1
	jmp (sub_208880).l
loc_20f03e:
	move.w $8(a0),d0
	andi.w #$ff80,d0
	move.w ($f700).w,d1
	subi.w #$80,d1
	andi.w #$ff80,d1
	sub.w d1,d0
	cmpi.w #$280,d0
	bls.s loc_20f068
	movea.l $2c(a0),a1
	bclr.b #$7,(a1)
	jmp (sub_203bf2).l
loc_20f068:
	rts
	.incbin 61546, 464
	tst.b $28(a0)
	bmi.w loc_20f32e
	tst.b $24(a0)
	bne.s loc_20f2a6
	addq.b #$2,$24(a0)
	ori.b #$4,$1(a0)
	move.b #$3,$18(a0)
	move.b #$8,$17(a0)
	move.b #$8,$19(a0)
	move.b #$10,$16(a0)
	move.w #$4318,$2(a0)
	move.l #$20f326,$4(a0)
	move.l #$fffd0000,$2c(a0)
	move.w #$20,d6
	tst.b $28(a0)
	beq.s loc_20f29c
	bset.b #$0,$1(a0)
	bset.b #$0,$22(a0)
	neg.l $2c(a0)
	neg.w d6
loc_20f29c:
	move.w $8(a0),$30(a0)
	add.w d6,$30(a0)
loc_20f2a6:
	addi.w #$ffff,$2a(a0)
	bpl.s loc_20f31a
	move.w #$1e,$2a(a0)
	jsr (sub_207916).l
	bne.s loc_20f31a
	move.b $0(a0),$0(a1)
	move.b #$ff,$28(a1)
	move.w $30(a0),$8(a1)
	move.w $c(a0),$c(a1)
	addq.w #$4,$c(a1)
	move.l $2c(a0),$2c(a1)
	move.b $1(a0),$1(a1)
	move.b $18(a0),$18(a1)
	addq.b #$1,$18(a1)
	move.b #$20,$17(a1)
	move.b #$20,$19(a1)
	move.b #$6,$16(a1)
	move.w #$318,$2(a1)
	move.l #$20f38a,$4(a1)
	move.b $1(a0),$1(a1)
	move.b $22(a0),$22(a1)
loc_20f31a:
	jsr (sub_203b46).l
	jmp (sub_20794c).l
	dc.b $00,$02,$01,$f0,$07,$00,$00,$f8
loc_20f32e:
	lea ($d000).w,a1
	bsr.s sub_20f35e
	bcc.s loc_20f340
	move.l $2c(a0),d0
	asr.l #$8,d0
	move.w d0,$14(a1)
loc_20f340:
	move.l $2c(a0),d0
	add.l d0,$8(a0)
	lea dat_20f382(pc),a1
	jsr (sub_205da8).l
	jsr (sub_203b46).l
	jmp (sub_20794c).l

sub_20f35e:
	move.w $c(a1),d0
	sub.w $c(a0),d0
	subi.w #$fff4,d0
	subi.w #$18,d0
	bcc.s loc_20f380
	move.w $8(a1),d0
	sub.w $8(a0),d0
	subi.w #$ffec,d0
	subi.w #$28,d0
loc_20f380:
	rts
dat_20f382:
	.incbin 62338, 1706

sub_20fa2c:
	tst.b ($ff156a).l
	beq.s loc_20fa72
	cmpi.b #$1,($ff152e).l
	bne.s loc_20fa44
	tst.b $28(a0)
	beq.s loc_20fa72
loc_20fa44:
	move.w $8(a0),d5
	move.w $c(a0),d6
	jsr (sub_203bf2).l
	move.w d5,$8(a0)
	move.w d6,$c(a0)
	move.b #$18,$0(a0)
	tst.b $1(a0)
	bpl.s loc_20fa70
	move.w #$9e,d0
	jsr (sub_20262a).l
loc_20fa70:
	addq.l #$4,a7
loc_20fa72:
	rts

sub_20fa74:
	tst.b $28(a0)
	bmi.s loc_20faa4
	cmpi.b #$2,($ff152e).l
	bge.s loc_20fa94
	tst.b ($ff156d).l
	bne.s loc_20faa4
	addq.l #$4,a7
	jmp (sub_20794c).l
loc_20fa94:
	tst.b ($ff156a).l
	bne.s loc_20faa4
	addq.l #$4,a7
	jmp (sub_203bf2).l
loc_20faa4:
	rts

sub_20faa6:
	jmp (loc_206854).l
dat_20faac:
	.incbin 64172, 16
dat_20fabc:
	.incbin 64188, 382
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
	jmp (loc_203c2a).l
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
	.incbin 240246, 4696
dat_23bcce:
	.incbin 244942, 13056
dat_23efce:
	.incbin 257998, 364
dat_23f13a:
	.incbin 258362, 3782
