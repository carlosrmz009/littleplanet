; ATTACK.BIN
; disassembled from the disc; code only, data comes from data/ATTACK.BIN at build time
	.file "ATTACK.BIN", 2302

	.org 0, $010000		; sub CPU
	dc.b $21,$fc,$00,$01,$00,$b6,$5f,$78
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
	bsr.w sub_010094
	bsr.w sub_01009e
	bset.b #$1,($8033).w
	bclr.b #$7,($800f).w
loc_01004c:
	jsr (sub_010094).l
	moveq #$0,d0
	move.b ($80000).l,d0
	bmi.s loc_010088
	clr.b ($80000).l
	add.w d0,d0
	move.w dat_010074(pc,d0.w),d0
	jsr dat_010074(pc,d0.w)
	jsr (sub_01009e).l
	bra.s loc_01004c
dat_010074:
	.incbin 116, 20
loc_010088:
	jsr (sub_01009e).l
	nop
	nop
	rts

sub_010094:
	btst.b #$1,($8003).w
	beq.s sub_010094
	rts

sub_01009e:
	btst.b #$0,($8003).w
	bne.s loc_0100b4
	bset.b #$0,($8003).w
loc_0100ac:
	btst.b #$0,($8003).w
	beq.s loc_0100ac
loc_0100b4:
	rts
	.incbin 182, 2120
