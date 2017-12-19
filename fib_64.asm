extern  printf

section .data
msg:
        db  "%d", 10, 0		
		
section .text

		 global  main
main:
        push    rbx                     ; we have to save this since we use it

        mov     ecx, 0x10                ; ecx will countdown to 0 - limit set as 17
        xor     rax, rax                ; current number
        xor     rbx, rbx                ; next number
        inc     rbx                     ; rbx=1
fib:
        push    rax                     
        push    rcx                     

        mov     rdi, msg                ; 1 param
        mov     rsi, rax                ; 2nd param (current number)
        xor     rax, rax                ; because printf is varargs
        call    printf                  ; printf(msg, current number)

        pop     rcx                     
        pop     rax                     

        mov     rdx, rax                ; save the current number
        mov     rax, rbx                ; next number is now current
        add     rbx, rdx                ; get the new next number
        dec     ecx                     ; count down
        jnz     fib                     ; if not done counting, do some more

        leave                           ; restore rbx before returning
        ret

