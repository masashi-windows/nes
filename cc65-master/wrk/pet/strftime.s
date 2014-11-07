;
; File generated by cc65 v 2.14.0
;
	.fopt		compiler,"cc65 v 2.14.0"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.import		_strlen
	.import		_memcpy
	.import		_sprintf
	.import		__tz
	.export		_strftime

.segment	"RODATA"

L00E3:
	.byte	$25,$2E,$33,$53,$20,$25,$2E,$33,$53,$25,$33,$44,$20,$25,$30,$32
	.byte	$44,$3A,$25,$30,$32,$44,$3A,$25,$30,$32,$44,$20,$25,$44,$00
L006E:
	.byte	$25,$30,$34,$44,$2D,$25,$30,$32,$44,$2D,$25,$30,$32,$44,$00
L011C	:=	L006E+0
L0064:
	.byte	$25,$30,$32,$44,$2F,$25,$30,$32,$44,$2F,$25,$30,$32,$44,$00
L00BB:
	.byte	$25,$30,$32,$44,$3A,$25,$30,$32,$44,$3A,$25,$30,$32,$44,$00
L000D:
	.byte	$D7,$45,$44,$4E,$45,$53,$44,$41,$59,$00
L0027:
	.byte	$D3,$45,$50,$54,$45,$4D,$42,$45,$52,$00
L0019:
	.byte	$C6,$45,$42,$52,$55,$41,$52,$59,$00
L0013:
	.byte	$D3,$41,$54,$55,$52,$44,$41,$59,$00
L002B:
	.byte	$CE,$4F,$56,$45,$4D,$42,$45,$52,$00
L000F:
	.byte	$D4,$48,$55,$52,$53,$44,$41,$59,$00
L002D:
	.byte	$C4,$45,$43,$45,$4D,$42,$45,$52,$00
L0017:
	.byte	$CA,$41,$4E,$55,$41,$52,$59,$00
L0029:
	.byte	$CF,$43,$54,$4F,$42,$45,$52,$00
L000B:
	.byte	$D4,$55,$45,$53,$44,$41,$59,$00
L0025:
	.byte	$C1,$55,$47,$55,$53,$54,$00
L0011:
	.byte	$C6,$52,$49,$44,$41,$59,$00
L0007:
	.byte	$D3,$55,$4E,$44,$41,$59,$00
L0009:
	.byte	$CD,$4F,$4E,$44,$41,$59,$00
L001B:
	.byte	$CD,$41,$52,$43,$48,$00
L001D:
	.byte	$C1,$50,$52,$49,$4C,$00
L007F	:=	L006E+10
L0089	:=	L006E+10
L0126	:=	L006E+10
L0021:
	.byte	$CA,$55,$4E,$45,$00
L009C	:=	L006E+10
L00A3	:=	L006E+10
L00AC	:=	L006E+10
L0101	:=	L006E+10
L00F9:
	.byte	$25,$30,$33,$44,$00
L00D3:
	.byte	$25,$2E,$33,$53,$00
L00DB	:=	L00D3+0
L0078	:=	L006E+10
L00F2	:=	L006E+10
L0023:
	.byte	$CA,$55,$4C,$59,$00
L001F:
	.byte	$CD,$41,$59,$00
L00C4:
	.byte	$25,$34,$44,$00
L010E:
	.byte	$C1,$CD,$00
L0115	:=	L00E3+28
L0095:
	.byte	$41,$4D,$00
L0092:
	.byte	$50,$4D,$00
L010B:
	.byte	$D0,$CD,$00

