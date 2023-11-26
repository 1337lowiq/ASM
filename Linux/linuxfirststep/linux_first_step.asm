global _start

section .text

_start:
    PUSH    0x42
    PUSH    0x13
    PUSH    0x27

    POP     rax
    POP     rax
    MOV     rax, 60     ; exit() = 60, on place le syscall dans rax
    MOV     rdi, 0      ; on place les arguments dans les registres : rdi, rsi, rdx, rcx, r8, r9
    SYSCALL