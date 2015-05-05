section .text
		global ft_isprint

ft_isprint :
		enter 	0, 0
		mov		rax, 0
		cmp		rdi, 32
		jl		end
		cmp		rdi, 126
		jg		end
		mov		rax, 1

		end :
		leave
		ret
