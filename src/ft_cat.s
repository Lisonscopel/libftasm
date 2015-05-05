%define READ 		0x2000003
%define WRITE		0x2000004
%define BUFF_SIZE 	64

section .text
		global	ft_cat

ft_cat :
		enter	BUFF_SIZE, 0
		cmp		rdi, -1
		je		end
		mov		r8, rdi

	read:
		mov		rdi, r8
		mov		rax, READ
		mov		rsi, rsp
		mov		rdx, BUFF_SIZE
		syscall
		jc		end
		cmp		rax, 0
		je		end

	print :
		mov		rdx, rax
		mov		rax, WRITE
		mov		rdi, 1
		mov		rsi, rsp
		syscall
		jc		end
		jmp		read

	end :
		leave
		ret
