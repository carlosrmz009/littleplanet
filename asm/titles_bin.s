; TITLES.BIN
; disassembled from the disc; code only, data comes from data/TITLES.BIN at build time
	.file "TITLES.BIN", 8090

	.org 0, $010000		; sub CPU
	move.l #loc_010532,($5f78).w
	move.l #loc_01053a,($5f36).w
	move.b #$0,($8003).w
	moveq #$0,d0
	move.w d0,($8020).w
	move.b d0,($8022).w
	move.l d0,($8024).w
	move.l d0,($8028).w
	move.l d0,($802c).w
	bset.b #$7,($800f).w
	bclr.b #$1,($8033).w
	bclr.b #$3,($8033).w
	move.b #$3,($8004).w
	lea ($1e000).l,a0
	move.w #$7ff,d7
loc_01004e:
	move.l #$0,(a0)+
	dbf d7,loc_01004e
	bsr.w sub_0101fa
	bsr.w sub_0101f0
	lea ($80000).l,a0
	move.w #$7fff,d7
loc_01006a:
	move.l #$0,(a0)+
	move.l #$0,(a0)+
	dbf d7,loc_01006a
	lea ($b0000).l,a0
	move.w #$1fff,d7
loc_010084:
	move.l #$1080108,(a0)+
	dbf d7,loc_010084
	bsr.w sub_0105dc
	bsr.w sub_0100fc
	bset.b #$1,($8033).w
	bclr.b #$7,($800f).w
loc_0100a2:
	btst.b #$0,($800e).w
	beq.s loc_0100cc
	bset.b #$0,($800f).w
loc_0100b0:
	btst.b #$0,($800e).w
	bne.s loc_0100b0
	bclr.b #$0,($800f).w
	move.w #$86,d0
	moveq #$20,d1
	jsr ($5f22).w
	moveq #$0,d1
	rts
loc_0100cc:
	move.b ($8012).w,d0
	beq.s loc_0100a2
	move.b ($8012).w,($8022).w
loc_0100d8:
	tst.b ($8012).w
	bne.s loc_0100d8
	move.b #$0,($8022).w
	bsr.w sub_01022c
	bsr.w sub_010284
	bsr.w sub_010122
	bsr.w sub_0101c2
	bsr.w sub_0101d8
	bra.w loc_0100a2

sub_0100fc:
	lea ($1ee00).l,a1
	move.w #$480,$0(a1)
	move.w #$480,$2(a1)
	move.w #$140,$4(a1)
	move.w #$44,$6(a1)
	move.w #$100,$c(a1)
	rts

sub_010122:
	lea ($1ee00).l,a1
	move.w #$4,d0
	btst.b #$6,($801e).w
	beq.s loc_01013e
	sub.w d0,$c(a1)
	andi.w #$1ff,$c(a1)
loc_01013e:
	btst.b #$5,($801e).w
	beq.s loc_010150
	add.w d0,$c(a1)
	andi.w #$1ff,$c(a1)
loc_010150:
	moveq #$2,d0
	btst.b #$4,($801e).w
	beq.s loc_01015c
	moveq #$4,d0
loc_01015c:
	add.w d0,$2(a1)
	btst.b #$0,($801e).w
	beq.s loc_010172
	subq.w #$2,$6(a1)
	bcc.s loc_010172
	clr.w $6(a1)
loc_010172:
	btst.b #$1,($801e).w
	beq.s loc_01018c
	addq.w #$2,$6(a1)
	cmpi.w #$50,$6(a1)
	bcs.s loc_01018c
	move.w #$50,$6(a1)
loc_01018c:
	btst.b #$2,($801e).w
	beq.s loc_0101a6
	addq.w #$8,$4(a1)
	cmpi.w #$7ff,$4(a1)
	bcs.s loc_0101a6
	move.w #$7ff,$4(a1)
loc_0101a6:
	btst.b #$3,($801e).w
	beq.s loc_0101c0
	subq.w #$8,$4(a1)
	cmpi.w #$80,$4(a1)
	bcc.s loc_0101c0
	move.w #$80,$4(a1)
loc_0101c0:
	rts

