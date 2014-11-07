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
	.export		_fgetc
	.import		_read

; ---------------------------------------------------------------
; int __near__ __fastcall__ fgetc (register __near__ struct _FILE*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_fgetc: near

.segment	"CODE"

	jsr     pushax
	ldy     #$00
	ldx     #$04
	jsr     regswap2
	jsr     decsp1
	ldy     #$01
	lda     (regbank+4),y
	and     #$01
	beq     L0026
	lda     (regbank+4),y
	and     #$06
	beq     L0028
L0026:	ldx     #$FF
	txa
	jmp     L0017
L0028:	lda     (regbank+4),y
	and     #$08
	beq     L000C
	lda     (regbank+4),y
	and     #$F7
	sta     (regbank+4),y
	iny
	ldx     #$00
	lda     (regbank+4),y
	jmp     L0017
L000C:	jsr     decsp4
	dey
	lda     (regbank+4),y
	ldy     #$02
	sta     (sp),y
	iny
	lda     #$00
	sta     (sp),y
	lda     sp
	ldx     sp+1
	clc
	adc     #$04
	bcc     L0014
	inx
L0014:	ldy     #$00
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldx     #$00
	tya
	jsr     _read
	cpx     #$00
	bne     L0024
	cmp     #$00
	beq     L001E
	jmp     L0022
L0024:	cpx     #$FF
	bne     L0022
	cmp     #$FF
	bne     L0022
	ldy     #$01
	lda     (regbank+4),y
	ora     #$04
	sta     (regbank+4),y
	txa
	jmp     L0017
L001E:	ldy     #$01
	lda     (regbank+4),y
	ora     #$02
	sta     (regbank+4),y
	dex
	txa
	jmp     L0017
L0022:	ldy     #$00
	lda     (sp),y
	ldx     #$00
L0017:	pha
	ldy     #$01
	lda     (sp),y
	sta     regbank+4
	iny
	lda     (sp),y
	sta     regbank+5
	pla
	jmp     incsp3

.endproc

