extern printf
extern scanf

section .data		

	msg db "Enter the number ", 0
	msg1 db "The sum is %d ", 0
	integer2: times 8 db 0 ; 64-bits integer = 8 bytes
    integer1: times 8 db 0 ; 64-bits integer = 8 bytes
    fmt: db "%d", 0

section .text           
        global main		
main:				
        		
	
	mov	rdi,msg
	xor rax,rax		
    call printf		

	mov rdi,fmt
    mov rsi,integer1 
    xor rax,rax
    call scanf
    
    mov	rdi,msg
	xor rax,rax		
    call printf		

	mov rdi,fmt
    mov rsi,integer2 
    xor rax,rax
    call scanf
		
	mov rax, [integer1]
    mov rbx, [integer2]
    add rax,rbx	
    
    mov	rdi,msg1
    mov rsi,rax
    xor rax,rax
	call printf
    
    
    
    
    

	mov	rax,0		
	ret			