sub_0101c2:
	move.b #$1,($1e300).l
	move.w #$2000,sr
loc_0101ce:
	tst.b ($1e300).l
	bne.s loc_0101ce
	rts

sub_0101d8:
	btst.b #$0,($8003).w
	bne.s loc_0101ee
	bset.b #$0,($8003).w
	btst.b #$0,($8003).w
	beq.s sub_0101d8
loc_0101ee:
	rts

sub_0101f0:
	btst.b #$1,($8003).w
	beq.s sub_0101f0
	rts

sub_0101fa:
	lea ($1ee00).l,a1
	move.w #$7,($8058).w
	move.w #$b,($805c).w
	move.w #$7400,($805e).w
	move.w #$0,($8060).w
	move.w #$100,($8062).w
	move.w #$80,$16(a1)
	move.w #$ffc0,$18(a1)
	rts

sub_01022c:
	lea ($1ee00).l,a6
	move.w $6(a6),d3
	bsr.w sub_01040e
	move.w d3,$8(a6)
	move.w $6(a6),d3
	bsr.w sub_01040a
	move.w d3,$a(a6)
	move.w $c(a6),d3
	bsr.w sub_01040e
	move.w d3,$e(a6)
	move.w $c(a6),d3
	bsr.w sub_01040a
	move.w d3,$10(a6)
	move.w $c(a6),d3
	addi.w #$100,d3
	bsr.w sub_01040e
	move.w d3,$12(a6)
	move.w $c(a6),d3
	addi.w #$100,d3
	bsr.w sub_01040a
	move.w d3,$14(a6)
	rts

sub_010284:
	bsr.w sub_0102a2
	andi.b #$e7,($8003).w
	move.w #$8000,($805a).w
	move.w #$60,($8064).w
	move.w #$7200,($8066).w
	rts

sub_0102a2:
	lea ($9c800).l,a5
	lea ($1ee00).l,a6
	move.w $0(a6),d0
	lsl.w #$3,d0
	move.w $2(a6),d1
	lsl.w #$3,d1
	move.w #$fffd,d2
	moveq #$8,d6
	move.w $a(a6),d3
	muls.w $e(a6),d3
	asr.l #$5,d3
	move.w d3,$5c(a6)
	move.w $a(a6),d3
	muls.w $10(a6),d3
	asr.l #$5,d3
	move.w d3,$60(a6)
	move.w $16(a6),d4
	move.w d4,d3
	muls.w $8(a6),d3
	muls.w $e(a6),d3
	asr.l #$5,d3
	move.l d3,$30(a6)
	move.w d4,d3
	muls.w $8(a6),d3
	muls.w $10(a6),d3
	asr.l #$5,d3
	move.l d3,$34(a6)
	move.w d4,d3
	muls.w $a(a6),d3
	move.l d3,$40(a6)
	move.w #$ff80,d3
	muls.w $10(a6),d3
	lsl.l #$3,d3
	movea.l d3,a1
	move.w #$ff80,d3
	muls.w $e(a6),d3
	lsl.l #$3,d3
	movea.l d3,a2
	move.w #$7f,d3
	muls.w $10(a6),d3
	lsl.l #$3,d3
	movea.l d3,a3
	move.w #$7f,d3
	muls.w $e(a6),d3
	lsl.l #$3,d3
	movea.l d3,a4
	move.w $8(a6),d4
	muls.w $e(a6),d4
	asr.l #$5,d4
	move.w $16(a6),d3
	add.w $18(a6),d3
	muls.w d4,d3
	asr.l d6,d3
	move.w d3,$54(a6)
	move.w $8(a6),d4
	muls.w $10(a6),d4
	asr.l #$5,d4
	move.w $16(a6),d3
	add.w $18(a6),d3
	muls.w d4,d3
	asr.l d6,d3
	move.w d3,$58(a6)
	move.w #$5f,d7
loc_010372:
	move.w d2,d3
	muls.w $8(a6),d3
	add.l $40(a6),d3
	asr.l #$5,d3
	bne.s loc_010382
	moveq #$1,d3
