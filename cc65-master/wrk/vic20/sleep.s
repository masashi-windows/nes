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
	.import		_clock
	.export		_sleep

; ---------------------------------------------------------------
; unsigned int __near__ __fastcall__ sleep (unsigned int)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_sleep: near

.segment	"CODE"

	jsr     pushax
	jsr     _clock
	jsr     pusheax
	ldy     #$05
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     push0ax
	ldx     #$00
	lda     #$3C
	jsr     tosumul0ax
	jsr     tosaddeax
	jsr     pusheax
L0008:	jsr     ldeax0sp
	jsr     pusheax
	jsr     _clock
	jsr     tossubeax
	jsr     pusheax
	ldx     #$00
	stx     sreg
	stx     sreg+1
	lda     #$01
	jsr     tosgeeax
	bne     L0008
	ldx     #$00
	txa
	jmp     incsp6

.endproc

