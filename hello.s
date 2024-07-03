; hello.s
global _start

section .data
	msg:    db “Hello World”
	msglen: equ $ - msg
	exclam: db “!”
	n:      db 3

section .text

_start:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, msg
	mov	rdx, msglen
	syscall

 	mov	rcx, [n]
l1:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, exclam
	mov	rdx, 1
	push	rcx
	syscall
	pop	rcx
	loop	l1

	mov	rax, 1
 	mov	rdi, 1
  	mov	rsi, 10
   	mov	rdx, 1
    	syscall

	mov	rax, 60
	mov	rdi, 0
	syscall
