section .data
number1:		equ 8
number2:		equ 12
message:		db 0x53, 0x75, 0x6d, 0x20, 0x6f, 0x66, 0x20, 0x74, 0x68, 0x65, 0x20, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x73, 0x20, 0x69, 0x73, 0x20, 0x63, 0x6f, 0x72, 0x72, 0x65, 0x63, 0x74, 0x2e, 0xa
section .text
global _start
_start:
mov		rax, number1
mov		rbx, number2
add		rax, rbx
cmp		rax, 20
jne		.exit
jmp		.sum
.sum:
mov		rax, 1
mov		rdi, 1
mov		rsi, message
mov		rdx, 31
syscall
jmp .exit
.exit:
mov		rax, 60
mov		rdi, 0
syscall
