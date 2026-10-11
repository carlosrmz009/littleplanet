; IPX___.MMD
; disassembled from the disc; code only, data comes from data/IPX___.MMD at build time
	.file "IPX___.MMD", 4096
	.incbin 0, 256

	.org 256, $ff0000		; main CPU
	move.l #loc_ff0be4,($fd08).w
	bsr.w sub_ff0d1c
	lea ($ff0f00).l,a0
	move.w #$43f,d7
loc_ff0016:
	move.l #$0,(a0)+
	dbf d7,loc_ff0016
	moveq #$5,d0
	bsr.w sub_ff0af8
	move.w #$89,d0
	bsr.w sub_ff0af8
	tst.b d0
	beq.s loc_ff003a
	bset.b #$0,($ff0f1f).l
loc_ff003a:
	bsr.w sub_ff0c08
loc_ff003e:
	move.w #$86,d0
	bsr.w sub_ff0ce0
	moveq #$0,d0
	move.l d0,($ff1518).l
	move.b d0,($ff0f01).l
	move.b d0,($ff156e).l
	move.b d0,($ff158e).l
	move.w d0,($ff1512).l
	move.l d0,($ff1514).l
	move.b d0,($ff156a).l
	move.b d0,($ff156d).l
	move.b #$1,($ff152e).l
	moveq #$b,d0
	bsr.w sub_ff0af8
	ext.w d1
	add.w d1,d1
	move.w dat_ff0094(pc,d1.w),d1
	jsr dat_ff0094(pc,d1.w)
	bra.s loc_ff003e
dat_ff0094:
	.incbin 404, 42
loc_ff00be:
	move.b #$0,($a12013).l
	move.b #$0,($a1201a).l
	bset.b #$0,($a1201b).l
	moveq #$75,d0
	bsr.w sub_ff0af8
	rts
	.incbin 478, 146
	moveq #$0,d0
	move.b d0,($ff151c).l
	move.w d0,($ff1506).l
	move.w d0,($ff0f02).l
	move.b d0,($ff0f1a).l
	move.b d0,($ff0f21).l
	move.b d0,($ff0f20).l
	bsr.w sub_ff0c76
	bsr.w sub_ff03cc
	bsr.w sub_ff03dc
	bsr.w sub_ff03ec
	moveq #$3,d0
	bsr.w sub_ff05f8
	bset.b #$6,($ff0f1d).l
	bset.b #$5,($ff0f1d).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff156d).l
	bclr.b #$0,($ff156a).l
	beq.s loc_ff01de
	bset.b #$0,($ff0f1a).l
loc_ff01de:
	bsr.w sub_ff0c76
	move.b #$0,($ff1577).l
	bsr.w sub_ff03fc
	move.b #$0,($ff1577).l
	bsr.w sub_ff040c
	bsr.w sub_ff041c
	moveq #$6,d0
	bsr.w sub_ff05f8
	move.b #$0,($ff158e).l
	move.b #$0,($ff156d).l
	bclr.b #$0,($ff156a).l
	beq.s loc_ff0226
	bset.b #$1,($ff0f1a).l
loc_ff0226:
	bsr.w sub_ff0c76
	bsr.w sub_ff042c
	bsr.w sub_ff043c
	bsr.w sub_ff044c
	moveq #$9,d0
	bsr.w sub_ff05f8
	move.b #$0,($ff158e).l
	move.b #$0,($ff156d).l
	bclr.b #$0,($ff156a).l
	beq.s loc_ff025e
	bset.b #$2,($ff0f1a).l
loc_ff025e:
	bsr.w sub_ff0c76
	bsr.w sub_ff045c
	bsr.w sub_ff046c
	bsr.w sub_ff047c
	moveq #$c,d0
	bsr.w sub_ff05f8
	move.b #$0,($ff158e).l
	move.b #$0,($ff156d).l
	bclr.b #$0,($ff156a).l
	beq.s loc_ff0296
	bset.b #$3,($ff0f1a).l
