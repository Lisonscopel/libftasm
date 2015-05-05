section .text
	global ft_strdup
	extern  malloc
	extern  ft_strlen

ft_strdup:
	enter	0, 0
    cmp     rdi, 0
    je      ret_null
    push    rbx
    mov     rbx, rdi
    call    ft_strlen

alloc:
    add     rax, 1
    mov     rdi, rax
    push    rdi
    call    malloc
    pop     rdi
    cmp     rax, 0
    je      end

copy:
    mov     rcx, rdi
    mov     rdi, rax
    mov     rsi, rbx
    cld
    rep     movsb

end:
	pop		rbx
	leave
	ret

ret_null:
	mov     rax, 0
	leave
	ret
