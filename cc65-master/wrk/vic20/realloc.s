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
	.import		_malloc
	.export		_realloc
	.import		_free
	.import		_memcpy
	.import		__heapptr
	.import		__heapend

; ---------------------------------------------------------------
; __near__ void* __near__ __fastcall__ realloc (__near__ void*, register unsigned int)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_realloc: near

.segment	"CODE"

	jsr     pushax
	ldy     #$00
	ldx     #$04
	jsr     regswap2
	lda     regbank+2
	ldx     regbank+3
	jsr     pushax
	jsr     decsp6
	ldy     #$0B
	lda     (sp),y
	dey
	ora     (sp),y
	bne     L0002
	lda     regbank+4
	ldx     regbank+4+1
	jsr     _malloc
	jmp     L0001
L0002:	lda     regbank+4
	ora     regbank+4+1
	bne     L0006
	iny
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
	ldx     #$00
	txa
	jmp     L0001
L0006:	lda     #$04
	clc
	adc     regbank+4
	sta     regbank+4
	bcc     L000E
	inc     regbank+4+1
L000E:	lda     regbank+4+1
	cmp     #$00
	bne     L0011
	lda     regbank+4
	cmp     #$06
L0011:	bcs     L000F
	ldx     #$00
	lda     #$06
	sta     regbank+4
	stx     regbank+4+1
L000F:	iny
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sec
	sbc     #$04
	bcs     L0018
	dex
L0018:	sta     ptr1
	stx     ptr1+1
	ldy     #$03
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	sta     regbank+2
	stx     regbank+2+1
	dey
	lda     (regbank+2),y
	tax
	dey
	lda     (regbank+2),y
	ldy     #$02
	jsr     staxysp
	clc
	adc     regbank+2
	pha
	txa
	adc     regbank+2+1
	tax
	pla
	cpx     __heapptr+1
	bne     L0022
	cmp     __heapptr
	bne     L0022
	lda     __heapptr
	sec
	ldy     #$02
	sbc     (sp),y
	pha
	lda     __heapptr+1
	iny
	sbc     (sp),y
	tax
	pla
	clc
	adc     regbank+4
	pha
	txa
	adc     regbank+4+1
	tax
	pla
	jsr     stax0sp
	sec
	sbc     __heapend
	sta     tmp1
	txa
	sbc     __heapend+1
	ora     tmp1
	beq     L003F
	bcs     L0022
L003F:	ldy     #$01
	lda     (sp),y
	sta     __heapptr+1
	dey
	lda     (sp),y
	sta     __heapptr
	lda     regbank+4
	sta     (regbank+2),y
	iny
	lda     regbank+4+1
	sta     (regbank+2),y
	lda     regbank+2
	ldx     regbank+2+1
	iny
	sta     (regbank+2),y
	iny
	txa
	sta     (regbank+2),y
	ldy     #$0B
	jmp     L0040
L0022:	lda     regbank+4
	ldx     regbank+4+1
	jsr     _malloc
	ldy     #$04
	jsr     staxysp
	stx     tmp1
	ora     tmp1
	beq     L002C
	ldx     #$00
	lda     #$04
	ldy     #$02
	jsr     subeqysp
	lda     regbank+4
	sec
	ldy     #$02
	sbc     (sp),y
	sta     tmp1
	lda     regbank+4+1
	iny
	sbc     (sp),y
	ora     tmp1
	bcc     L0032
	beq     L0032
	lda     (sp),y
	sta     regbank+4+1
	dey
	lda     (sp),y
	sta     regbank+4
L0032:	ldy     #$07
	jsr     pushwysp
	ldy     #$0F
	jsr     pushwysp
	lda     regbank+4
	ldx     regbank+4+1
	jsr     _memcpy
	ldy     #$0B
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _free
L002C:	ldy     #$05
L0040:	lda     (sp),y
	tax
	dey
	lda     (sp),y
L0001:	pha
	stx     tmp1
	ldy     #$09
	ldx     #$03
L003D:	lda     (sp),y
	sta     regbank+2,x
	dey
	dex
	bpl     L003D
	ldx     tmp1
	pla
	ldy     #$0C
	jmp     addysp

.endproc

