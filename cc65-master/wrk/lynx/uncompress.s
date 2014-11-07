;
; File generated by cc65 v 2.14.0
;
	.fopt		compiler,"cc65 v 2.14.0"
	.setcpu		"65C02"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.import		_inflatemem
	.export		_uncompress
	.import		_adler32

; ---------------------------------------------------------------
; int __near__ uncompress (__near__ unsigned char*, __near__ unsigned int*, __near__ const unsigned char*, unsigned int)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_uncompress: near

.segment	"CODE"

	jsr     decsp8
	ldy     #$0B
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     (ptr1)
	and     #$8F
	cmp     #$08
	jne     L0025
	iny
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	and     #$20
	jne     L0025
	ldy     #$0B
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     (ptr1)
	tax
	lda     #$00
	jsr     pushax
	ldy     #$0D
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	jsr     tosora0
	jsr     pushax
	lda     #$1F
	jsr     tosumoda0
	stx     tmp1
	ora     tmp1
	jne     L0025
	ldy     #$0F
	jsr     pushwysp
	ldy     #$13
	jsr     pushwysp
	ldy     #$0F
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	clc
	adc     #$02
	bcc     L0018
	inx
L0018:	jsr     _inflatemem
	ldy     #$08
	jsr     staxysp
	ldy     #$00
	jsr     staxspidx
	ldy     #$0A
	lda     (sp),y
	ldy     #$08
	clc
	adc     (sp),y
	pha
	ldy     #$0B
	lda     (sp),y
	ldy     #$09
	adc     (sp),y
	tax
	pla
	sec
	sbc     #$04
	bcs     L001B
	dex
L001B:	ldy     #$04
	jsr     staxysp
	ldy     #$0C
	jsr     subysp
	ldx     #$00
	ldy     #$02
	txa
	sta     (sp),y
	iny
	sta     (sp),y
	iny
	sta     (sp),y
	iny
	sta     (sp),y
	sta     (sp)
	ldy     #$01
	sta     (sp),y
	jsr     _adler32
	ldy     #$02
	jsr     steaxysp
	ldy     #$15
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	sta     (sp)
	ldy     #$01
	txa
	sta     (sp),y
	ldy     #$0D
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _adler32
	jsr     steax0sp
	lda     (sp)
	jsr     pusha0
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$03
	lda     (ptr1),y
	jsr     tosicmp0
	bne     L0025
	jsr     ldeax0sp
	txa
	ldx     sreg
	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$02
	lda     (ptr1),y
	jsr     tosicmp0
	bne     L0025
	jsr     ldeax0sp
	ldx     sreg+1
	lda     sreg
	jsr     pushax
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	jsr     tosicmp0
	bne     L0025
	jsr     ldeax0sp
	lda     sreg+1
	jsr     pusha0
	ldy     #$07
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     (ptr1)
	jsr     tosicmp0
	bne     L0025
	ldx     #$00
	txa
	bra     L0001
L0025:	ldx     #$FF
	lda     #$FD
L0001:	ldy     #$10
	jmp     addysp

.endproc

