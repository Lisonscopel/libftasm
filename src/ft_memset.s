section .text
	global	ft_memset

ft_memset :
	enter	0, 0
	cmp		rdi, 0
	je		end
	cmp		rsi, 0
	je		end
	cmp		rdx, 0
	je		end

set:
	xor		al, al
	mov		rcx, rdx
	mov		r8, rdi
	mov		rax, rsi
	cld
	rep		stosb
	mov		rax, r8

end :
	leave
	ret
