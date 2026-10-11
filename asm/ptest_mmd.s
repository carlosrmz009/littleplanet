; PTEST.MMD
; disassembled from the disc; code only, data comes from data/PTEST.MMD at build time
	.file "PTEST.MMD", 10646
	.incbin 0, 256

	.org 256, $ff2000		; main CPU
	jmp (loc_ff2020).l
	.incbin 262, 26
loc_ff2020:
	clr.w ($fa40).w
	bclr.b #$1,($a1200e).l
	move.l #$ff2606,($fffd08).l
	move.b #$0,($a1200e).l
	bsr.w sub_ff240a
	bsr.w sub_ff2428
	lea ($c00000).l,a5
	lea $4(a5),a4
	lea ($8000).w,a0
	move.w #$fff,d7
loc_ff2058:
	clr.l (a0)+
	dbf d7,loc_ff2058
	bsr.w sub_ff23fc
	bsr.w sub_ff23c0
	bsr.w sub_ff25ae
	bset.b #$6,($fdb7).w
	move.w ($fdb6).w,($c00004).l
	bsr.w sub_ff2244
	move.w #$0,($a12012).l
	bset.b #$1,($a1200e).l
loc_ff208c:
	btst.b #$7,($a1200f).l
	bne.s loc_ff208c
	bclr.b #$1,($a1200e).l
	bclr.b #$4,($a1200e).l
	bsr.w sub_ff2538
	clr.w ($fa40).w
	move.w #$4,($c086).w
loc_ff20b4:
	moveq #$0,d0
	move.w ($c086).w,d0
	lea dat_ff2138(pc),a1
	adda.w $0(a1,d0.w),a1
	jsr (a1)
	bsr.s sub_ff20f2
	btst.b #$1,($a1200f).l
	beq.s loc_ff20b4
	btst.b #$1,($a1200f).l
	beq.s loc_ff20b4
	btst.b #$1,($a1200f).l
	beq.s loc_ff20b4
	bsr.s sub_ff2100
	clr.b ($a1200e).l
	bsr.w sub_ff2282
	rts

sub_ff20f2:
	move.b #$1,($fa00).w
loc_ff20f8:
	tst.b ($fa00).w
	bne.s loc_ff20f8
	rts

sub_ff2100:
	clr.w ($fa40).w
	move.w #$3c,d1
loc_ff2108:
	bsr.w sub_ff20f2
	dbf d1,loc_ff2108
	bset.b #$4,($a1200e).l
loc_ff2118:
	btst.b #$1,($a1200f).l
	bne.s loc_ff2118
	btst.b #$1,($a1200f).l
	bne.s loc_ff2118
	btst.b #$1,($a1200f).l
	bne.s loc_ff2118
	rts
dat_ff2138:
	.incbin 568, 268

sub_ff2244:
	move.w #$0,($c08a).w
loc_ff224a:
	move.w #$8,($c08c).w
	move.w ($c08a).w,d0
	lsl.w #$5,d0
	lea ($c040).w,a2
	moveq #$f,d7
	lea dat_ff22c0(pc,d0.w),a1
loc_ff2260:
	move.w (a1)+,(a2)+
	dbf d7,loc_ff2260
	st ($c088).w
loc_ff226a:
	bsr.w sub_ff20f2
	subq.w #$1,($c08c).w
	bne.s loc_ff226a
	addq.w #$1,($c08a).w
	cmpi.w #$8,($c08a).w
	bne.s loc_ff224a
	rts

sub_ff2282:
	move.w #$7,($c08a).w
loc_ff2288:
	move.w #$8,($c08c).w
	move.w ($c08a).w,d0
	lsl.w #$5,d0
	lea dat_ff22c0(pc,d0.w),a1
	lea ($c040).w,a2
	lea ($c020).w,a3
	moveq #$f,d7
loc_ff22a2:
	move.w (a1),(a2)+
	move.w (a1)+,(a3)+
	dbf d7,loc_ff22a2
	st ($c088).w
loc_ff22ae:
	bsr.w sub_ff20f2
	subq.w #$1,($c08c).w
	bne.s loc_ff22ae
	subq.w #$1,($c08a).w
	bpl.s loc_ff2288
	rts
