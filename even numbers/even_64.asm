extern printf

section .data

msg db "%d",0xa

section .text
global main

main:

	push rbp
	mov rbp,rsp
	mov rbx,0
	
even:
	
	mov rax,rbx
	add rax,2
	mov rbx,rax
	mov rdi,msg
	mov rsi,rbx
	xor rax,rax	
	call printf
	     
	
    cmp rbx,99
	jle even

    leave
	ret
