section .text
		global ft_toupper

ft_toupper :
		enter 	0, 0
		mov		rax, rdi
		cmp		rdi, 97
		jl		end
		cmp		rdi, 122
		jg		end
		sub		rax, 32

	end :
		leave
		ret
