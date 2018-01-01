segment .data 

   msg1 db "Enter the first digit ", 0xA,0xD 
   len1 equ $- msg1 

   msg2 db "Enter the second digit", 0xA,0xD 
   len2 equ $- msg2 

   msg3 db "The sum is: "
   len3 equ $- msg3

segment .bss

   num1 resb 2 
   num2 resb 2 
   result resb 1    

section	.text
   global main    
	
main:   

    mov rax,1			
	mov rdi,1			
	mov rsi,msg1		
	mov rdx,len1		
	syscall		

	mov rax,0			
	mov rdi,0			
	mov rsi,num1		
	mov rdx,2			
	syscall	
		
    mov rax,1			
	mov rdi,1			
	mov rsi,msg2		
	mov rdx,len2		
	syscall		

	mov rax,0			
	mov rdi,0			
	mov rsi,num2		
	mov rdx,2			
	syscall	

	mov rax,1			
	mov rdi,1			
	mov rsi,msg3
	mov rdx,len3		
	syscall


    mov rax,[num1]
	sub rax,'0'

	mov rbx,[num2]
	sub rbx,'0'

	add rax,rbx
	add rax,'0'

	mov [result],rax
	


	mov rax,1			
	mov rdi,1			
	mov rsi,result
	mov rdx,1		
	syscall

	mov rax,60			;Sys_Exit Function
	xor rdi,rdi			;Sucessful Termination
	syscall	 		        ;Call The Kernel
