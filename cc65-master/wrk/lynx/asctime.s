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
	.export		_asctime
	.import		_strftime

.segment	"RODATA"

L000A:
	.byte	$25,$63,$0A,$00

; ---------------------------------------------------------------
; __near__ unsigned char* __near__ __fastcall__ asctime (__near__ const struct tm*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_asctime: near

.segment	"BSS"

L0005:
	.res	26,$00

.segment	"CODE"

	jsr     pushax
	jsr     decsp6
	lda     #<(L0005)
	ldy     #$04
	sta     (sp),y
	iny
	lda     #>(L0005)
	sta     (sp),y
	lda     #$1A
	ldy     #$02
	sta     (sp),y
	iny
	lda     #$00
	sta     (sp),y
	lda     #<(L000A)
	sta     (sp)
	ldy     #$01
	lda     #>(L000A)
	sta     (sp),y
	ldy     #$07
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	jsr     _strftime
	stx     tmp1
	ora     tmp1
	beq     L000D
	lda     #<(L0005)
	ldx     #>(L0005)
	jmp     incsp2
L000D:	tax
	jmp     incsp2

.endproc

