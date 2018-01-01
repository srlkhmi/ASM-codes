extern printf
 
section .data
    format db '%d',0xa
	msg db 'Sum is %d',0xa

section .text
global main

	main:
		push ebp
		mov ebp,esp 
		
		mov eax,30
		mov ebx,20
		add eax,ebx
		push eax		
       	push msg
       	call printf
       	add esp,4
            
    	leave 
    	ret
  

