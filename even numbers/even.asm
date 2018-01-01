 extern printf
 
 section .data
   i : dd 2
   msg db "%d", 0xA
 
 section .text
 
 global main
  main:
       push ebp
       mov ebp,esp
       
   loop:
       push DWORD[i]
       push msg
       call printf
       add esp, 8
       add DWORD[i],2
       cmp DWORD[i],101
       jle loop
   
        
    leave 
    ret
  
 
