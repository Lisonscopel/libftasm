section .text
		global ft_isdigit

ft_isdigit :
		enter 	0, 0
		mov		rax, 0
		cmp		rdi, 48
		jl		end
		cmp		rdi, 57
		jg		end
		mov		rax, 1
	end :
		leave
		ret
