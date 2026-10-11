; SPX___.BIN
; disassembled from the disc; code only, data comes from data/SPX___.BIN at build time
	.file "SPX___.BIN", 17408

	.org 0, $00b800		; sub CPU
	.incbin 0, 52
dat_00b834:
	.incbin 52, 26
dat_00b84e:
	.incbin 78, 65
dat_00b88f:
	dc.b $54,$49,$54,$4c,$45,$4d,$2e,$4d
	dc.b $4d,$44,$3b,$31,$00
dat_00b89c:
	dc.b $54,$49,$54,$4c,$45,$53,$2e,$42
	dc.b $49,$4e,$3b,$31,$00
dat_00b8a9:
	.incbin 169, 39
dat_00b8d0:
	.incbin 208, 66
dat_00b912:
	dc.b $4f,$50,$45,$4e,$5f,$4d,$2e,$4d
	dc.b $4d,$44,$3b,$31,$00
dat_00b91f:
	dc.b $4f,$50,$45,$4e,$5f,$53,$2e,$42
	dc.b $49,$4e,$3b,$31,$00
dat_00b92c:
	.incbin 300, 849
dat_00bc7d:
	dc.b $53,$50,$4d,$4d,$5f,$5f,$2e,$4d
	dc.b $4d,$44,$3b,$31,$00
dat_00bc8a:
	.incbin 1162, 190
dat_00bd48:
	dc.b $42,$52,$41,$4d,$49,$4e,$49,$54
	dc.b $2e,$4d,$4d,$44,$3b,$31,$00
dat_00bd57:
	.incbin 1367, 321
dat_00be98:
	dc.b $53,$4f,$4e,$49,$43,$43,$44,$5f
	dc.b $5f,$5f,$5f,$00
dat_00bea4:
	.incbin 1700, 348
	lea ($7000).w,a0
	move.w #$ff,d7
loc_00c008:
	move.l #$0,(a0)+
	dbf d7,loc_00c008
	bclr.b #$3,($8033).w
	move.l #loc_00cff6,($5f84).w
	move.b #$ff,($8031).w
loc_00c026:
	move.w ($8010).w,d0
	beq.s loc_00c026
	cmp.w ($8010).w,d0
	bne.s loc_00c026
	cmpi.w #$da,d0
	bcc.w loc_00d01c
	move.w d0,d1
	add.w d0,d0
	move.w dat_00c05e(pc,d0.w),d0
	jsr dat_00c05e(pc,d0.w)
	move.l #$7700,($5f36).w
	bclr.b #$1,($8033).w
	move.l #$cff4,($5f78).w
	bra.s loc_00c026
dat_00c05e:
	.incbin 2142, 652
	moveq #$0,d0
	move.b d0,($802a).w
	move.b d0,($8023).w
	move.l d0,($8026).w
	move.w d0,($8024).w
	bra.w loc_00d01c
	lea dat_00bd48(pc),a0
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	bsr.w sub_00d00e
	lea dat_00bd57(pc),a0
	lea ($10000).l,a1
	jsr ($7800).w
	jsr ($10000).l
	move.l #$7700,($5f36).w
	rts
	lea dat_00d084(pc),a0
	lea dat_00d6c4(pc),a1
	move.w #$0,d0
	jsr ($5f16).w
loc_00c344:
	bsr.w sub_00d036
	lea dat_00be98(pc),a0
	lea ($80000).l,a1
	move.w #$3,d0
	jsr ($5f16).w
	bcs.s loc_00c344
	bra.w sub_00d00e
	lea dat_00d084(pc),a0
	lea dat_00d6c4(pc),a1
	move.w #$0,d0
	jsr ($5f16).w
loc_00c370:
	bsr.w sub_00d036
	lea dat_00bea4(pc),a0
	lea ($80000).l,a1
	move.w #$4,d0
	moveq #$0,d1
	jsr ($5f16).w
	bcs.s loc_00c370
	bra.w sub_00d00e
	.incbin 2958, 56
	add.w d1,d1
	lea dat_00c41c(pc),a1
	move.w $0(a1,d1.w),d2
	lea $0(a1,d2.w),a0
	move.l d1,-(a7)
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	bsr.w sub_00cc66
	bclr.b #$3,($8033).w
	move.l (a7)+,d1
	add.w d1,d1
	lea dat_00c548(pc),a1
	move.l ($7000).w,d0
	cmp.l $0(a1,d1.w),d0
	beq.s loc_00c412
	movea.l $0(a1,d1.w),a0
	move.l a0,($7000).w
	lea ($40000).l,a1
	jsr ($7800).w
