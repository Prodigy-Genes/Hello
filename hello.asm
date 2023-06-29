section .data
	; this is a simple code to print out hello world in assembly language
	msg db "Hello World, This is Prodigygenes! ", 0ah
	
section .text
	global _start
	
_start:
	mov  rax, 1
	mov  rdi, 1
	mov  rsi, msg
	mov  rdx, 41
	syscall
	
_exit:
	mov rax,  60
	mov rdi,  0
	syscall
