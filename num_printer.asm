extern printf
extern scanf
section .data

	out: db "%d",10,0
	greet: db "Hi there, Give me a number: ",0
	out1: db "%s",0
	fm: db "%d",0
	n : dd 0
section .text

	global main

	main:

	push ebp
	mov ebp,esp

	mov eax,0
	mov ebx,0

	push greet
	push out1
	call printf

	push n
	push fm
	call scanf

	mov ebx,n

	l1:

	add eax,[ebx]
	dec word[ebx]
	cmp word[ebx],0
	jne l1
	
	dec eax
	push eax
	push out
	call printf

	leave
	ret
	

	
