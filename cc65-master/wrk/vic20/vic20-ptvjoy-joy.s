;
; File generated by co65 v 2.14.0 using model `cc65-module'
;
.fopt		compiler,"co65 v 2.14.0"
.case		on
.debuginfo	off
.export		_vic20_ptvjoy_joy

;
; CODE SEGMENT
;
.segment	"CODE"
_vic20_ptvjoy_joy:
	.byte	$6A
	.byte	$6F
	.byte	$79
	.byte	$03
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$02
	.byte	$04
	.byte	$08
	.byte	$10
	.byte	$00
	.byte	$00
	.byte	$00
	.word	_vic20_ptvjoy_joy+24
	.word	_vic20_ptvjoy_joy+28
	.word	_vic20_ptvjoy_joy+29
	.word	_vic20_ptvjoy_joy+34
	.byte	$00
	.byte	$00
	.byte	$A9
	.byte	$00
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$A9
	.byte	$03
	.byte	$A2
	.byte	$00
	.byte	$60
	.byte	$AA
	.byte	$D0
	.byte	$25
	.byte	$A9
	.byte	$7F
	.byte	$A2
	.byte	$C3
	.byte	$78
	.byte	$AC
	.byte	$22
	.byte	$91
	.byte	$8D
	.byte	$22
	.byte	$91
	.byte	$AD
	.byte	$20
	.byte	$91
	.byte	$8C
	.byte	$22
	.byte	$91
	.byte	$0A
	.byte	$AC
	.byte	$13
	.byte	$91
	.byte	$8E
	.byte	$13
	.byte	$91
	.byte	$AD
	.byte	$11
	.byte	$91
	.byte	$8C
	.byte	$13
	.byte	$91
	.byte	$58
	.byte	$6A
	.byte	$29
	.byte	$9E
	.byte	$49
	.byte	$9E
	.byte	$60
	.byte	$A9
	.byte	$80
	.byte	$8D
	.byte	$12
	.byte	$91
	.byte	$CA
	.byte	$D0
	.byte	$0D
	.byte	$A9
	.byte	$80
	.byte	$8D
	.byte	$10
	.byte	$91
	.byte	$AD
	.byte	$10
	.byte	$91
	.byte	$29
	.byte	$1F
	.byte	$49
	.byte	$1F
	.byte	$60
	.byte	$A9
	.byte	$00
	.byte	$8D
	.byte	$10
	.byte	$91
	.byte	$AD
	.byte	$10
	.byte	$91
	.byte	$29
	.byte	$0F
	.byte	$85
	.byte	<(ZEROPAGE+16)
	.byte	$AD
	.byte	$10
	.byte	$91
	.byte	$29
	.byte	$20
	.byte	$4A
	.byte	$05
	.byte	<(ZEROPAGE+16)
	.byte	$49
	.byte	$1F
	.byte	$A2
	.byte	$00
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
	.res	0

;
; ZEROPAGE SEGMENT
;
.import	__ZP_START__		; Linker generated symbol
ZEROPAGE = __ZP_START__

.end
