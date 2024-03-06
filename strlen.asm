strlen:
	xor eax, eax

next_char:
	cmp BYTE [rdi+rax], 0
	je	finished
	add	rax, 1
	jmp	next_char
finished:
	ret
