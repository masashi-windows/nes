;
; File generated by co65 v 2.14.0 using model `cc65-module'
;
.fopt		compiler,"co65 v 2.14.0"
.case		on
.debuginfo	off
.export		_c128_ram_emd

;
; CODE SEGMENT
;
.segment	"CODE"
_c128_ram_emd:
	.byte	$65
	.byte	$6D
	.byte	$64
	.byte	$02
	.byte	$00
	.byte	$00
	.word	_c128_ram_emd+22
	.word	_c128_ram_emd+33
	.word	_c128_ram_emd+34
	.word	_c128_ram_emd+39
	.word	_c128_ram_emd+75
	.word	_c128_ram_emd+86
	.word	_c128_ram_emd+120
	.word	_c128_ram_emd+206
	.byte	$A2
	.byte	$FF
	.byte	$8E
	.word	BSS+0
	.byte	$8E
	.word	BSS+1
	.byte	$E8
	.byte	$8A
	.byte	$60
	.byte	$60
	.byte	$A9
	.byte	$FB
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$8D
	.word	BSS+0
	.byte	$8E
	.word	BSS+1
	.byte	$18
	.byte	$69
	.byte	$04
	.byte	$85
	.byte	<(ZEROPAGE+9)
	.byte	$A0
	.byte	$00
	.byte	$84
	.byte	<(ZEROPAGE+8)
	.byte	$A9
	.byte	<(ZEROPAGE+8)
	.byte	$8D
	.byte	$AA
	.byte	$02
	.byte	$A2
	.byte	$7F
	.byte	$20
	.byte	$A2
	.byte	$02
	.byte	$99
	.word	BSS+1
	.byte	$C8
	.byte	$D0
	.byte	$F5
	.byte	$A9
	.byte	<(BSS-255)
	.byte	$A2
	.byte	>(BSS+1)
	.byte	$60
	.byte	$8D
	.word	BSS+0
	.byte	$8E
	.word	BSS+1
	.byte	$A9
	.byte	<(BSS-255)
	.byte	$A2
	.byte	>(BSS+1)
	.byte	$60
	.byte	$AD
	.word	BSS+0
	.byte	$AE
	.word	BSS+1
	.byte	$30
	.byte	$19
	.byte	$18
	.byte	$69
	.byte	$04
	.byte	$85
	.byte	<(ZEROPAGE+9)
	.byte	$A0
	.byte	$00
	.byte	$84
	.byte	<(ZEROPAGE+8)
	.byte	$A9
	.byte	<(ZEROPAGE+8)
	.byte	$8D
	.byte	$B9
	.byte	$02
	.byte	$B9
	.word	BSS+1
	.byte	$A2
	.byte	$7F
	.byte	$20
	.byte	$AF
	.byte	$02
	.byte	$C8
	.byte	$D0
	.byte	$F5
	.byte	$60
	.byte	$85
	.byte	<(ZEROPAGE+12)
	.byte	$86
	.byte	<(ZEROPAGE+13)
	.byte	$A0
	.byte	$02
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$85
	.byte	<(ZEROPAGE+8)
	.byte	$A0
	.byte	$03
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$18
	.byte	$69
	.byte	$04
	.byte	$85
	.byte	<(ZEROPAGE+9)
	.byte	$A0
	.byte	$00
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$85
	.byte	<(ZEROPAGE+10)
	.byte	$C8
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$85
	.byte	<(ZEROPAGE+11)
	.byte	$A9
	.byte	<(ZEROPAGE+8)
	.byte	$8D
	.byte	$AA
	.byte	$02
	.byte	$A0
	.byte	$06
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$F0
	.byte	$16
	.byte	$85
	.byte	<(ZEROPAGE+16)
	.byte	$A0
	.byte	$00
	.byte	$A2
	.byte	$7F
	.byte	$20
	.byte	$A2
	.byte	$02
	.byte	$91
	.byte	<(ZEROPAGE+10)
	.byte	$C8
	.byte	$D0
	.byte	$F6
	.byte	$E6
	.byte	<(ZEROPAGE+9)
	.byte	$E6
	.byte	<(ZEROPAGE+11)
	.byte	$C6
	.byte	<(ZEROPAGE+16)
	.byte	$D0
	.byte	$EE
	.byte	$A0
	.byte	$05
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$F0
	.byte	$10
	.byte	$85
	.byte	<(ZEROPAGE+16)
	.byte	$A0
	.byte	$00
	.byte	$A2
	.byte	$7F
	.byte	$20
	.byte	$A2
	.byte	$02
	.byte	$91
	.byte	<(ZEROPAGE+10)
	.byte	$C8
	.byte	$C6
	.byte	<(ZEROPAGE+16)
	.byte	$D0
	.byte	$F4
	.byte	$60
	.byte	$85
	.byte	<(ZEROPAGE+12)
	.byte	$86
	.byte	<(ZEROPAGE+13)
	.byte	$A0
	.byte	$02
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$85
	.byte	<(ZEROPAGE+8)
	.byte	$A0
	.byte	$03
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$18
	.byte	$69
	.byte	$04
	.byte	$85
	.byte	<(ZEROPAGE+9)
	.byte	$A0
	.byte	$00
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$85
	.byte	<(ZEROPAGE+10)
	.byte	$C8
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$85
	.byte	<(ZEROPAGE+11)
	.byte	$A9
	.byte	<(ZEROPAGE+8)
	.byte	$8D
	.byte	$B9
	.byte	$02
	.byte	$A0
	.byte	$06
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$F0
	.byte	$16
	.byte	$85
	.byte	<(ZEROPAGE+16)
	.byte	$A0
	.byte	$00
	.byte	$B1
	.byte	<(ZEROPAGE+10)
	.byte	$A2
	.byte	$7F
	.byte	$20
	.byte	$AF
	.byte	$02
	.byte	$C8
	.byte	$D0
	.byte	$F6
	.byte	$E6
	.byte	<(ZEROPAGE+9)
	.byte	$E6
	.byte	<(ZEROPAGE+11)
	.byte	$C6
	.byte	<(ZEROPAGE+16)
	.byte	$D0
	.byte	$EE
	.byte	$A0
	.byte	$05
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$F0
	.byte	$10
	.byte	$85
	.byte	<(ZEROPAGE+16)
	.byte	$A0
	.byte	$00
	.byte	$B1
	.byte	<(ZEROPAGE+10)
	.byte	$A2
	.byte	$7F
	.byte	$20
	.byte	$AF
	.byte	$02
	.byte	$C8
	.byte	$C6
	.byte	<(ZEROPAGE+16)
	.byte	$D0
	.byte	$F4
	.byte	$60

;
; DATA SEGMENT
;
.segment	"DATA"
DATA:

;
; BSS SEGMENT
;
.segment	"BSS"
BSS:
	.res	257

;
; ZEROPAGE SEGMENT
;
.import	__ZP_START__		; Linker generated symbol
ZEROPAGE = __ZP_START__

.end