; ---------------------------------------------------------------
; unsigned int __near__ __fastcall__ strftime (__near__ unsigned char*, unsigned int, __near__ const unsigned char*, __near__ const struct tm*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_strftime: near

.segment	"DATA"

L0006:
	.addr	L0007
	.addr	L0009
	.addr	L000B
	.addr	L000D
	.addr	L000F
	.addr	L0011
	.addr	L0013
L0016:
	.addr	L0017
	.addr	L0019
	.addr	L001B
	.addr	L001D
	.addr	L001F
	.addr	L0021
	.addr	L0023
	.addr	L0025
	.addr	L0027
	.addr	L0029
	.addr	L002B
	.addr	L002D

.segment	"BSS"

L002F:
	.res	2,$00
L0030:
	.res	2,$00
L0031:
	.res	1,$00
L0033:
	.res	40,$00
L0034:
	.res	2,$00

.segment	"CODE"

	jsr     pushax
	lda     #$00
	sta     L002F
	sta     L002F+1
L0037:	lda     L002F
	ldy     #$04
	cmp     (sp),y
	lda     L002F+1
	iny
	sbc     (sp),y
	bcc     L003B
	ldx     #$00
	txa
	jmp     incsp8
L003B:	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sta     regsave
	stx     regsave+1
	clc
	adc     #$01
	bcc     L0042
	inx
L0042:	jsr     staxysp
	ldy     #$00
	lda     (regsave),y
	sta     L0031
	cmp     #$00
	bne     L0140
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     #$00
	tay
	sta     (ptr1),y
	lda     L002F
	ldx     L002F+1
	jmp     incsp8
L0140:	lda     L0031
	cmp     #$25
	jne     L0046
	lda     #<(L0033)
	sta     L0034
	lda     #>(L0033)
	sta     L0034+1
	ldy     #$03
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sta     regsave
	stx     regsave+1
	clc
	adc     #$01
	bcc     L004B
	inx
L004B:	jsr     staxysp
	ldy     #$00
	lda     (regsave),y
	cmp     #$25
	jeq     L0142
	cmp     #$41
	jeq     L00D0
	cmp     #$42
	jeq     L00D8
	cmp     #$43
	jeq     L00E0
	cmp     #$44
	jeq     L00EF
	cmp     #$4A
	jeq     L00F6
	cmp     #$4D
	jeq     L00FE
	cmp     #$50
	jeq     L0106
	cmp     #$57
	jeq     L0112
	cmp     #$58
	jeq     L0119
	cmp     #$59
	jeq     L0123
	cmp     #$C1
	beq     L0057
	cmp     #$C2
	jeq     L005C
	cmp     #$C4
	jeq     L0061
	cmp     #$C6
	jeq     L006B
	cmp     #$C8
	jeq     L0075
	cmp     #$C9
	jeq     L007C
	cmp     #$CD
	jeq     L0086
	cmp     #$D0
	jeq     L008D
	cmp     #$D3
	jeq     L0099
	cmp     #$D5
	jeq     L00A0
	cmp     #$D7
	jeq     L00A9
	cmp     #$D8
	jeq     L00B8
	cmp     #$D9
	jeq     L00C1
	cmp     #$DA
	jeq     L00C8
	jmp     L0143
L0142:	sta     L0033
	sty     L0033+1
	jmp     L004D
L0057:	iny
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0D
	lda     (ptr1),y
	sta     tmp1
	dey
	lda     (ptr1),y
	asl     a
	rol     tmp1
	clc
	adc     #<(L0006)
	sta     ptr1
	lda     tmp1
	adc     #>(L0006)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     L0034+1
	dey
	lda     (ptr1),y
	sta     L0034
	jmp     L004D
L005C:	iny
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$09
	lda     (ptr1),y
	sta     tmp1
	dey
	lda     (ptr1),y
	asl     a
	rol     tmp1
	clc
	adc     #<(L0016)
	sta     ptr1
	lda     tmp1
	adc     #>(L0016)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     L0034+1
	dey
	lda     (ptr1),y
	sta     L0034
	jmp     L004D
L0061:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L0064)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L0064)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$09
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$01
	bcc     L0067
	inx
L0067:	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	iny
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$09
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0B
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldx     #$00
	lda     #$64
	jsr     tosmoda0
	jsr     pushax
	ldy     #$0A
	jsr     _sprintf
	jmp     L004D
L006B:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L006E)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L006E)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0B
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$6C
	pha
	txa
	adc     #$07
	tax
	pla
	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$09
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$01
	bcc     L0072
	inx
L0072:	jsr     pushax
	ldy     #$09
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	dey
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$0A
	jsr     _sprintf
	jmp     L004D
L0075:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L0078)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L0078)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	iny
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L007C:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L007F)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L007F)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	iny
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$0B
	bcc     L0083
	inx
L0083:	jsr     pushax
	ldx     #$00
	lda     #$0C
	jsr     tosmoda0
	clc
	adc     #$01
	bcc     L0084
	inx
L0084:	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L0086:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L0089)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L0089)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	dey
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L008D:	iny
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$05
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	cmp     #$0C
	txa
	sbc     #$00
	bvs     L0091
	eor     #$80
L0091:	bpl     L0093
	lda     #<(L0092)
	ldx     #>(L0092)
	jmp     L0096
L0093:	lda     #<(L0095)
	ldx     #>(L0095)
L0096:	sta     L0034
	stx     L0034+1
	jmp     L004D
L0099:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L009C)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L009C)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L00A0:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00A3)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00A3)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0F
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$07
	bcc     L00A7
	inx
L00A7:	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0D
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     tossubax
	jsr     pushax
	lda     #$07
	jsr     tosdiva0
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L00A9:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00AC)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00AC)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0F
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$07
	bcc     L00B0
	inx
L00B0:	jsr     pushax
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$0C
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	iny
	ora     (ptr1),y
	beq     L00B2
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0D
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	sec
	sbc     #$01
	bcs     L00B5
	dex
	jmp     L00B5