loc_00c412:
	bset.b #$3,($8033).w
	bra.w sub_00d00e
dat_00c41c:
	.incbin 3100, 300
dat_00c548:
	.incbin 3400, 600
	lea dat_00b834(pc),a0
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	bra.w sub_00d00e
	lea dat_00b88f(pc),a0
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	lea dat_00b89c(pc),a0
	lea ($10000).l,a1
	jsr ($7800).w
	bsr.w sub_00d00e
	bsr.w sub_00cc66
	lea dat_00d070(pc),a0
	move.w #$12,d0
	jsr ($5f22).w
	jsr ($10000).l
	move.l #$7700,($5f36).w
	rts
	lea dat_00b92c(pc),a0
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	bsr.w sub_00d00e
	bsr.w sub_00cc66
	lea dat_00d078(pc),a0
	move.w #$13,d0
	jmp ($5f22).w
	.incbin 4128, 194
	lea dat_00b8d0(pc),a0
	bra.s loc_00c910
	.incbin 4328, 36
	lea dat_00b84e(pc),a0
loc_00c910:
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	bra.w sub_00d00e
	.incbin 4386, 38
	lea dat_00b8a9(pc),a0
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	bra.w sub_00d00e
	.incbin 4446, 126
	bclr.b #$3,($8033).w
	lea dat_00b912(pc),a0
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	bsr.w sub_00d00e
	lea dat_00b91f(pc),a0
	lea ($30000).l,a1
	jsr ($7800).w
	jsr ($30000).l
	move.l #$7700,($5f36).w
	andi.b #$fa,($8003).w
	move.b #$3,($8004).w
	move.l #$0,($7000).w
	rts
	.incbin 4650, 156
	bclr.b #$3,($8033).w
	move.b ($8013).w,($8023).w
	move.b ($801a).w,($802a).w
	move.b ($801b).w,($7004).w
	lea dat_00bc7d(pc),a0
	bsr.w sub_00d036
	lea ($80000).l,a1
	jsr ($7800).w
	lea dat_00bc8a(pc),a0
	lea ($10000).l,a1
	jsr ($7800).w
	moveq #$0,d0
	move.b ($8023).w,d0
	mulu.w #$6,d0
	lea ($18000).l,a0
	move.w $4(a0,d0.w),d7
	movea.l $0(a0,d0.w),a0
	lea ($86d00).l,a1
loc_00cb1c:
	move.b (a0)+,(a1)+
	dbf d7,loc_00cb1c
	bsr.w sub_00d00e
	bsr.w sub_00cc66
	lea dat_00d07c(pc),a0
	move.w #$13,d0
	jsr ($5f22).w
	jsr ($10000).l
	move.l #$7700,($5f36).w
	btst.b #$1,($7004).w
	bne.s loc_00cb5c
	bsr.w sub_00cc66
	lea dat_00d074(pc),a0
	move.w #$12,d0
	jsr ($5f22).w
loc_00cb5c:
	move.b #$0,($7004).w
	move.l #$0,($7000).w
	rts
	move.b #$b1,($40022).l
	bra.w loc_00d01c
	move.b #$b2,($40022).l
	bra.w loc_00d01c
	.incbin 4996, 24
	move.b #$b5,($40022).l
	bra.w loc_00d01c
	.incbin 5032, 48
	move.b #$ba,($40022).l
	bra.w loc_00d01c
	move.b #$bb,($40022).l
	bra.w loc_00d01c
	move.b #$81,($40022).l
	bra.w loc_00d01c
	move.b #$e0,($40022).l
	bra.w loc_00d01c
	dc.b $13,$fc,$00,$e1,$00,$04,$00,$22
	dc.b $60,$00,$04,$0a
	move.b #$e2,($40022).l
	bra.w loc_00d01c
	move.b #$e3,($40022).l
	bra.w loc_00d01c
	dc.b $61,$00,$00,$38,$60,$00,$03,$ea
	move.w #$86,d0
	moveq #$20,d1
	jsr ($5f22).w
	bra.w loc_00d01c
	dc.b $30,$3c,$00,$02,$4e,$b8,$5f,$22
	dc.b $60,$00,$03,$d0
	move.w #$3,d0
	jsr ($5f22).w
	bra.w loc_00d01c
	move.w #$4,d0
	jsr ($5f22).w
	bra.w loc_00d01c

