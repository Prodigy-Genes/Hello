section .data
	; Define a message to be printed on the screen
	msg db "Hello World, This is Prodigygenes! ", 0ah ; 0ah represents a line feed character

section .text
	global _start

_start:
	; Prepare registers for the write system call
	mov  rax, 1   ; System call number 1 (sys_write)
	mov  rdi, 1   ; File descriptor (stdout)
	mov  rsi, msg ; Address of the message to be printed
	mov  rdx, 41  ; Length of the message

	syscall      ; Call the kernel to execute the system call

_exit:
	; Prepare registers for the exit system call
	mov rax,  60 ; System call number 60 (sys_exit)
	mov rdi,  0  ; Exit status 0 (success)

	syscall      ; Call the kernel to execute the system call
