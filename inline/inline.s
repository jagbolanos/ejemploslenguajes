	.file	"inline.c"
	.section	.rodata
.LC0:
	.string	"El maximo entre 5 y 6 es: %d\n"
.LC1:
	.string	"El maximo entre 6 y 5 es: %d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$5, 28(%esp)
	movl	$6, 24(%esp)
	movl	24(%esp), %edx
	movl	28(%esp), %eax
	cmpl	%edx, %eax
	jge	.L2
	movl	%edx, %eax
.L2:
	movl	%eax, %edx
	movl	$.LC0, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$6, 20(%esp)
	movl	$5, 16(%esp)
	movl	16(%esp), %edx
	movl	20(%esp), %eax
	cmpl	%edx, %eax
	jge	.L3
	movl	%edx, %eax
.L3:
	movl	%eax, %edx
	movl	$.LC1, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.1-4ubuntu9) 4.4.1"
	.section	.note.GNU-stack,"",@progbits
