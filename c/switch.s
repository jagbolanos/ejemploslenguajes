	.file	"switch.c"
	.section	.rodata
.LC0:
	.string	"Ingrese x: "
.LC1:
	.string	"%d"
.LC2:
	.string	"CERO"
.LC3:
	.string	"UNO"
.LC4:
	.string	"DOS"
.LC5:
	.string	"TRES"
.LC6:
	.string	"OTRO"
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
	cmpl	$1, %eax
	je	.L4
	cmpl	$1, %eax
	jg	.L7
	testl	%eax, %eax
	je	.L3
	jmp	.L2
.L7:
	cmpl	$2, %eax
	je	.L5
	cmpl	$3, %eax
	je	.L6
	jmp	.L2
.L3:
	movl	$.LC2, %eax
	movl	%eax, (%esp)
	call	printf
	jmp	.L8
.L4:
	movl	$.LC3, %eax
	movl	%eax, (%esp)
	call	printf
.L5:
	movl	$.LC4, %eax
	movl	%eax, (%esp)
	call	printf
	jmp	.L8
.L6:
	movl	$.LC5, %eax
	movl	%eax, (%esp)
	call	printf
	jmp	.L8
.L2:
	movl	$.LC6, %eax
	movl	%eax, (%esp)
	call	printf
.L8:
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.1-4ubuntu9) 4.4.1"
	.section	.note.GNU-stack,"",@progbits
