section .text
	global ft_bzero

ft_bzero :
	enter	0, 0
	cmp		rsi, 0
	je		end

loop :
	cmp		rsi, byte 0
	je		end
	mov		[rdi], byte 0
	inc		rdi
	dec		rsi
	jmp		loop

end :
	leave
	ret
