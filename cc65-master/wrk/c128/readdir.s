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
	.import		__errno
	.import		__cbm_filetype
	.export		_readdir
	.import		__dirread
	.import		__dirread1

; ---------------------------------------------------------------
; __near__ struct dirent* __near__ __fastcall__ readdir (register __near__ struct DIR*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_readdir: near

.segment	"BSS"

L0009:
	.res	1,$00
L000A:
	.res	1,$00
L000C:
	.res	23,$00

.segment	"CODE"

	jsr     pushax
	ldy     #$00
	ldx     #$04
	jsr     regswap2
	lda     regbank+2
	ldx     regbank+3
	jsr     pushax
	lda     regbank+1
	jsr     pusha
	lda     regbank+0
	jsr     pusha
	ldy     #$40
	jsr     subysp
	ldy     #$03
	lda     (regbank+4),y
	sta     L000C+17+1
	dey
	lda     (regbank+4),y
	sta     L000C+17
	jsr     decsp4
	lda     regbank+4
	sta     (sp),y
	iny
	lda     regbank+4+1
	sta     (sp),y
	lda     sp
	ldx     sp+1
	clc
	adc     #$04
	bcc     L0013
	inx
L0013:	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     #$02
	jsr     __dirread
	tax
	jeq     L0008
	jsr     decsp4
	lda     regbank+4
	ldy     #$02
	sta     (sp),y
	iny
	lda     regbank+4+1
	sta     (sp),y
	lda     #<(L000C+19)
	ldy     #$00
	sta     (sp),y
	iny
	lda     #>(L000C+19)
	sta     (sp),y
	lda     #$02
	jsr     __dirread
	tax
	jeq     L0008
	lda     #$00
	sta     regbank+0
	lda     sp
	sta     regbank+2
	lda     sp+1
	sta     regbank+2+1
L001C:	lda     regbank+0
	cmp     #$40
	bcs     L001D
	lda     regbank+4
	ldx     regbank+4+1
	jsr     pushax
	lda     regbank+2
	ldx     regbank+2+1
	jsr     __dirread1
	tax
	jeq     L0008
	inc     regbank+0
	ldy     #$00
	lda     (regbank+2),y
	beq     L001D
	inc     regbank+2
	bne     L001C
	inc     regbank+2+1
	jmp     L001C
L001D:	ldy     #$03
	lda     (regbank+4),y
	tax
	dey
	lda     (regbank+4),y
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     regbank+0
	clc
	adc     #$04
	bcc     L0089
	inx
	clc
L0089:	adc     ptr1
	pha
	txa
	adc     ptr1+1
	tax
	pla
	sta     (regbank+4),y
	iny
	txa
	sta     (regbank+4),y
	ldx     #$00
	lda     (sp,x)
	cmp     #$42
	jeq     L0090
	txa
	sta     regbank+1
	sta     L000A
	sta     L0009
	lda     sp
	sta     regbank+2
	lda     sp+1
	sta     regbank+2+1
	jmp     L008F
L008A:	lda     L0009
	beq     L0045
	cmp     #$01
	beq     L004B
	cmp     #$02
	beq     L0066
	cmp     #$03
	jeq     L0073
	jmp     L008E
L0045:	lda     (regbank+2,x)
	cmp     #$22
	jne     L008E
	lda     #$01
	sta     L0009
	jmp     L008E
L004B:	ldy     #$00
	lda     (regbank+2),y
	cmp     #$22
	bne     L008C
	ldy     L000A
	txa
	sta     L000C,y
	lda     L000A
	sta     L000C+22
	lda     L000C+17
	cmp     #$03
	lda     L000C+17+1
	sbc     #$00
	bcc     L008B
	lda     #$02
	sta     L0009
	jmp     L008E
L008B:	lda     #$05
	sta     L000C+21
	lda     #<(L000C)
	ldx     #>(L000C)
	jmp     L0008
L008C:	lda     L000A
	cmp     #$10
	bcs     L008E
	lda     #<(L000C)
	ldx     #>(L000C)
	clc
	adc     L000A
	bcc     L0062
	inx
L0062:	sta     ptr1
	stx     ptr1+1
	lda     (regbank+2),y
	sta     (ptr1),y
	inc     L000A
	jmp     L008E
L0066:	lda     (regbank+2,x)
	cmp     #$20
	beq     L008E
	jsr     __cbm_filetype
	sta     L000C+21
	ldy     #$00
	lda     (regbank+2),y
	cmp     #$44
	bne     L006C
	lda     #$03
	sta     L0009
	jmp     L008E
L006C:	lda     #<(L000C)
	ldx     #>(L000C)
	jmp     L0008
L0073:	lda     (regbank+2,x)
	cmp     #$45
	beq     L0076
	cmp     #$49
	bne     L008D
	lda     #$02
	jmp     L0088
L008D:	lda     #$04
L0088:	sta     L000C+21
L0076:	lda     #<(L000C)
	ldx     #>(L000C)
	jmp     L0008
L008E:	inc     regbank+1
	inc     regbank+2
	bne     L0083
	inc     regbank+2+1
L0083:	ldx     #$00
L008F:	lda     regbank+1
	cmp     regbank+0
	jcc     L008A
	lda     #$0B
	sta     __errno
	stx     __errno+1
L0090:	txa
L0008:	pha
	stx     tmp1
	ldy     #$45
	ldx     #$05
L0087:	lda     (sp),y
	sta     regbank+0,x
	dey
	dex
	bpl     L0087
	ldx     tmp1
	pla
	ldy     #$46
	jmp     addysp

.endproc