loc_ff0296:
	bsr.w sub_ff0c76
	bsr.w sub_ff048c
	bsr.w sub_ff049a
	bsr.w sub_ff04a8
	moveq #$f,d0
	bsr.w sub_ff05f8
	move.b #$0,($ff158e).l
	move.b #$0,($ff156d).l
	bclr.b #$0,($ff156a).l
	beq.s loc_ff02ce
	bset.b #$4,($ff0f1a).l
loc_ff02ce:
	bsr.w sub_ff0c76
	bsr.w sub_ff04b8
	bsr.w sub_ff04c6
	bsr.w sub_ff04d4
	moveq #$12,d0
	bsr.w sub_ff05f8
	move.b #$0,($ff158e).l
	move.b #$0,($ff156d).l
	bclr.b #$0,($ff156a).l
	beq.s loc_ff0306
	bset.b #$5,($ff0f1a).l
loc_ff0306:
	bsr.w sub_ff0c76
	bsr.w sub_ff04e4
	bsr.w sub_ff04f2
	bsr.w sub_ff0500
	moveq #$15,d0
	bsr.w sub_ff05f8
	move.b #$0,($ff158e).l
	move.b #$0,($ff156d).l
	bclr.b #$0,($ff156a).l
	beq.s loc_ff033e
	bset.b #$6,($ff0f1a).l
loc_ff033e:
	move.b ($ff0f1a).l,(dat_ff03ca).l
	move.b ($ff0f20).l,(dat_ff03cb).l
	bsr.w sub_ff0c76
	cmpi.b #$7f,(dat_ff03ca).l
	beq.s loc_ff0384
	cmpi.b #$7f,(dat_ff03cb).l
	beq.s loc_ff0384
loc_ff036a:
	move.b #$0,($ff0f24).l
	move.w #$93,d0
	bsr.w sub_ff0af8
	tst.b (dat_ff0be3).l
	bmi.s loc_ff036a
	rts
loc_ff0384:
	move.b #$7f,($ff0f24).l
	move.w #$94,d0
	bsr.w sub_ff0af8
	tst.b (dat_ff0be3).l
	bmi.s loc_ff0384
	rts
loc_ff039e:
	move.b #$0,($ff1507).l
	move.w ($ff1506).l,($ff0f02).l
	move.b #$0,($ff158e).l
	move.b #$0,($ff156d).l
	bclr.b #$0,($ff156a).l
	rts
dat_ff03ca:
	dc.b $00
dat_ff03cb:
	dc.b $00

sub_ff03cc:
	lea dat_ff0608(pc),a0
	move.w #$0,($ff1506).l
	bra.w loc_ff0510

sub_ff03dc:
	lea dat_ff060c(pc),a0
	move.w #$1,($ff1506).l
	bra.w loc_ff0510

sub_ff03ec:
	lea dat_ff0610(pc),a0
	move.w #$2,($ff1506).l
	bra.w loc_ff05b4

sub_ff03fc:
	lea dat_ff0612(pc),a0
	move.w #$100,($ff1506).l
	bra.w loc_ff0510

sub_ff040c:
	lea dat_ff0616(pc),a0
	move.w #$101,($ff1506).l
	bra.w loc_ff0510

sub_ff041c:
	lea dat_ff061a(pc),a0
	move.w #$102,($ff1506).l
	bra.w loc_ff05b4

sub_ff042c:
	lea dat_ff061c(pc),a0
	move.w #$200,($ff1506).l
	bra.w loc_ff0510

sub_ff043c:
	lea dat_ff0620(pc),a0
	move.w #$201,($ff1506).l
	bra.w loc_ff0510

sub_ff044c:
	lea dat_ff0624(pc),a0
	move.w #$202,($ff1506).l
	bra.w loc_ff05b4

sub_ff045c:
	lea dat_ff0626(pc),a0
	move.w #$300,($ff1506).l
	bra.w loc_ff0510

sub_ff046c:
	lea dat_ff062a(pc),a0
	move.w #$301,($ff1506).l
	bra.w loc_ff0510

