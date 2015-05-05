section .text
	global ft_isalnum
	extern ft_isdigit
	extern ft_isalpha

ft_isalnum:
	enter 0, 0
	call ft_isdigit
	cmp rax, 1
	je end
	call ft_isalpha
	cmp rax, 1
	je end
	jne ko

	ko:
	mov rax, 0
	jmp end

	end:
	leave
	ret