loc_010382:
	move.l a3,d4
	move.w $5c(a6),d5
	muls.w d2,d5
	sub.l d5,d4
	add.l $30(a6),d4
	asr.l d6,d4
	muls.w $4(a6),d4
	divs.w d3,d4
	add.w d0,d4
	sub.w $54(a6),d4
	move.w d4,(a5)+
	move.l a4,d4
	move.w $60(a6),d5
	muls.w d2,d5
	add.l d5,d4
	sub.l $34(a6),d4
	asr.l d6,d4
	muls.w $4(a6),d4
	divs.w d3,d4
	add.w d1,d4
	add.w $58(a6),d4
	move.w d4,(a5)+
	move.l a1,d4
	move.w $5c(a6),d5
	muls.w d2,d5
	sub.l d5,d4
	add.l $30(a6),d4
	asr.l d6,d4
	muls.w $4(a6),d4
	divs.w d3,d4
	add.w d0,d4
	sub.w $54(a6),d4
	sub.w -$4(a5),d4
	move.w d4,(a5)+
	move.l a2,d4
	move.w $60(a6),d5
	muls.w d2,d5
	add.l d5,d4
	sub.l $34(a6),d4
	asr.l d6,d4
	muls.w $4(a6),d4
	divs.w d3,d4
	add.w d1,d4
	add.w $58(a6),d4
	sub.w -$4(a5),d4
	move.w d4,(a5)+
	subq.w #$1,d2
	dbf d7,loc_010372
	rts

sub_01040a:
	addi.w #$80,d3

sub_01040e:
	andi.w #$1ff,d3
	move.w d3,d4
	btst.l #$7,d3
	beq.s loc_01041c
	not.w d4
loc_01041c:
	andi.w #$7f,d4
	add.w d4,d4
	move.w dat_010432(pc,d4.w),d4
	btst.l #$8,d3
	beq.s loc_01042e
	neg.w d4
loc_01042e:
	move.w d4,d3
	rts
dat_010432:
	.incbin 1074, 256
loc_010532:
	clr.b ($1e300).l
	rte
loc_01053a:
	rts

sub_01053c:
	subq.l #$2,a7
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_010548:
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_01055a
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_01055a:
	move.w d6,ccr
	bcc.s loc_010562
	move.b (a0)+,(a1)+
	bra.s loc_010548
loc_010562:
	moveq #$0,d3
	lsr.w #$1,d5
	move.w sr,d6
	dbf d4,loc_010576
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_010576:
	move.w d6,ccr
	bcs.s loc_0105a6
	lsr.w #$1,d5
	dbf d4,loc_01058a
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_01058a:
	roxl.w #$1,d3
	lsr.w #$1,d5
	dbf d4,loc_01059c
	move.b (a0)+,$1(a7)
	move.b (a0)+,(a7)
	move.w (a7),d5
	moveq #$f,d4
loc_01059c:
	roxl.w #$1,d3
	addq.w #$1,d3
	moveq #$ffffffff,d2
	move.b (a0)+,d2
	bra.s loc_0105bc
loc_0105a6:
	move.b (a0)+,d0
	move.b (a0)+,d1
	moveq #$ffffffff,d2
	move.b d1,d2
	lsl.w #$5,d2
	move.b d0,d2
	andi.w #$7,d1
	beq.s loc_0105c8
	move.b d1,d3
	addq.w #$1,d3
loc_0105bc:
	move.b $0(a1,d2.w),d0
	move.b d0,(a1)+
	dbf d3,loc_0105bc
	bra.s loc_010548
loc_0105c8:
	move.b (a0)+,d1
	beq.s loc_0105d8
	cmpi.b #$1,d1
	beq.w loc_010548
	move.b d1,d3
	bra.s loc_0105bc
loc_0105d8:
	addq.l #$2,a7
	rts

sub_0105dc:
	lea dat_0105fa(pc),a0
	lea ($80200).l,a1
	bsr.w sub_01053c
	lea dat_011daa(pc),a0
	lea ($a0000).l,a1
	bsr.w sub_01053c
	rts
dat_0105fa:
	.incbin 1530, 6064
dat_011daa:
	.incbin 7594, 496
