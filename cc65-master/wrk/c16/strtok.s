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
	.import		_strchr
	.export		_strtok

.segment	"DATA"

_Last:
	.word	$0000

; ---------------------------------------------------------------
; __near__ unsigned char* __near__ __fastcall__ strtok (register __near__ unsigned char*, __near__ const unsigned char*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_strtok: near

.segment	"CODE"

	jsr     pushax
	ldy     #$02
	ldx     #$04
	jsr     regswap2
	jsr     decsp3
	lda     regbank+4
	ora     regbank+4+1
	bne     L0003
	lda     _Last
	sta     regbank+4
	lda     _Last+1
	sta     regbank+4+1
L0003:	ldy     #$00
	lda     (regbank+4),y
	bne     L003A
	tax
	jmp     L0002
L000B:	inc     regbank+4
	bne     L0017
	inc     regbank+4+1
L0017:	ldy     #$00
L003A:	lda     (regbank+4),y
	ldy     #$02
	sta     (sp),y
	tax
	beq     L0040
	ldy     #$06
	jsr     pushwysp
	ldy     #$04
	lda     (sp),y
	ldx     #$00
	jsr     _strchr
	cpx     #$00
	bne     L000B
	cmp     #$00
	bne     L000B
	ldy     #$02
L0040:	lda     (sp),y
	bne     L0018
	lda     regbank+4
	sta     _Last
	lda     regbank+4+1
	sta     _Last+1
	txa
	jmp     L0002
L0018:	lda     regbank+4
	ldx     regbank+4+1
	jsr     stax0sp
	jmp     L0021
L001F:	inc     regbank+4
	bne     L0021
	inc     regbank+4+1
L0021:	ldy     #$00
	lda     (regbank+4),y
	ldy     #$02
	sta     (sp),y
	tax
	beq     L0041
	ldy     #$06
	jsr     pushwysp
	ldy     #$04
	lda     (sp),y
	ldx     #$00
	jsr     _strchr
	cpx     #$00
	bne     L0038
	cmp     #$00
	beq     L001F
L0038:	ldy     #$02
L0041:	lda     (sp),y
	bne     L002C
	lda     regbank+4
	sta     _Last
	lda     regbank+4+1
	sta     _Last+1
	jmp     L0030
L002C:	lda     #$00
	tay
	sta     (regbank+4),y
	lda     regbank+4
	ldx     regbank+4+1
	clc
	adc     #$01
	bcc     L0035
	inx
L0035:	sta     _Last
	stx     _Last+1
L0030:	ldy     #$01
	lda     (sp),y
	tax
	dey
	lda     (sp),y
L0002:	pha
	ldy     #$05
	lda     (sp),y
	sta     regbank+4
	iny
	lda     (sp),y
	sta     regbank+5
	pla
	jmp     incsp7

.endproc
