%include 'in_out.asm'
SECTION .data
	s1: DB '(11+x)*2-6',0
	s2: DB 'Введите х: ',0
	rem: DB 'Ответ: ',0
SECTION .bss
	x: RESB 80
SECTION .text
	GLOBAL _start
_start:
	mov eax, s1
	call sprintLF
	
	mov eax, s2
	call sprint
	
	mov ecx,x
	mov edx, 10
	call sread
	
	mov eax,x
	call atoi
	mov [x],eax
	
	mov ebx,2
	add eax,11
	mul ebx
	sub eax,6
	
	mov edi, eax
	
	mov eax,rem
	call sprint
	mov eax,edi
	call iprintLF
	
	call quit
	
