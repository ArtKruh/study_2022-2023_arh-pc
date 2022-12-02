%include 'in_out.asm'
SECTION .data
	msg1 db 'Введите С: ',0h
	msg2 db "Наименьшее число: ",0h
	A dd '17'
	B dd '23'
SECTION .bss
	min resb 10
	C resb 10
SECTION .text
	global _start
_start:
	mov eax,msg1
	call sprint
	
	mov ecx,C
	mov edx,10
	call sread
	
	mov eax,C
	call atoi
	mov [C],eax
	
	mov ecx,[A]
	mov [min],ecx
	
	cmp ecx,[B]
	jl check_C
	mov ecx,[B]
	mov [min],ecx
	
check_C:
	
	mov eax,min
	call atoi
	mov [min],eax
	
	mov ecx,[min]
	cmp ecx,[C]
	jl fin
	mov ecx,[C]
	mov [min],ecx

fin:
	mov eax, msg2
	call sprint
	mov eax,[min]
	call iprintLF
	call quit
