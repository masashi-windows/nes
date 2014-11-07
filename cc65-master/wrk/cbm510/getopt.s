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
	.import		_stderr
	.import		_fputc
	.import		_fputs
	.import		_strchr
	.export		_optarg
	.export		_optind
	.export		_opterr
	.export		_optopt
	.export		_getopt

.segment	"DATA"

_opterr:
	.word	$0001
_optind:
	.word	$0001

.segment	"RODATA"

L004F:
	.byte	$3A,$20,$4F,$50,$54,$49,$4F,$4E,$20,$52,$45,$51,$55,$49,$52,$45
	.byte	$53,$20,$41,$4E,$20,$41,$52,$47,$55,$4D,$45,$4E,$54,$20,$2D,$2D
	.byte	$20,$00
L002B:
	.byte	$3A,$20,$49,$4C,$4C,$45,$47,$41,$4C,$20,$4F,$50,$54,$49,$4F,$4E
	.byte	$20,$2D,$2D,$20,$00
L0049	:=	L004F+33
L005F	:=	L004F+33
L0004	:=	L004F+33

.segment	"BSS"

_optopt:
	.res	2,$00
_optarg:
	.res	2,$00

; ---------------------------------------------------------------
; int __near__ __fastcall__ getopt (int, __near__ const __near__ unsigned char**, __near__ const unsigned char*)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_getopt: near

.segment	"DATA"

L0005:
	.addr	L0004

.segment	"CODE"

	jsr     pushax
	lda     regbank+4
	ldx     regbank+5
	jsr     pushax
	lda     L0005
	sta     ptr1
	lda     L0005+1
	sta     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	bne     L0012
	lda     _optind
	ldy     #$06
	cmp     (sp),y
	lda     _optind+1
	iny
	sbc     (sp),y
	bvs     L0065
	eor     #$80
L0065:	bmi     L0068
	jsr     pushwysp
	lda     _optind
	ldx     _optind+1
	stx     tmp1
	asl     a
	rol     tmp1
	ldx     tmp1
	jsr     tosaddax
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	sta     L0005
	stx     L0005+1
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	cmp     #$2D
	bne     L0068
	inc     L0005
	bne     L000E
	inc     L0005+1
L000E:	lda     L0005
	sta     ptr1
	lda     L0005+1
	sta     ptr1+1
	lda     (ptr1),y
	bne     L0009
L0068:	ldx     #$FF
	txa
	jmp     L0003
L0009:	lda     L0005
	sta     ptr1
	lda     L0005+1
	sta     ptr1+1
	lda     (ptr1),y
	cmp     #$2D
	bne     L0012
	inc     _optind
	bne     L0015
	inc     _optind+1
L0015:	ldx     #$FF
	txa
	jmp     L0003
L0012:	lda     L0005
	ldx     L0005+1
	sta     regsave
	stx     regsave+1
	clc
	adc     #$01
	bcc     L001C
	inx
L001C:	sta     L0005
	stx     L0005+1
	lda     (regsave),y
	sta     _optopt
	sty     _optopt+1
	ldy     #$05
	jsr     pushwysp
	lda     _optopt
	ldx     _optopt+1
	jsr     _strchr
	sta     regbank+4
	stx     regbank+4+1
	jsr     bnegax
	beq     L0018
	lda     L0005
	sta     ptr1
	lda     L0005+1
	sta     ptr1+1
	ldy     #$00
	lda     (ptr1),y
	bne     L0023
	inc     _optind
	bne     L0023
	inc     _optind+1
L0023:	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputs
	lda     #<(L002B)
	ldx     #>(L002B)
	jsr     pushax
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputs
	lda     _optopt
	ldx     _optopt+1
	jsr     pushax
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputc
	lda     #$0D
	jsr     pusha0
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputc
	ldx     #$00
	lda     #$3F
	jmp     L0003
L0018:	inc     regbank+4
	bne     L0038
	inc     regbank+4+1
L0038:	ldy     #$00
	lda     (regbank+4),y
	cmp     #$3A
	beq     L0036
	tya
	sta     _optarg
	sta     _optarg+1
	lda     L0005
	sta     ptr1
	lda     L0005+1
	sta     ptr1+1
	lda     (ptr1),y
	jne     L003F
	jmp     L006C
L0036:	lda     L0005
	sta     ptr1
	lda     L0005+1
	sta     ptr1+1
	lda     (ptr1),y
	beq     L0040
	lda     L0005
	sta     _optarg
	lda     L0005+1
	sta     _optarg+1
	jmp     L005A
L0040:	ldy     #$09
	jsr     pushwysp
	inc     _optind
	bne     L0047
	inc     _optind+1
L0047:	lda     _optind
	ldx     _optind+1
	jsr     tosicmp
	beq     L0067
	bpl     L0045
L0067:	lda     #<(L0049)
	sta     L0005
	lda     #>(L0049)
	sta     L0005+1
	ldy     #$05
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputs
	lda     #<(L004F)
	ldx     #>(L004F)
	jsr     pushax
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputs
	lda     _optopt
	ldx     _optopt+1
	jsr     pushax
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputc
	lda     #$0D
	jsr     pusha0
	lda     _stderr
	ldx     _stderr+1
	jsr     _fputc
	ldx     #$00
	lda     #$3F
	jmp     L0003
L0045:	ldy     #$07
	jsr     pushwysp
	lda     _optind
	ldx     _optind+1
	stx     tmp1
	asl     a
	rol     tmp1
	ldx     tmp1
	jsr     tosaddax
	sta     ptr1
	stx     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     _optarg+1
	dey
	lda     (ptr1),y
	sta     _optarg
L005A:	lda     #<(L005F)
	sta     L0005
	lda     #>(L005F)
	sta     L0005+1
L006C:	inc     _optind
	bne     L003F
	inc     _optind+1
L003F:	lda     _optopt
	ldx     _optopt+1
L0003:	pha
	ldy     #$00
	lda     (sp),y
	sta     regbank+4
	iny
	lda     (sp),y
	sta     regbank+5
	pla
	jmp     incsp8

.endproc

