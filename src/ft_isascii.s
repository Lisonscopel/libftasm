section .text
	global ft_isascii

ft_isascii:
	enter 0, 0
	mov rax, 1
	cmp rdi, 0
	jge test
	jmp ko

	test:
	cmp rdi, 127
	jg ko
	jmp end

	ko:
	mov rax, 0
	jmp end

	end:
	leave
	ret
