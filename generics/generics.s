	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI1_0:
	.quad	4619116957812549222
LCPI1_1:
	.quad	4617878467915022336
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
Leh_func_begin1:
	pushq	%rbp
Ltmp0:
	movq	%rsp, %rbp
Ltmp1:
	subq	$48, %rsp
Ltmp2:
	movl	$5, %eax
	movl	$6, %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	__Z12max_genericoIiET_S0_S0_
	movl	%eax, %ecx
	movq	__ZSt4cout@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	leaq	L_.str(%rip), %rsi
	movq	%rdx, %rdi
	movl	%ecx, -12(%rbp)
	movq	%rdx, -24(%rbp)
	callq	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	callq	__ZNSolsEi
	movq	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rcx
	leaq	(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, -32(%rbp)
	callq	__ZNSolsEPFRSoS_E
	movsd	LCPI1_0(%rip), %xmm0
	movsd	LCPI1_1(%rip), %xmm1
	callq	__Z12max_genericoIdET_S0_S0_
	leaq	L_.str1(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -40(%rbp)
	callq	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movsd	-40(%rbp), %xmm0
	callq	__ZNSolsEd
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi
	callq	__ZNSolsEPFRSoS_E
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
Leh_func_end1:

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I_main:
Leh_func_begin2:
	pushq	%rbp
Ltmp3:
	movq	%rsp, %rbp
Ltmp4:
	movl	$1, %eax
	movl	$65535, %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	__Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	ret
Leh_func_end2:

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__Z12max_genericoIiET_S0_S0_
.weak_definition __Z12max_genericoIiET_S0_S0_
	.align	4, 0x90
__Z12max_genericoIiET_S0_S0_:
Leh_func_begin3:
	pushq	%rbp
Ltmp5:
	movq	%rsp, %rbp
Ltmp6:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	LBB3_2
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	LBB3_3
LBB3_2:
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
LBB3_3:
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	popq	%rbp
	ret
Leh_func_end3:

	.globl	__Z12max_genericoIdET_S0_S0_
.weak_definition __Z12max_genericoIdET_S0_S0_
	.align	4, 0x90
__Z12max_genericoIdET_S0_S0_:
Leh_func_begin4:
	pushq	%rbp
Ltmp7:
	movq	%rsp, %rbp
Ltmp8:
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	LBB4_2
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	LBB4_3
LBB4_2:
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
LBB4_3:
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	popq	%rbp
	ret
Leh_func_end4:

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__Z41__static_initialization_and_destruction_0ii:
Leh_func_begin5:
	pushq	%rbp
Ltmp9:
	movq	%rsp, %rbp
Ltmp10:
	subq	$16, %rsp
Ltmp11:
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jne	LBB5_3
	movl	-8(%rbp), %eax
	cmpl	$65535, %eax
	jne	LBB5_3
	leaq	__ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	callq	__ZNSt8ios_base4InitC1Ev
	leaq	___tcf_0(%rip), %rax
	movabsq	$0, %rcx
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	leaq	(%rdx), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	___cxa_atexit
LBB5_3:
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end5:

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
___tcf_0:
Leh_func_begin6:
	pushq	%rbp
Ltmp12:
	movq	%rsp, %rbp
Ltmp13:
	subq	$16, %rsp
Ltmp14:
	movq	%rdi, -8(%rbp)
	leaq	__ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	callq	__ZNSt8ios_base4InitD1Ev
	addq	$16, %rsp
	popq	%rbp
	ret
Leh_func_end6:

.zerofill __DATA,__bss,__ZStL8__ioinit,1,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "Max (5, 6): "

L_.str1:
	.asciz	 "Max (6.0, 5.0): "

	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	3
	.quad	__GLOBAL__I_main
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
Ltmp15:
	.quad	Leh_func_begin1-Ltmp15
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

__GLOBAL__I_main.eh:
Lset6 = Leh_frame_end2-Leh_frame_begin2
	.long	Lset6
Leh_frame_begin2:
Lset7 = Leh_frame_begin2-Leh_frame_common
	.long	Lset7
Ltmp16:
	.quad	Leh_func_begin2-Ltmp16
Lset8 = Leh_func_end2-Leh_func_begin2
	.quad	Lset8
	.byte	0
	.byte	4
Lset9 = Ltmp3-Leh_func_begin2
	.long	Lset9
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset10 = Ltmp4-Ltmp3
	.long	Lset10
	.byte	13
	.byte	6
	.align	3
Leh_frame_end2:

	.globl	__Z12max_genericoIiET_S0_S0_.eh
.weak_definition __Z12max_genericoIiET_S0_S0_.eh
__Z12max_genericoIiET_S0_S0_.eh:
Lset11 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset11
Leh_frame_begin3:
Lset12 = Leh_frame_begin3-Leh_frame_common
	.long	Lset12
Ltmp17:
	.quad	Leh_func_begin3-Ltmp17
Lset13 = Leh_func_end3-Leh_func_begin3
	.quad	Lset13
	.byte	0
	.byte	4
Lset14 = Ltmp5-Leh_func_begin3
	.long	Lset14
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset15 = Ltmp6-Ltmp5
	.long	Lset15
	.byte	13
	.byte	6
	.align	3
Leh_frame_end3:

	.globl	__Z12max_genericoIdET_S0_S0_.eh
.weak_definition __Z12max_genericoIdET_S0_S0_.eh
__Z12max_genericoIdET_S0_S0_.eh:
Lset16 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset16
Leh_frame_begin4:
Lset17 = Leh_frame_begin4-Leh_frame_common
	.long	Lset17
Ltmp18:
	.quad	Leh_func_begin4-Ltmp18
Lset18 = Leh_func_end4-Leh_func_begin4
	.quad	Lset18
	.byte	0
	.byte	4
Lset19 = Ltmp7-Leh_func_begin4
	.long	Lset19
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset20 = Ltmp8-Ltmp7
	.long	Lset20
	.byte	13
	.byte	6
	.align	3
Leh_frame_end4:

__Z41__static_initialization_and_destruction_0ii.eh:
Lset21 = Leh_frame_end5-Leh_frame_begin5
	.long	Lset21
Leh_frame_begin5:
Lset22 = Leh_frame_begin5-Leh_frame_common
	.long	Lset22
Ltmp19:
	.quad	Leh_func_begin5-Ltmp19
Lset23 = Leh_func_end5-Leh_func_begin5
	.quad	Lset23
	.byte	0
	.byte	4
Lset24 = Ltmp9-Leh_func_begin5
	.long	Lset24
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset25 = Ltmp10-Ltmp9
	.long	Lset25
	.byte	13
	.byte	6
	.align	3
Leh_frame_end5:

___tcf_0.eh:
Lset26 = Leh_frame_end6-Leh_frame_begin6
	.long	Lset26
Leh_frame_begin6:
Lset27 = Leh_frame_begin6-Leh_frame_common
	.long	Lset27
Ltmp20:
	.quad	Leh_func_begin6-Ltmp20
Lset28 = Leh_func_end6-Leh_func_begin6
	.quad	Lset28
	.byte	0
	.byte	4
Lset29 = Ltmp12-Leh_func_begin6
	.long	Lset29
	.byte	14
	.byte	16
	.byte	134
	.byte	2
	.byte	4
Lset30 = Ltmp13-Ltmp12
	.long	Lset30
	.byte	13
	.byte	6
	.align	3
Leh_frame_end6:


.subsections_via_symbols
