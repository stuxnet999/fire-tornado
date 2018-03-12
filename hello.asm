extern printf
extern scanf

section .data
	
	greet: db "Hi there! What's your name: ",0
	out: db "%s",0
	out1: db "%s",10,0
	hello: db "Hello, ",0
	input: db "",10,0
	format: db "%s",0

section .text

	global main

	main:

	push ebp
	mov ebp,esp

	push greet
	push out
	call printf

	push input
	push format
	call scanf

	push hello
	push out
	call printf

	push input
	push out1
	call printf

	leave
	ret
