section .text
		global ft_tolower

ft_tolower :
		enter 	0, 0
		mov		rax, rdi
		cmp		rdi, 65
		jl		end
		cmp		rdi, 90
		jg		end
		add		rax, 32

		end :
		leave
		ret
