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
	.export		_fsetpos
	.import		_fseek

; ---------------------------------------------------------------
; int __near__ __fastcall__ fsetpos (__near__ struct _FILE*, __near__ const unsigned long*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_fsetpos: near

.segment	"CODE"

	jsr     pushax
	jsr     decsp6
	ldy     #$09
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     ldeaxi
	jsr     steax0sp
	ldx     #$00
	lda     #$02
	jsr     _fseek
	jmp     incsp4

.endproc

