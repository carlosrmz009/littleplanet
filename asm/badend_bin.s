; BADEND.BIN
; disassembled from the disc; code only, data comes from data/BADEND.BIN at build time
	.file "BADEND.BIN", 640

	.org 0, $030000		; sub CPU
	dc.b $61,$00,$01,$44,$61,$00,$02,$06
	dc.b $61,$00,$02,$26
	move.b #$80,($ff000f).l
	bsr.w sub_03018a
	move.b #$fc,($ff0011).l
	move.w #$14,d0
	jsr ($7840).w
	move.w #$5,d0
	jsr ($7880).w
	bcs.w loc_030100
	move.w #$6,d0
	jsr ($7880).w
	bclr.b #$7,($ff800f).l
loc_030044:
	btst.b #$5,($b603).l
	beq.w loc_0300b8
	bsr.w sub_0301e8
	lea ($40000).l,a0
	moveq #$0,d0
	btst.b #$4,($b603).l
	beq.s loc_03006c
	move.w #$88,d1
	bra.s loc_030070
loc_03006c:
	move.w #$80,d1
loc_030070:
	lea ($ff0000).l,a6
	move.b d1,$f(a6)
	move.w #$ffe,d3
	lea ($ff2001).l,a6
loc_030084:
	move.b (a0)+,(a6)
	addq.l #$2,a6
	dbf d3,loc_030084
	addq.w #$1,d0
	addq.w #$1,d1
	cmpi.w #$7,d0
	bls.s loc_030070
	eori.b #$10,($b603).l
	btst.b #$3,($b603).l
	bne.s loc_0300b0
	bset.b #$3,($b603).l
loc_0300b0:
	bclr.b #$5,($b603).l
loc_0300b8:
	btst.b #$2,($ff800e).l
	beq.s loc_0300d8
	btst.b #$2,($ff800e).l
	beq.s loc_0300d8
	btst.b #$2,($ff800e).l
	bne.w loc_0300e8
loc_0300d8:
	move.w #$2,d0
	jsr ($7880).w
	bcs.w loc_030044
	bra.w loc_030100
loc_0300e8:
	move.w #$89,d0
	jsr ($5f22).w
	move.w #$7,d0
	jsr ($7880).w
	move.w #$3,d0
	jsr ($5f22).w
loc_030100:
	move.b #$ff,($ff0011).l
	move.b #$0,($ff000f).l
	bset.b #$1,($ff800f).l
loc_030118:
	btst.b #$4,($ff800e).l
	beq.s loc_030118
	btst.b #$4,($ff800e).l
	beq.s loc_030118
	btst.b #$4,($ff800e).l
	beq.s loc_030118
	bclr.b #$1,($ff800f).l
	clr.b ($ff800f).l
	rts
	.incbin 326, 68

sub_03018a:
	movem.l d2-d7,-(a7)
	lea ($ff0000).l,a6
	lea (dat_0301e0).l,a5
	lea ($ff0000).l,a6
	move.b #$c0,$f(a6)
	addq.l #$1,a6
	moveq #$6,d7
loc_0301aa:
	move.b (a5)+,(a6)
	move.b #$4,d4
loc_0301b0:
	dbf d4,loc_0301b0
	addq.l #$2,a6
	dbf d7,loc_0301aa
	lea ($ff0000).l,a6
	move.b #$c1,$f(a6)
	addq.l #$1,a6
	moveq #$6,d7
loc_0301ca:
	move.b (a5)+,(a6)
	move.b #$4,d4
loc_0301d0:
	dbf d4,loc_0301d0
	addq.l #$2,a6
	dbf d7,loc_0301ca
	movem.l (a7)+,d2-d7
	rts
dat_0301e0:
	dc.b $ff,$ff,$0c,$08,$00,$00,$80,$00

sub_0301e8:
	btst.b #$4,($b603).l
	bne.s loc_0301fe
loc_0301f2:
	cmpi.b #$7f,($ff0023).l
	bhi.s loc_03020a
	bra.s loc_0301f2
loc_0301fe:
	cmpi.b #$7f,($ff0023).l
	bls.s loc_03020a
	bra.s loc_0301fe
loc_03020a:
	rts
	.incbin 524, 116
