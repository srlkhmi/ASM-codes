section .data                           
	msg db "Hello World"		;String gets initialized
	len equ $-msg			;Length Of String -- $ points to the byte after the last character of the string variable msg. Therefore, $-msg gives the length of the string.
section .text				
	global _start			
_start:					
	mov rax,1			;Sys_Write Function
	mov rdi,1			;Std_Out File Descriptor
	mov rsi,msg			;Offset of msg
	mov rdx,len			;Length Of msg
	syscall				;Call the Kernel

	mov rax,60			;Sys_Exit Function
	xor rdi,rdi			;Sucessful Termination
	syscall	 		        ;Call The Kernel
end:					;end Label
