section	.text
		global	ft_strnew
		extern	ft_bzero
		extern	malloc

ft_strnew :
		enter	0, 0
		inc		rdi
		mov		rsi, rdi
		push	rsi
		call	malloc
		pop		rsi
		mov		rdi, rax
		call	ft_bzero

	end :
		leave
		ret
