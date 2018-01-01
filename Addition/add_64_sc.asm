extern printf

section .data		

	msg db "Enter the number", 0	

section .text           
        global main		
main:				
        		
	
	mov	rdi,msg
	mov	rax,0		
    call printf		

		

	mov	rax,0		
	ret			
