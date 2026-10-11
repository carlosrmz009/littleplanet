; BRAMSUB.BIN
; disassembled from the disc; code only, data comes from data/BRAMSUB.BIN at build time
	.file "BRAMSUB.BIN", 2592

	.org 0, $010000		; sub CPU
	move.l #$100d2,($5f78).w
	move.b #$0,($8003).w
	moveq #$0,d0
	move.l d0,($8020).w
	move.l d0,($8024).w
	move.l d0,($8028).w
	move.l d0,($802c).w
	bset.b #$7,($800f).w
	bclr.b #$1,($8033).w
	bclr.b #$3,($8033).w
	move.b #$3,($8004).w
	lea ($16000).l,a0
	move.w #$7ff,d7
loc_010042:
	move.l #$0,(a0)+
	dbf d7,loc_010042
	bsr.w sub_0101ba
	lea ($80000).l,a0
	move.w #$7fff,d7
loc_01005a:
	move.l #$0,(a0)+
	move.l #$0,(a0)+
	dbf d7,loc_01005a
	bset.b #$1,($8033).w
	bclr.b #$7,($800f).w
loc_010076:
	bsr.w sub_0101ba
	btst.b #$7,($800e).w
	bne.s loc_01008e
	bsr.w sub_0101e0
	bsr.w sub_0101aa
	bra.w loc_010076
loc_01008e:
	bset.b #$7,($800f).w
loc_010094:
	btst.b #$7,($800e).w
	bne.s loc_010094
	moveq #$0,d0
	move.l d0,($8020).w
	move.l d0,($8024).w
	move.l d0,($8028).w
	move.l d0,($802c).w
	move.b d0,($800f).w
	nop
	rts
	.incbin 182, 244

sub_0101aa:
	bset.b #$0,($8003).w
	btst.b #$0,($8003).w
	beq.s sub_0101aa
	rts

sub_0101ba:
	btst.b #$1,($8003).w
	beq.s sub_0101ba
	rts
	.incbin 452, 28

sub_0101e0:
	moveq #$0,d0
	move.b ($80020).l,d0
	beq.s loc_01022a
	subq.w #$1,d0
	cmpi.w #$b,d0
	bcc.s loc_010210
	add.w d0,d0
	lea (dat_01022c).l,a0
	move.w $0(a0,d0.w),d0
	moveq #$0,d1
	jsr $0(a0,d0.w)
	bcs.s loc_010210
	move.b #$0,($80021).l
	bra.s loc_010218
loc_010210:
	move.b #$ff,($80021).l
loc_010218:
	move.w d0,($80022).l
	move.w d1,($80024).l
	clr.b ($80020).l
loc_01022a:
	rts
dat_01022c:
	.incbin 556, 22
	lea (dat_0103d4).l,a0
	lea (dat_010a14).l,a1
	moveq #$0,d0
	jmp ($5f16).w
	moveq #$1,d0
	movea.l #dat_010a14,a1
	jmp ($5f16).w
	movea.l #$80030,a0
	move.b #$0,$b(a0)
	move.l #$0,$c(a0)
	moveq #$2,d0
	jmp ($5f16).w
	.incbin 634, 88

sub_0102d2:
	movea.l #$80030,a0
	move.b ($80029).l,$b(a0)
	move.w ($8002a).l,$c(a0)
	movea.l #$80040,a1
	moveq #$4,d0
	jsr ($5f16).w
	rts
	tst.b ($80028).l
	bne.s loc_010316
	bsr.s sub_0102d2
	bsr.w sub_010394
	move.w #$0,($80022).l
	move.w #$0,($80024).l
	rts
loc_010316:
	bsr.w sub_010394
	move.w #$0,($80022).l
	move.w #$0,($80024).l
	rts
	.incbin 812, 70
	movea.l #$80030,a0
	move.b ($80029).l,$b(a0)
	move.w ($8002a).l,$c(a0)
	movea.l #$80040,a1
	moveq #$8,d0
	jmp ($5f16).w

sub_010394:
	movem.l d0/a0-a1,-(a7)
	movea.l #$80040,a0
	movea.l #$7400,a1
	move.w #$af,d0
loc_0103a8:
	move.l (a0)+,(a1)+
	dbf d0,loc_0103a8
	movem.l (a7)+,d0/a0-a1
	rts
	.incbin 948, 32
dat_0103d4:
	.incbin 980, 1600
dat_010a14:
	dc.b $00,$00,$00,$00,$00,$00,$00,$00
	dc.b $00,$00,$00,$00
