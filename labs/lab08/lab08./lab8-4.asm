%include 'in_out.asm'
SECTION .data
	m1 db 'Введите X: ',0h
	m2 db 'Введите а: ',0h
	m3 db 'Ответ: ',0h
SECTION .bss
	x resb 10
	a resb 10
	o resb 10
SECTION .text
	global _start
_start:
	mov eax,m1
	call sprint
	
	mov ecx,x
	mov edx,10
	call sread
	
	mov eax,x
	call atoi
	mov [x],eax
	
	mov eax,m2
	call sprint
	
	mov ecx,a
	mov edx,10
	call sread
	
	mov eax,a 
	call atoi
	mov [a],eax
	
	mov ecx, [x]
	mov [o],ecx
	
	cmp ecx,[a]
	jl var
	mov ecx,8
	mov [o], ecx
	jmp ans
	
var:
	mov eax,[a]
	mov ebx,2
	mul ebx
	mov ecx,[x]
	sub eax,ecx
	mov [o],eax
ans:
	mov eax,m3
	call sprint
	mov eax,[o]
	call iprintLF
	call quit
	
	
	
	
	
	
	
