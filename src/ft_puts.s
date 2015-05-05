%define STDOUT 1
%define SYS_WRITE 0x2000004

section .data
	endostr		db 10
	null		db "(null)", 10
	len			equ $ - null

section .text
	extern		ft_strlen
	global		ft_puts

ft_puts:
	enter		8, 0
	cmp			rdi, 0
	je			retnull

write:
	push		rdi
	call		ft_strlen
	pop			rsi
	mov			rdx, rax
	mov			rax, SYS_WRITE
	mov			rdi, STDOUT
	syscall

writeend:
	mov			rax, SYS_WRITE
	mov			rdi, STDOUT
	lea			rsi, [rel endostr]
	mov			rdx, 1
	syscall
	jmp			end

retnull:
	mov			rax, SYS_WRITE
	mov			rdi, STDOUT
	lea			rsi, [rel null]
	mov			rdx, len
	syscall

end:
	leave
	ret
