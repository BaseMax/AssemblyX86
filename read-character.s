; Max Base
; Example program to read console input.
; **********************************************
global _start
section .data
  inChar db 0
section .text
_start:
  mov rax, 0 ; SYS_read
  mov rdi, 0 ; STDIN
  mov rsi, inChar
  mov rdx, 3 ; read count characters
  syscall
done:
  mov rax, 60 ; SYS_exit
  mov rdi, 0 ; success
  syscall
