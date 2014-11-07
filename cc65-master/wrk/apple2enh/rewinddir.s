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
	.import		_read
	.import		_lseek
	.import		_memset
	.export		_rewinddir

; ---------------------------------------------------------------
; void __near__ __fastcall__ rewinddir (register __near__ struct DIR*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_rewinddir: near

.segment	"CODE"

	jsr     pushax
	ldy     #$00
	ldx     #$04
	jsr     regswap2
	jsr     decsp6
	ldy     #$01
	lda     (regbank+4),y
	tax
	lda     (regbank+4)
	ldy     #$04
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	ldx     #$00
	txa
	sta     (sp)
	ldy     #$01
	sta     (sp),y
	iny
	sta     (sp),y
	iny
	sta     (sp),y
	lda     #$02
	jsr     _lseek
	jsr     tsteax
	beq     L0010
	jsr     decsp4
	ldy     #$01
	lda     (regbank+4),y
	tax
	lda     (regbank+4)
	iny
	sta     (sp),y
	iny
	txa
	sta     (sp),y
	lda     regbank+4
	ldx     regbank+4+1
	clc
	adc     #$05
	bcc     L0014
	inx
L0014:	sta     (sp)
	ldy     #$01
	txa
	sta     (sp),y
	ldx     #$02
	lda     #$00
	jsr     _read
	cpx     #$02
	bne     L0010
	cmp     #$00
	bne     L0010
	ina
	ldy     #$04
	sta     (regbank+4),y
	bra     L000A
L0010:	lda     regbank+4
	ldx     regbank+4+1
	clc
	adc     #$05
	bcc     L001D
	inx
L001D:	jsr     pushax
	ldx     #$02
	lda     #$00
	jsr     __bzero
L000A:	lda     (sp)
	sta     regbank+4
	ldy     #$01
	lda     (sp),y
	sta     regbank+5
	jmp     incsp2

.endproc
