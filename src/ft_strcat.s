section .text

global ft_strcat

ft_strcat:
	enter	0, 0
	xor		al, al
	mov		r9, rdi

first_loop:
	cmp		byte [rdi], 0
	je		second_loop
	inc		rdi
	jmp		first_loop

second_loop:
	cmp		byte [rsi], 0
	je		end
	mov		rax, [rsi]
	mov		[rdi], al
	inc		rsi
	inc		rdi
	jmp		second_loop

end:
	mov		byte [rdi], 0
	mov		rax, r9
	leave
	ret
