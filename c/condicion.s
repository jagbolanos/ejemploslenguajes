	.file	"condicion.c"
	.section	.rodata
.LC0:
	.string	"Ingrese x: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Es mayor"
.LC3:
	.string	"Es menor o igual"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$.LC0, %eax
	movl	%eax, (%esp)
	call	printf
	movl	$.LC1, %eax
	leal	28(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__isoc99_scanf
	movl	28(%esp), %eax
	cmpl	$5, %eax
	jle	.L2
	movl	$.LC2, (%esp)
	call	puts
	jmp	.L3
.L2:
	movl	$.LC3, (%esp)
	call	puts
.L3:
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.1-4ubuntu9) 4.4.1"
	.section	.note.GNU-stack,"",@progbits
