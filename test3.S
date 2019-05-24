global _start

section .data
	; LF:		db 10
	string:		times 125 db 0

section .bss
	length		resd 1
	temp		resd 1

section .text

_start:
	mov		eax, 3
	mov		ebx, 0
	mov		ecx, string
	mov		edx, 125
	int		0x80
	mov		[length], eax
	cmp		eax, edx
	jb		.done
	mov		bl, [ecx+eax-1]
	cmp		bl, 10
	je		.done
	inc		DWORD [length]
	.check:
	mov		eax, 3
	mov		ebx, 0
	mov		ecx, temp
	mov		edx, 1
	int		0x80
	test	eax, eax
	jz		.done
	mov		al, [temp]
	cmp		al, 10
	jne		.check
	.done:
	mov		eax, 4
	mov		ebx, 1
	mov		ecx, string
	mov		edx, [length]
	int		0x80
	mov		ebx, 0
	mov		eax, 1
	int		0x80
