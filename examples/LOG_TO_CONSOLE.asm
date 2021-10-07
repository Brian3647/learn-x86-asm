global _start ; entry point _stat

section .data ; data
	msg db "Hello", 0x0a ; asign msg var "Hello" + 0x0a (newline)
	len equ $ - msg ; asign len var msg length
section .text ; code
_start: ; entry point (main function)
	mov eax, 4 ; sys_write system call
	mov ebx, 1 ; stdout descriptor
	mov ecx, msg ; asign msg to ecx
	mov edx, len ; number of bytes to write, using var len
	int 0x80 ; execute system call
	mov eax, 1 ; sys_exit call
	mov ebx, 0 ; 0 code status
	int 0x80 ; execute exit system call
