	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$32, %rsp
Ltmp2:
	xorb	%al, %al
	leaq	L_.str(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	leaq	-12(%rbp), %rcx
	xorb	%dl, %dl
	leaq	L_.str1(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movb	%dl, %al
	callq	_scanf
	movl	-12(%rbp), %eax
	cmpl	$3, %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	ja	LBB1_5
	leaq	LJTI1_0(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	movslq	(%rax,%rdx,4), %rdx
	leaq	(%rdx,%rax), %rax
	jmpq	*%rax
LBB1_1:
	xorb	%al, %al
	leaq	L_.str2(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	jmp	LBB1_6
LBB1_2:
	xorb	%al, %al
	leaq	L_.str3(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
LBB1_3:
	xorb	%al, %al
	leaq	L_.str4(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	jmp	LBB1_6
LBB1_4:
	xorb	%al, %al
	leaq	L_.str5(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
	jmp	LBB1_6
LBB1_5:
	xorb	%al, %al
	leaq	L_.str6(%rip), %rcx
	movq	%rcx, %rdi
	callq	_printf
LBB1_6:
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	ret
Leh_func_end1:
	.align	2, 0x90
L1_0_set_1 = LBB1_1-LJTI1_0
L1_0_set_2 = LBB1_2-LJTI1_0
L1_0_set_3 = LBB1_3-LJTI1_0
L1_0_set_4 = LBB1_4-LJTI1_0
LJTI1_0:
	.long	L1_0_set_1
	.long	L1_0_set_2
	.long	L1_0_set_3
	.long	L1_0_set_4

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "Ingrese x: "

L_.str1:
	.asciz	 "%d"

L_.str2:
	.asciz	 "CERO"

L_.str3:
	.asciz	 "UNO"

L_.str4:
	.asciz	 "DOS"

L_.str5:
	.asciz	 "TRES"

L_.str6:
	.asciz	 "OTRO"

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	120
	.byte	16
	.byte	1
	.byte	16
	.byte	12
	.byte	7
	.byte	8
	.byte	144
	.byte	1
	.align	3
Leh_frame_common_end:
	.globl	_main.eh
_main.eh:
Lset1 = Leh_frame_end1-Leh_frame_begin1
	.long	Lset1
Leh_frame_begin1:
Lset2 = Leh_frame_begin1-Leh_frame_common
	.long	Lset2
Ltmp3:
	.quad	Leh_func_begin1-Ltmp3
Lset3 = Leh_func_end1-Leh_func_begin1
	.quad	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp0-Leh_func_begin1
	.long	Lset4
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset5 = Ltmp1-Ltmp0
	.long	Lset5
	.byte	13
	.byte	6
	.align	3
Leh_frame_end1:


.subsections_via_symbols
