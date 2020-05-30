; Max Base
; Example program to display hello world in console
; **********************************************
global  _start
section .data
section  .text
	msg  db  'Hello, world!',0xa
	len  equ $ - msg
_start:
	; write()
	mov  edx, len
	mov  ecx, msg
	mov  ebx, 1
	mov  eax, 4
	int  0x80
	; exit()
	mov  eax, 1
	int  0x80
