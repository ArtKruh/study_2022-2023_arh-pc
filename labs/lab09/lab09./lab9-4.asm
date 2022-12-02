%include 'in_out.asm'
SECTION .data
	msg1 db " Функция: f(x)=2х+15 ", 0
	msg2 db "Результат: ", 0 
SECTION .text 
global _start
_start:
	mov eax,msg1
	call sprintLF
	
	pop ecx
	pop edx
	sub ecx,1
	mov esi,0
	mov ebx,2
next:
	cmp ecx,0h
	jz _end
	pop eax
	call atoi
	mul ebx
	add eax,15
	add esi,eax
	loop next
_end: 
	mov eax, msg2
	call sprint
	mov eax, esi 
	call iprintLF
	call quit
	
	