dat_ff22c0:
	.incbin 960, 256

sub_ff23c0:
	moveq #$10,d4
	move.l #$47120003,d0
	move.w #$14,d1
	move.w #$d,d2
	bsr.s sub_ff23e4
	move.w #$136,d4
	move.l #$47920003,d0
	move.w #$14,d1
	move.w #$d,d2

sub_ff23e4:
	move.l d0,(a4)
	move.l d1,d3
loc_ff23e8:
	move.w d4,(a5)
	addq.w #$1,d4
	dbf d3,loc_ff23e8
	addi.l #$1000000,d0
	dbf d2,sub_ff23e4
	rts

sub_ff23fc:
	moveq #$1f,d7
	lea ($c000).w,a1
loc_ff2402:
	clr.l (a1)+
	dbf d7,loc_ff2402
	rts

sub_ff240a:
	btst.b #$2,($a12003).l
	beq.s sub_ff240a
	rts
	.incbin 1302, 18

sub_ff2428:
	lea dat_ff24d4(pc),a1
	jsr ($2b0).w
	move.w #$100,($a11100).l
loc_ff2438:
	btst.b #$0,($a11100).l
	bne.s loc_ff2438
	lea ($c00004).l,a6
	move.w #$8f01,(a6)
	move.l #$93ff94ff,(a6)
	move.w #$9780,(a6)
	move.l #$40000080,(a6)
	move.w #$0,($c00000).l
loc_ff2464:
	btst.b #$1,$1(a6)
	bne.s loc_ff2464
	move.l #$40000000,(a6)
	move.w #$0,($c00000).l
	move.w #$8f02,(a6)
	move.l #$40000003,($c00004).l
	move.w #$fff,d7
loc_ff248c:
	move.w #$e7e1,($c00000).l
	dbf d7,loc_ff248c
	move.l #$c0000000,($c00004).l
	moveq #$1f,d7
	moveq #$0,d0
loc_ff24a6:
	move.l d0,($c00000).l
	dbf d7,loc_ff24a6
	move.l #$40000010,($c00004).l
	move.l #$0,($c00000).l
	move.w #$0,($a11100).l
	move.w #$8134,($fdb6).w
	rts
dat_ff24d4:
	.incbin 1492, 100

sub_ff2538:
	btst.b #$1,($a1200f).l
	beq.s loc_ff2556
	btst.b #$1,($a1200f).l
	beq.s loc_ff2556
	btst.b #$1,($a1200f).l
	bne.s loc_ff25ac
loc_ff2556:
	btst.b #$0,($a1200f).l
	beq.s sub_ff2538
	btst.b #$0,($a1200f).l
	beq.s sub_ff2538
	btst.b #$0,($a1200f).l
	beq.s sub_ff2538
	btst.b #$2,($a1200e).l
	bne.s sub_ff2538
	bset.b #$0,($a1200e).l
loc_ff2586:
	btst.b #$1,($a12003).l
	bne.s loc_ff2586
	btst.b #$1,($a12003).l
	bne.s loc_ff2586
	btst.b #$1,($a12003).l
	bne.s loc_ff2586
	bclr.b #$0,($a1200e).l
loc_ff25ac:
	rts

sub_ff25ae:
	lea ($c00004).l,a6
	move.l #$9380940c,(a6)
	move.l #$95cb9697,(a6)
	move.w #$977f,(a6)
	move.w #$7d00,(a6)
	move.w #$81,-(a7)
	move.w (a7)+,(a6)
	move.l #$7d000001,(a6)
	move.w (dat_ff2f96).l,($c00000).l
	move.l #$60000002,d0
	move.w #$27,d1
	move.w #$1b,d2
	lea dat_ff26d6(pc),a1
loc_ff25f0:
	move.l d0,(a4)
	move.l d1,d3
loc_ff25f4:
	move.w (a1)+,(a5)
	dbf d3,loc_ff25f4
	addi.l #$1000000,d0
	dbf d2,loc_ff25f0
	rts
	.incbin 1798, 208
dat_ff26d6:
	.incbin 2006, 2240
dat_ff2f96:
	.incbin 4246, 6400