sub_00cc66:
	move.l a0,-(a7)
	move.w #$85,d0
	move.w #$380,d1
	jsr ($5f22).w
	move.w #$85,d0
	move.w #$8380,d1
	jsr ($5f22).w
	movea.l (a7)+,a0
	rts
	lea dat_00d042(pc),a0
	bra.s loc_00ccfa
	lea dat_00d044(pc),a0
	bra.s loc_00ccfa
	lea dat_00d046(pc),a0
	bra.s loc_00ccfa
	lea dat_00d048(pc),a0
	bra.s loc_00ccfa
	lea dat_00d04a(pc),a0
	bra.s loc_00ccfa
	lea dat_00d04c(pc),a0
	bra.s loc_00ccfa
	lea dat_00d04e(pc),a0
	bra.s loc_00ccfa
	lea dat_00d050(pc),a0
	bra.s loc_00ccfa
	lea dat_00d052(pc),a0
	bra.s loc_00ccfa
	lea dat_00d054(pc),a0
	bra.s loc_00ccfa
	lea dat_00d056(pc),a0
	bra.s loc_00ccfa
	lea dat_00d058(pc),a0
	bra.s loc_00ccfa
	lea dat_00d05a(pc),a0
	bra.s loc_00ccfa
	lea dat_00d05c(pc),a0
	bra.s loc_00ccfa
	lea dat_00d05e(pc),a0
	bra.s loc_00ccfa
	lea dat_00d060(pc),a0
	bra.s loc_00ccfa
	lea dat_00d062(pc),a0
	bra.s loc_00ccfa
	lea dat_00d064(pc),a0
	bra.s loc_00ccfa
	lea dat_00d066(pc),a0
	bra.s loc_00ccfa
	lea dat_00d068(pc),a0
loc_00ccfa:
	bsr.w sub_00cc66
	move.w #$13,d0
	jsr ($5f22).w
	bra.w loc_00d01c
	lea dat_00d06a(pc),a0
	bra.s loc_00ccfa
	lea dat_00d06c(pc),a0
	bra.s loc_00ccfa
	.incbin 5398, 54
	lea dat_00d076(pc),a0
	bra.s loc_00cd5c
	dc.b $41,$fa,$03,$24,$60,$04
	lea dat_00d07a(pc),a0
loc_00cd5c:
	bsr.w sub_00cc66
	move.w #$12,d0
	jsr ($5f22).w
	bra.w loc_00d01c
	.incbin 5484, 650
loc_00cff6:
	bchg.b #$0,($7005).w
	beq.s loc_00d00c
	movem.l d0-d7/a0-a6,-(a7)
	jsr ($40010).l
	movem.l (a7)+,d0-d7/a0-a6
loc_00d00c:
	rte

sub_00d00e:
	bset.b #$0,($8003).w
	btst.b #$0,($8003).w
	beq.s sub_00d00e
loc_00d01c:
	move.w ($8010).w,($8020).w
loc_00d022:
	move.w ($8010).w,d0
	bne.s loc_00d022
	move.w ($8010).w,d0
	bne.s loc_00d022
	move.w #$0,($8020).w
	rts

sub_00d036:
	btst.b #$1,($8003).w
	beq.s sub_00d036
	rts
	dc.b $00,$02
dat_00d042:
	dc.b $00,$03
dat_00d044:
	dc.b $00,$04
dat_00d046:
	dc.b $00,$05
dat_00d048:
	dc.b $00,$06
dat_00d04a:
	dc.b $00,$07
dat_00d04c:
	dc.b $00,$08
dat_00d04e:
	dc.b $00,$09
dat_00d050:
	dc.b $00,$0a
dat_00d052:
	dc.b $00,$0b
dat_00d054:
	dc.b $00,$0c
dat_00d056:
	dc.b $00,$0d
dat_00d058:
	dc.b $00,$0e
dat_00d05a:
	dc.b $00,$0f
dat_00d05c:
	dc.b $00,$10
dat_00d05e:
	dc.b $00,$11
dat_00d060:
	dc.b $00,$12
dat_00d062:
	dc.b $00,$13
dat_00d064:
	dc.b $00,$14
dat_00d066:
	dc.b $00,$15
dat_00d068:
	dc.b $00,$16
dat_00d06a:
	dc.b $00,$17
dat_00d06c:
	dc.b $00,$18,$00,$19
dat_00d070:
	dc.b $00,$1a,$00,$1b
dat_00d074:
	dc.b $00,$1c
dat_00d076:
	dc.b $00,$1d
dat_00d078:
	dc.b $00,$1e
dat_00d07a:
	dc.b $00,$1f
dat_00d07c:
	dc.b $00,$20,$00,$21,$00,$22,$00,$23
dat_00d084:
	.incbin 6276, 1600
dat_00d6c4:
	.incbin 7876, 9532
