; MDINIT.MMD
; disassembled from the disc; code only, data comes from data/MDINIT.MMD at build time
	.file "MDINIT.MMD", 7514
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	lea ($ff0f00).l,a0
	move.w #$43f,d7
loc_ff200a:
	move.l #$0,(a0)+
	dbf d7,loc_ff200a
	lea dat_ff20c6(pc),a0
	bsr.w sub_ff3bb2
	move.l #$64000003,($c00004).l
	move.l #$0,($c00000).l
	move.l #$c0000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$1f,d7
loc_ff2042:
	move.l #$0,(a0)
	dbf d7,loc_ff2042
	move.w #$100,($a11200).l
	bsr.w sub_ff3c2c
	lea dat_ff20da(pc),a0
	lea ($a00000).l,a1
	move.w #$1ad5,d7
loc_ff2066:
	move.b (a0)+,(a1)+
	dbf d7,loc_ff2066
	move.w #$0,($a11200).l
	ror.b #$8,d0
	move.w #$100,($a11200).l
	bsr.w sub_ff3c4a
	move.b #$90,($ff0f1d).l
	rts
	.incbin 396, 58
dat_ff20c6:
	.incbin 454, 20
dat_ff20da:
	.incbin 474, 6870
dat_ff3bb0:
	dc.b $00,$00

sub_ff3bb2:
	move.w #$8000,d0
	moveq #$12,d7
loc_ff3bb8:
	move.b (a0)+,d0
	move.w d0,($c00004).l
	addi.w #$100,d0
	dbf d7,loc_ff3bb8
	moveq #$40,d0
	move.b d0,($a10009).l
	move.b d0,($a1000b).l
	move.b d0,($a1000d).l
	move.b #$c0,($a10003).l
	bsr.w sub_ff3c2c
	move.l #$40000000,($c00004).l
	lea ($c00000).l,a0
	moveq #$0,d0
	move.w #$fff,d7
loc_ff3bfe:
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	move.l d0,(a0)
	dbf d7,loc_ff3bfe
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	bsr.w sub_ff3c4a
	move.w #$8134,($ff0f16).l
	rts

sub_ff3c2c:
	move.w sr,(dat_ff3bb0).l
	move.w #$2700,sr
	move.w #$100,($a11100).l
loc_ff3c3e:
	btst.b #$0,($a11100).l
	bne.s loc_ff3c3e
	rts

sub_ff3c4a:
	move.w #$0,($a11100).l
	move.w (dat_ff3bb0).l,sr
	rts
