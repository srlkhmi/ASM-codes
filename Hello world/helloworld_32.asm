extern printf
 
section .data
  msg db 'Hello World!',0xb  ;0xb is \n

section .text
global main
  main:
       push ebp
       mov ebp,esp  
       push msg
       call printf
       add esp,4
            
    leave 
    ret
  

