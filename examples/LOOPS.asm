global _start

section .text
_start:
	mov ebx, 1 ; ebx = 1
	mov ecx, 4 ; ecx = 4
label:
	add ebx, ebx 	; ebx += ebx
	dec ecx 		 	; ecx -= ecx
	cmp ecx, 0 		; compare ecx, 0
	jg label 			; Execute again while ecx is greater than 0
	mov eax, 0 		; sys_exit call
	int 0x80			; Exec sys_exit
