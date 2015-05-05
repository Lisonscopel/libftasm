section .text
	global ft_isalpha

ft_isalpha:
	enter 0, 0

	look:
	cmp rdi, byte 'a'
	jge testlower
	cmp rdi, byte 'A'
	jge testupper
	jmp ko

	testupper:
	cmp rdi, byte 'Z'
	jle ok
	jmp ko

	testlower:
	cmp rdi, byte 'z'
	jle ok
	jmp ko

	ok:
	mov eax, 1
	jmp end

	ko:
	mov eax, 0
	jmp end

	end:
	leave
	ret
