; THANKS_S.BIN
; disassembled from the disc; code only, data comes from data/THANKS_S.BIN at build time
	.file "THANKS_S.BIN", 2366

	.org 0, $010000		; sub CPU
	dc.b $21,$fc,$00,$01,$00,$f4,$5f,$78
	move.b #$0,($8003).w
	moveq #$0,d0
	move.l d0,($8020).w
	move.l d0,($8024).w
	move.l d0,($8028).w
	move.l d0,($802c).w
	move.b d0,($800f).w
	bset.b #$7,($800f).w
	bclr.b #$1,($8033).w
	bclr.b #$3,($8033).w
	move.b #$3,($8004).w
	lea ($1c000).l,a0
	move.w #$7ff,d7
loc_010046:
	move.l #$0,(a0)+
	dbf d7,loc_010046
	bsr.w sub_0100ea
	bra.s loc_010070
	.incbin 86, 26
loc_010070:
	bset.b #$1,($8033).w
	bclr.b #$7,($800f).w
loc_01007c:
	bsr.w sub_0100ea
	bsr.w sub_0100fe
	bsr.w sub_0100d2
	btst.b #$6,($800e).w
	bne.s loc_010094
	bra.w loc_01007c
loc_010094:
	bsr.w sub_0100a0
	nop
	nop
	nop
	rts

sub_0100a0:
	bset.b #$6,($800f).w
loc_0100a6:
	btst.b #$6,($800e).w
	bne.s loc_0100a6
	bclr.b #$6,($800f).w
	rts
	.incbin 182, 28

sub_0100d2:
	btst.b #$0,($8003).w
	bne.s loc_0100e8
	bset.b #$0,($8003).w
	btst.b #$0,($8003).w
	beq.s sub_0100d2
loc_0100e8:
	rts

sub_0100ea:
	btst.b #$1,($8003).w
	beq.s sub_0100ea
	rts
	dc.b $13,$fc,$00,$00,$00,$01,$c8,$00
	dc.b $4e,$73

sub_0100fe:
	moveq #$0,d0
	move.b ($80020).l,d0
	beq.s loc_010148
	subq.w #$1,d0
	cmpi.w #$b,d0
	bcc.s loc_01012e
	add.w d0,d0
	lea (dat_01014a).l,a0
	move.w $0(a0,d0.w),d0
	moveq #$0,d1
	jsr $0(a0,d0.w)
	bcs.s loc_01012e
	move.b #$0,($80021).l
	bra.s loc_010136
loc_01012e:
	move.b #$ff,($80021).l
loc_010136:
	move.w d0,($80022).l
	move.w d1,($80024).l
	clr.b ($80020).l
loc_010148:
	rts
dat_01014a:
	.incbin 330, 2036
