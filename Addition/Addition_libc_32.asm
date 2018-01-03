
extern printf
extern scanf

section .data
  message: db "The result is = %d", 10, 0
  req: db "Enter the number: %d", 0
  integer2: times 4 db 0 ; 32-bits integer = 4 bytes
  integer1: times 4 db 0 ; 32-bits integer = 4 bytes
  fmt: db "%d", 0

section .text
global main
main:
  ;  Ask for an integer
  push req
  call printf
  add esp, 4    ; remove the parameter

  push integer1 ; address of integer1, where the input is going to be stored (second parameter)
  push fmt ; arguments are right to left (first  parameter)
  call scanf
  add esp, 8    ; remove the parameters

  push req
  call printf
  add esp, 4    ; remove the parameter

  push integer2 ; address of integer1, where the input is going to be stored (second parameter)
  push fmt ; arguments are right to left (first  parameter)
  call scanf
  add esp, 8  

  ; Move the value under the address integer1 to EAX
  mov eax, [integer1]
  mov ebx, [integer2]
  add eax,ebx
  ; Print out the content of eax register
  push eax
  push message
  call printf
  add esp, 8

  ;  Linux terminate the app
  MOV AL, 1
  MOV EBX, 0 
  INT 80h