sub_ff047c:
	lea dat_ff062e(pc),a0
	move.w #$302,($ff1506).l
	bra.w loc_ff05b4

sub_ff048c:
	lea dat_ff0630(pc),a0
	move.w #$400,($ff1506).l
	bra.s loc_ff0510

sub_ff049a:
	lea dat_ff0634(pc),a0
	move.w #$401,($ff1506).l
	bra.s loc_ff0510

sub_ff04a8:
	lea dat_ff0638(pc),a0
	move.w #$402,($ff1506).l
	bra.w loc_ff05b4

sub_ff04b8:
	lea dat_ff063a(pc),a0
	move.w #$500,($ff1506).l
	bra.s loc_ff0510

sub_ff04c6:
	lea dat_ff063e(pc),a0
	move.w #$501,($ff1506).l
	bra.s loc_ff0510

sub_ff04d4:
	lea dat_ff0642(pc),a0
	move.w #$502,($ff1506).l
	bra.w loc_ff05b4

sub_ff04e4:
	lea dat_ff0644(pc),a0
	move.w #$600,($ff1506).l
	bra.s loc_ff0510

sub_ff04f2:
	lea dat_ff0648(pc),a0
	move.w #$601,($ff1506).l
	bra.s loc_ff0510

sub_ff0500:
	lea dat_ff064c(pc),a0
	move.w #$602,($ff1506).l
	bra.w loc_ff05b4
loc_ff0510:
	moveq #$0,d0
	move.b $0(a0),d0
loc_ff0516:
	bsr.w sub_ff0af8
	tst.b ($ff1508).l
	beq.s loc_ff055e
	btst.b #$7,($ff152e).l
	beq.s loc_ff055e
	moveq #$c,d0
	bsr.w sub_ff0af8
	move.b ($ff152e).l,d1
	moveq #$0,d0
	move.b $1(a0),d0
	andi.b #$7f,d1
	beq.s loc_ff0516
	move.b $0(a0),d0
	subq.b #$1,d1
	beq.s loc_ff0516
	move.b $3(a0),d0
	tst.b ($ff156a).l
	beq.s loc_ff0516
	move.b $2(a0),d0
	bra.s loc_ff0516
loc_ff055e:
	tst.b ($ff1508).l
	bne.s loc_ff056c
	move.l (a7)+,d0
	bra.w loc_ff039e
loc_ff056c:
	tst.b ($ff156e).l
	bne.s loc_ff0576
	rts
loc_ff0576:
	move.b ($ff0f21).l,($a12013).l
	move.b ($ff0f20).l,($a1201a).l
	bclr.b #$0,($a1201b).l
	moveq #$75,d0
	bsr.w sub_ff0af8
	move.b #$1,($ff0f22).l
	cmpi.b #$7f,($ff0f20).l
	bne.s loc_ff05b2
	move.b #$1,($ff156a).l
loc_ff05b2:
	rts
loc_ff05b4:
	moveq #$0,d0
	move.b $0(a0),d0
	tst.b ($ff156a).l
	bne.s loc_ff05c6
	move.b $1(a0),d0
loc_ff05c6:
	bsr.w sub_ff0af8
	tst.b ($ff1508).l
	bne.s loc_ff05d8
	move.l (a7)+,d0
	bra.w loc_ff039e
loc_ff05d8:
	addq.b #$1,($ff0f02).l
	cmpi.b #$7,($ff0f02).l
	bcs.s loc_ff05ee
	subq.b #$1,($ff0f02).l
loc_ff05ee:
	move.b #$0,($ff158e).l
	rts

sub_ff05f8:
	cmp.b ($ff0f18).l,d0
	bls.s loc_ff0606
	move.b d0,($ff0f18).l
loc_ff0606:
	rts
dat_ff0608:
	dc.b $01,$02,$03,$04
dat_ff060c:
	dc.b $07,$08,$09,$0a
dat_ff0610:
	dc.b $32,$33
dat_ff0612:
	dc.b $28,$29,$2a,$2b
