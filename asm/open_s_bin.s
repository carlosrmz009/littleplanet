; OPEN_S.BIN
; disassembled from the disc; code only, data comes from data/OPEN_S.BIN at build time
	.file "OPEN_S.BIN", 590

	.org 0, $030000		; sub CPU
	bsr.w sub_030144
	bsr.w sub_03020a
	bsr.w sub_03022e
	move.b #$80,($ff000f).l
	bsr.w sub_030188
	move.b #$fc,($ff0011).l
	move.w #$12,d0
	jsr ($7840).w
	move.w #$5,d0
	jsr ($7880).w
	bcs.w loc_0300fe
	move.w #$6,d0
	jsr ($7880).w
	bclr.b #$7,($ff800f).l
loc_030044:
	btst.b #$5,($b603).l
	beq.w loc_0300b6
	bsr.w sub_0301e6
	lea ($40000).l,a0
	moveq #$0,d0
	move.w #$80,d1
	btst.b #$4,($b603).l
	beq.s loc_03006e
	move.w #$88,d1
loc_03006e:
	lea ($ff0000).l,a6
	move.b d1,$f(a6)
	move.w #$ffe,d3
	lea ($ff2001).l,a6
loc_030082:
	move.b (a0)+,(a6)
	addq.l #$2,a6
	dbf d3,loc_030082
	addq.w #$1,d0
	addq.w #$1,d1
	cmpi.w #$7,d0
	bls.s loc_03006e
	eori.b #$10,($b603).l
	btst.b #$3,($b603).l
	bne.s loc_0300ae
	bset.b #$3,($b603).l
loc_0300ae:
	bclr.b #$5,($b603).l
loc_0300b6:
	btst.b #$2,($ff800e).l
	beq.s loc_0300d6
	btst.b #$2,($ff800e).l
	beq.s loc_0300d6
	btst.b #$2,($ff800e).l
	bne.w loc_0300e6
loc_0300d6:
	move.w #$2,d0
	jsr ($7880).w
	bcs.w loc_030044
	bra.w loc_0300fe
loc_0300e6:
	move.w #$7,d0
	jsr ($7880).w
	move.w #$89,d0
	jsr ($5f22).w
	move.w #$3,d0
	jsr ($5f22).w
loc_0300fe:
	move.b #$ff,($ff0011).l
	move.b #$0,($ff000f).l
	bset.b #$1,($ff800f).l
loc_030116:
	btst.b #$4,($ff800e).l
	beq.s loc_030116
	btst.b #$4,($ff800e).l
	beq.s loc_030116
	btst.b #$4,($ff800e).l
	beq.s loc_030116
	bclr.b #$1,($ff800f).l
	clr.b ($ff800f).l
	rts

sub_030144:
	move.b #$ff,($ff0011).l
	move.b #$80,($ff000f).l
	moveq #$0,d0
	move.b #$80,d1
loc_03015a:
	move.b d1,($ff000f).l
	move.w #$fff,d2
	lea ($ff2001).l,a6
loc_03016a:
	move.b #$0,(a6)
	addq.l #$2,a6
	dbf d2,loc_03016a
	addq.w #$1,d0
	addq.w #$1,d1
	cmpi.w #$10,d0
	blt.s loc_03015a
	move.b #$ff,($ff3fff).l
	rts

sub_030188:
	movem.l d2-d7,-(a7)
	lea ($ff0000).l,a6
	lea (dat_0301de).l,a5
	lea ($ff0000).l,a6
	move.b #$c0,$f(a6)
	addq.l #$1,a6
	moveq #$6,d7
loc_0301a8:
	move.b (a5)+,(a6)
	move.b #$4,d4
loc_0301ae:
	dbf d4,loc_0301ae
	addq.l #$2,a6
	dbf d7,loc_0301a8
	lea ($ff0000).l,a6
	move.b #$c1,$f(a6)
	addq.l #$1,a6
	moveq #$6,d7
loc_0301c8:
	move.b (a5)+,(a6)
	move.b #$4,d4
loc_0301ce:
	dbf d4,loc_0301ce
	addq.l #$2,a6
	dbf d7,loc_0301c8
	movem.l (a7)+,d2-d7
	rts
dat_0301de:
	dc.b $ff,$ff,$0c,$08,$00,$00,$80,$00

sub_0301e6:
	btst.b #$4,($b603).l
	bne.s loc_0301fc
loc_0301f0:
	cmpi.b #$7f,($ff0023).l
	bhi.s loc_030208
	bra.s loc_0301f0
loc_0301fc:
	cmpi.b #$7f,($ff0023).l
	bls.s loc_030208
	bra.s loc_0301fc
loc_030208:
	rts

sub_03020a:
	bset.b #$2,($ff8003).l
loc_030212:
	btst.b #$2,($ff8003).l
	beq.s loc_030212
	move.b #$0,($ff800f).l
	bset.b #$7,($ff800f).l
	rts

sub_03022e:
	btst.b #$1,($ff800e).l
	beq.s sub_03022e
	btst.b #$1,($ff800e).l
	beq.s sub_03022e
	btst.b #$1,($ff800e).l
	beq.s sub_03022e
	rts
