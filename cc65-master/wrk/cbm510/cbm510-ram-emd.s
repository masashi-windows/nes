;
; File generated by co65 v 2.14.0 using model `cc65-module'
;
.fopt		compiler,"co65 v 2.14.0"
.case		on
.debuginfo	off
.export		_cbm510_ram_emd

;
; CODE SEGMENT
;
.segment	"CODE"
_cbm510_ram_emd:
	.byte	$65
	.byte	$6D
	.byte	$64
	.byte	$02
	.byte	$00
	.byte	$00
	.word	_cbm510_ram_emd+22
	.word	_cbm510_ram_emd+52
	.word	_cbm510_ram_emd+53
	.word	_cbm510_ram_emd+59
	.word	_cbm510_ram_emd+97
	.word	_cbm510_ram_emd+105
	.word	_cbm510_ram_emd+143
	.word	_cbm510_ram_emd+182
	.byte	$A9
	.byte	$FF
	.byte	$8D
	.word	BSS+0
	.byte	$8D
	.word	BSS+257
	.byte	$38
	.byte	$20
	.byte	$99
	.byte	$FF
	.byte	$C9
	.byte	$01
	.byte	$D0
	.byte	$0A
	.byte	$8A
	.byte	$38
	.byte	$E9
	.byte	$02
	.byte	$98
	.byte	$E9
	.byte	$00
	.byte	$8D
	.word	BSS+257
	.byte	$A9
	.byte	$00
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$AD
	.word	BSS+257
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$8D
	.word	BSS+0
	.byte	$85
	.byte	<(ZEROPAGE+9)
	.byte	$A9
	.byte	$02
	.byte	$85
	.byte	<(ZEROPAGE+8)
	.byte	$A6
	.byte	$01
	.byte	$A9
	.byte	$01
	.byte	$85
	.byte	$01
	.byte	$A0
	.byte	$00
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$99
	.word	BSS+1
	.byte	$C8
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$99
	.word	BSS+1
	.byte	$C8
	.byte	$D0
	.byte	$F2
	.byte	$86
	.byte	$01
	.byte	$A9
	.byte	<(BSS-255)
	.byte	$A2
	.byte	>(BSS+1)
	.byte	$60
	.byte	$8D
	.word	BSS+0
	.byte	$A9
	.byte	<(BSS-255)
	.byte	$A2
	.byte	>(BSS+1)
	.byte	$60
	.byte	$AD
	.word	BSS+0
	.byte	$C9
	.byte	$FF
	.byte	$F0
	.byte	$1E
	.byte	$85
	.byte	<(ZEROPAGE+9)
	.byte	$A9
	.byte	$02
	.byte	$85
	.byte	<(ZEROPAGE+8)
	.byte	$A6
	.byte	$01
	.byte	$A9
	.byte	$01
	.byte	$85
	.byte	$01
	.byte	$A0
	.byte	$00
	.byte	$B9
	.word	BSS+1
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$C8
	.byte	$B9
	.word	BSS+1
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$C8
	.byte	$D0
	.byte	$F2
	.byte	$86
	.byte	$01
	.byte	$60
	.byte	$20
	.word	_cbm510_ram_emd+221
	.byte	$8D
	.word	DATA+3
	.byte	$8E
	.word	DATA+4
	.byte	$A6
	.byte	<(ZEROPAGE+11)
	.byte	$F0
	.byte	$0A
	.byte	$A2
	.byte	$00
	.byte	$20
	.word	DATA+0
	.byte	$E6
	.byte	<(ZEROPAGE+9)
	.byte	$EE
	.word	DATA+4
	.byte	$C6
	.byte	<(ZEROPAGE+11)
	.byte	$D0
	.byte	$F4
	.byte	$A6
	.byte	<(ZEROPAGE+10)
	.byte	$F0
	.byte	$03
	.byte	$20
	.word	DATA+0
	.byte	$A5
	.byte	$00
	.byte	$85
	.byte	$01
	.byte	$60
	.byte	$20
	.word	_cbm510_ram_emd+221
	.byte	$8D
	.word	DATA+11
	.byte	$8E
	.word	DATA+12
	.byte	$A6
	.byte	<(ZEROPAGE+11)
	.byte	$F0
	.byte	$0A
	.byte	$A2
	.byte	$00
	.byte	$20
	.word	DATA+10
	.byte	$E6
	.byte	<(ZEROPAGE+9)
	.byte	$EE
	.word	DATA+12
	.byte	$C6
	.byte	<(ZEROPAGE+11)
	.byte	$D0
	.byte	$F4
	.byte	$A6
	.byte	<(ZEROPAGE+10)
	.byte	$F0
	.byte	$03
	.byte	$20
	.word	DATA+10
	.byte	$A5
	.byte	$00
	.byte	$85
	.byte	$01
	.byte	$60
	.byte	$85
	.byte	<(ZEROPAGE+12)
	.byte	$86
	.byte	<(ZEROPAGE+13)
	.byte	$A0
	.byte	$02
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$18
	.byte	$69
	.byte	$02
	.byte	$85
	.byte	<(ZEROPAGE+8)
	.byte	$A0
	.byte	$03
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$69
	.byte	$00
	.byte	$85
	.byte	<(ZEROPAGE+9)
	.byte	$A0
	.byte	$05
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$85
	.byte	<(ZEROPAGE+10)
	.byte	$C8
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$85
	.byte	<(ZEROPAGE+11)
	.byte	$A0
	.byte	$01
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$AA
	.byte	$88
	.byte	$B1
	.byte	<(ZEROPAGE+12)
	.byte	$A0
	.byte	$01
	.byte	$84
	.byte	$01
	.byte	$A0
	.byte	$00
	.byte	$60

;
; DATA SEGMENT
;
.segment	"DATA"
DATA:
	.byte	$B1
	.byte	<(ZEROPAGE+8)
	.byte	$99
	.byte	$00
	.byte	$00
	.byte	$C8
	.byte	$CA
	.byte	$D0
	.byte	$F7
	.byte	$60
	.byte	$B9
	.byte	$00
	.byte	$00
	.byte	$91
	.byte	<(ZEROPAGE+8)
	.byte	$C8
	.byte	$CA
	.byte	$D0
	.byte	$F7
	.byte	$60

;
; BSS SEGMENT
;
.segment	"BSS"
BSS:
	.res	258

;
; ZEROPAGE SEGMENT
;
.import	__ZP_START__		; Linker generated symbol
ZEROPAGE = __ZP_START__

.end
