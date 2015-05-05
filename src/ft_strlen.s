section .text
global ft_strlen

ft_strlen:
	enter	0, 0
	cmp		rdi, 0
	je end
    mov		al, 0			;al = valeur de retour en 8 bit
    mov		rcx, -1			
    cld						;met l'indicateur d'etat DF a 0 -> incrementation
    repne	scasb			;repne : repete l'operation tant que not equal	scasb:compare al 
	;not		rcx
	;dec		rcx
	;mov		rax, rcx
    mov		rax, -2
   	sub		rax, rcx

	end:
	leave
    ret