L00B2:	tax
	lda     #$06
L00B5:	jsr     tossubax
	jsr     pushax
	lda     #$07
	jsr     tosdiva0
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L00B8:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00BB)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00BB)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	iny
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$03
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$09
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$0A
	jsr     _sprintf
	jmp     L004D
L00C1:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00C4)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00C4)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0B
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$6C
	pha
	txa
	adc     #$07
	tax
	pla
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L00C8:	iny
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$10
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	iny
	ora     (ptr1),y
	beq     L00CB
	lda     #<(__tz+10)
	ldx     #>(__tz+10)
	jmp     L00CD
L00CB:	lda     #<(__tz+5)
	ldx     #>(__tz+5)
L00CD:	sta     L0034
	stx     L0034+1
	jmp     L004D
L00D0:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00D3)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00D3)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0D
	lda     (ptr1),y
	sta     tmp1
	dey
	lda     (ptr1),y
	asl     a
	rol     tmp1
	clc
	adc     #<(L0006)
	sta     ptr1
	lda     tmp1
	adc     #>(L0006)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L00D8:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00DB)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00DB)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$09
	lda     (ptr1),y
	sta     tmp1
	dey
	lda     (ptr1),y
	asl     a
	rol     tmp1
	clc
	adc     #<(L0016)
	sta     ptr1
	lda     tmp1
	adc     #>(L0016)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L00E0:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00E3)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00E3)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0D
	lda     (ptr1),y
	sta     tmp1
	dey
	lda     (ptr1),y
	asl     a
	rol     tmp1
	clc
	adc     #<(L0006)
	sta     ptr1
	lda     tmp1
	adc     #>(L0006)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$09
	lda     (ptr1),y
	sta     tmp1
	dey
	lda     (ptr1),y
	asl     a
	rol     tmp1
	clc
	adc     #<(L0016)
	sta     ptr1
	lda     tmp1
	adc     #>(L0016)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$09
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	dey
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$0B
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$05
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$0D
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$03
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$0F
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$11
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0B
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$6C
	pha
	txa
	adc     #$07
	tax
	pla
	jsr     pushax
	ldy     #$12
	jsr     _sprintf
	jmp     L004D
L00EF:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00F2)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00F2)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$07
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L00F6:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L00F9)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L00F9)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0F
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$01
	bcc     L00FC
	inx
L00FC:	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L00FE:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L0101)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L0101)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$09
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$01
	bcc     L0104
	inx
L0104:	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L0106:	iny
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$05
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	cmp     #$0C
	txa
	sbc     #$00
	bvs     L010A
	eor     #$80
L010A:	bpl     L010C
	lda     #<(L010B)
	ldx     #>(L010B)
	jmp     L010F
L010C:	lda     #<(L010E)
	ldx     #>(L010E)
L010F:	sta     L0034
	stx     L0034+1
	jmp     L004D
L0112:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L0115)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L0115)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0D
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L0119:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L011C)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L011C)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0B
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$6C
	pha
	txa
	adc     #$07
	tax
	pla
	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$09
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	clc
	adc     #$01
	bcc     L0120
	inx
L0120:	jsr     pushax
	ldy     #$09
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	dey
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldy     #$0A
	jsr     _sprintf
	jmp     L004D
L0123:	jsr     decsp4
	lda     #<(L0033)
	ldy     #$02
	sta     (sp),y
	iny
	lda     #>(L0033)
	sta     (sp),y
	lda     #<(L0126)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L0126)
	sta     (sp),y
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$0B
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldx     #$00
	lda     #$64
	jsr     tosmoda0
	jsr     pushax
	ldy     #$06
	jsr     _sprintf
	jmp     L004D
L0143:	sty     L0033
L004D:	lda     L0034
	ldx     L0034+1
	jsr     _strlen
	sta     L0030
	stx     L0030+1
	clc
	adc     L002F
	sta     L002F
	txa
	adc     L002F+1
	sta     L002F+1
	lda     L002F
	ldy     #$04
	cmp     (sp),y
	lda     L002F+1
	iny
	sbc     (sp),y
	jcs     L0037
	ldy     #$09
	jsr     pushwysp
	lda     L0034
	ldx     L0034+1
	jsr     pushax
	lda     L0030
	ldx     L0030+1
	jsr     _memcpy
	lda     L0030
	ldx     L0030+1
	ldy     #$06
	jsr     addeqysp
	jmp     L0037
L0046:	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sta     regsave
	stx     regsave+1
	clc
	adc     #$01
	bcc     L013C
	inx
L013C:	jsr     staxysp
	lda     L0031
	ldy     #$00
	sta     (regsave),y
	inc     L002F
	jne     L0037
	inc     L002F+1
	jmp     L0037

.endproc
