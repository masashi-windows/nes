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
	.import		_fgetc
	.export		_fgets
	.import		__seterrno

; ---------------------------------------------------------------
; __near__ unsigned char* __near__ __fastcall__ fgets (__near__ unsigned char*, unsigned int, register __near__ struct _FILE*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_fgets: near

.segment	"CODE"

	jsr     pushax
	ldy     #$00
	ldx     #$04
	jsr     regswap2
	lda     regbank+2
	ldx     regbank+3
	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     regbank+2+1
	dey
	lda     (sp),y
	sta     regbank+2
	jsr     decsp4
	ldy     #$08
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L0004
	lda     #$07
	jsr     __seterrno
	ldx     #$00
	jmp     L0002
L0004:	ldx     #$00
	ldy     #$02
	txa
	sta     (sp),y
	iny
	sta     (sp),y
	jmp     L002B
L000B:	lda     regbank+4
	ldx     regbank+4+1
	jsr     _fgetc
	jsr     stax0sp
	cpx     #$FF
	bne     L001E
	cmp     #$FF
	bne     L001E
	ldy     #$01
	lda     (regbank+4),y
	and     #$04
	bne     L002A
	iny
	lda     (sp),y
	iny
	ora     (sp),y
	bne     L000C
L002A:	lda     #$00
	tay
	sta     (regbank+2),y
	inx
	jmp     L0002
L001E:	ldy     #$00
	lda     (sp),y
	sta     (regbank+2),y
	inc     regbank+2
	bne     L0022
	inc     regbank+2+1
L0022:	ldy     #$02
	ldx     #$00
	lda     #$01
	jsr     addeqysp
	ldy     #$00
	lda     (sp),y
	cmp     #$9B
	beq     L000C
	ldx     #$00
L002B:	lda     #$01
	ldy     #$08
	jsr     subeqysp
	stx     tmp1
	ora     tmp1
	bne     L000B
L000C:	lda     #$00
	tay
	sta     (regbank+2),y
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
L0002:	pha
	stx     tmp1
	ldy     #$07
	ldx     #$03
L0029:	lda     (sp),y
	sta     regbank+2,x
	dey
	dex
	bpl     L0029
	ldx     tmp1
	pla
	ldy     #$0C
	jmp     addysp

.endproc

