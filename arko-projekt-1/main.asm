		.data
buf:		.space	100
msg1:	.asciiz	"Podaj ciag znakow\n"

		.text
		.globl 	main
main:
		la		$a0,		msg1
		li		$v0,		4
		syscall
	
		la		$a0,		buf
		li		$a1,		100
		li		$v0,		8
		syscall
	
		jal		change
	
		la		$a0,		buf
		li		$v0,		4
		syscall
	
exit:
		li		$v0,		10
		syscall