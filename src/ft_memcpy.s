section .text
	global	ft_memcpy

	ft_memcpy :
	mov		rcx, rdx
	mov		r8, rdi
	cld
	rep		movsb
	mov		rax, r8
	ret
