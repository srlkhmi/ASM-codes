extern  printf

section .data
msg:
        db  "%d", 0xa	
		
section .text

		 global  main
main:

	push ebp
	mov ebp,esp
	
	mov ecx,0x10 ; loop count of 16
	xor ebx,ebx
	xor edx,edx
	inc edx
	
	push ecx
	
fib:
	add ebx,edx
	push edx
	push ebx
	push msg
	call printf
	add esp,4
	
	pop edx
	pop ebx
	pop ecx
	dec ecx
	push ecx
    
    cmp ecx,0
	jnz fib

    leave
	ret
