section	.text
		global	ft_memalloc
		extern	ft_bzero
		extern	malloc

ft_memalloc :
		enter	0, 0
		mov		rsi, rdi
		push	rsi
		call	malloc
		pop		rsi
		mov		rdi, rax
		call	ft_bzero

	end :
		leave
		ret