dat_ff0616:
	dc.b $2c,$2d,$2e,$2f
dat_ff061a:
	dc.b $30,$31
dat_ff061c:
	dc.b $34,$35,$36,$37
dat_ff0620:
	dc.b $38,$39,$3a,$3b
dat_ff0624:
	dc.b $3c,$3d
dat_ff0626:
	dc.b $3e,$3f,$40,$41
dat_ff062a:
	dc.b $42,$43,$44,$45
dat_ff062e:
	dc.b $46,$47
dat_ff0630:
	dc.b $48,$49,$4a,$4b
dat_ff0634:
	dc.b $4c,$4d,$4e,$4f
dat_ff0638:
	dc.b $50,$51
dat_ff063a:
	dc.b $52,$53,$54,$55
dat_ff063e:
	dc.b $56,$57,$58,$59
dat_ff0642:
	dc.b $5a,$5b
dat_ff0644:
	dc.b $5c,$5d,$5e,$5f
dat_ff0648:
	dc.b $60,$61,$62,$63
dat_ff064c:
	dc.b $64,$65
	moveq #$6,d0
	bsr.w sub_ff0af8
	mulu.w #$6,d0
	move.w dat_ff068c(pc,d0.w),($ff1506).l
	move.b dat_ff068e(pc,d0.w),($ff152e).l
	move.b dat_ff068f(pc,d0.w),($ff156a).l
	move.w dat_ff068a(pc,d0.w),d0
	move.b #$0,($ff156d).l
	cmpi.w #$75,d0
	beq.w loc_ff00be
	bsr.w sub_ff0af8
	rts
dat_ff068a:
	dc.b $00,$01
dat_ff068c:
	dc.b $00,$00
dat_ff068e:
	dc.b $01
dat_ff068f:
	.incbin 1935, 463
	moveq #$5,d1
	lea ($ff0f1c).l,a6
	moveq #$0,d0
	move.b (a6),d0
	addq.b #$1,(a6)
	cmp.b (a6),d1
	bcc.s loc_ff0874
	move.b #$0,(a6)
loc_ff0874:
	add.w d0,d0
	move.w dat_ff087e(pc,d0.w),d0
	jmp dat_ff087e(pc,d0.w)
dat_ff087e:
	.incbin 2430, 186
loc_ff0938:
	move.w #$d7,d0
	bsr.w sub_ff0af8
	tst.b (dat_ff0be3).l
	bmi.s loc_ff0938
	rts
	.incbin 2634, 430

sub_ff0af8:
	move.l a0,-(a7)
	move.w d0,($a12010).l
	lea ($ff2000).l,a1
	moveq #$0,d0
	move.w #$daf,d7
loc_ff0b0c:
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	move.l d0,(a1)+
	dbf d7,loc_ff0b0c
	bsr.w sub_ff0d10
	move.l ($200008).l,d0
	beq.w loc_ff0bde
	movea.l d0,a0
	move.l ($200002).l,d0
	beq.s loc_ff0b44
	movea.l d0,a2
	lea ($200100).l,a1
	move.w ($200006).l,d7
loc_ff0b3e:
	move.l (a1)+,(a2)+
	dbf d7,loc_ff0b3e
loc_ff0b44:
	move.w sr,-(a7)
	move.l ($20000c).l,d0
	beq.s loc_ff0b52
	move.l d0,($fd0e).w
loc_ff0b52:
	move.l ($200010).l,d0
	beq.s loc_ff0b5e
	move.l d0,($fd08).w
loc_ff0b5e:
	btst.b #$6,($200000).l
	beq.s loc_ff0b6c
	bsr.w sub_ff0d1c
loc_ff0b6c:
	move.w (a7)+,sr
loc_ff0b6e:
	move.w ($a12020).l,d0
	beq.s loc_ff0b6e
	cmp.w ($a12020).l,d0
	bne.s loc_ff0b6e
	move.w #$0,($a12010).l
loc_ff0b86:
	move.w ($a12020).l,d0
	bne.s loc_ff0b86
	move.w ($a12020).l,d0
	bne.s loc_ff0b86
	jsr (a0)
	move.b d0,(dat_ff0be3).l
	bsr.w sub_ff0d30
	move.b #$e0,($a01c0a).l
	bsr.w sub_ff0d4e
	move.b #$0,($ff0f00).l
	move.l #loc_ff0c06,($fd0e).w
	move.l #loc_ff0be4,($fd08).w
	move.w #$8134,($ff0f16).l
	bset.b #$0,(dat_ff0be2).l
	bsr.w sub_ff0d5e
	bsr.w sub_ff0d1c
loc_ff0bde:
	movea.l (a7)+,a0
	rts
dat_ff0be2:
	dc.b $00
dat_ff0be3:
	dc.b $00
loc_ff0be4:
	bset.b #$0,($a12000).l
	bclr.b #$0,($ff0f00).l
	bclr.b #$0,(dat_ff0be2).l
	beq.s loc_ff0c06
	move.w #$8134,($c00004).l
loc_ff0c06:
	rte

sub_ff0c08:
	bsr.w sub_ff0c58
	move.w ($2002a4).l,($ff0f02).l
	move.b ($2002a7).l,($ff0f1a).l
	move.b ($2002a8).l,($ff0f1d).l
	move.b ($2002a5).l,($ff0f18).l
	move.b ($2002a6).l,($ff0f19).l
	move.b ($2002ac).l,($ff0f21).l
	move.b ($2002ad).l,($ff0f20).l
	bsr.w sub_ff0d1c
	rts

sub_ff0c58:
	bsr.w sub_ff0d1c
	move.w #$8b,d0
	btst.b #$0,($ff0f1f).l
	bne.s loc_ff0c6e
	move.w #$87,d0
loc_ff0c6e:
	bsr.w sub_ff0ce0
	bra.w sub_ff0d10

sub_ff0c76:
	bsr.s sub_ff0c58
	move.w ($ff0f02).l,($2002a4).l
	move.b ($ff0f1a).l,($2002a7).l
	move.b ($ff0f1d).l,($2002a8).l
	move.b ($ff0f18).l,($2002a5).l
	move.b ($ff0f19).l,($2002a6).l
	move.b ($ff0f21).l,($2002ac).l
	move.b ($ff0f20).l,($2002ad).l
	bsr.w sub_ff0d1c
	move.w #$8c,d0
	btst.b #$0,($ff0f1f).l
	bne.s loc_ff0cd4
	move.w #$88,d0
loc_ff0cd4:
	bsr.w sub_ff0ce0
	bsr.w sub_ff0d10
	bra.w sub_ff0d1c

sub_ff0ce0:
	move.w d0,($a12010).l
loc_ff0ce6:
	move.w ($a12020).l,d0
	beq.s loc_ff0ce6
	cmp.w ($a12020).l,d0
	bne.s loc_ff0ce6
	move.w #$0,($a12010).l
loc_ff0cfe:
	move.w ($a12020).l,d0
	bne.s loc_ff0cfe
	move.w ($a12020).l,d0
	bne.s loc_ff0cfe
	rts

sub_ff0d10:
	btst.b #$0,($a12003).l
	beq.s sub_ff0d10
	rts

sub_ff0d1c:
	bset.b #$1,($a12003).l
	btst.b #$1,($a12003).l
	beq.s sub_ff0d1c
	rts

sub_ff0d30:
	move.w sr,(dat_ff0da6).l
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff0d42:
	btst.b #$0,($a11100).l
	bne.s loc_ff0d42
	rts

sub_ff0d4e:
	move.w #$0,($a11100).l
	move.w (dat_ff0da6).l,sr
	rts

sub_ff0d5e:
	bset.b #$0,($ff0f00).l
	move.w #$2500,sr
loc_ff0d6a:
	btst.b #$0,($ff0f00).l
	bne.s loc_ff0d6a
	rts
	.incbin 3702, 48
dat_ff0da6:
	.incbin 3750, 346
