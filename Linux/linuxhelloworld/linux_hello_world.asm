global _start

section .text

_start:
    ; write(1, string, len)
    MOV     rax, 1
    MOV     rdi, 1
    MOV     rsi, my_string
    MOV     rdx, my_string_length
    SYSCALL

    ; exit(0)
    MOV     rax, 60
    MOV     rdi, 0
    SYSCALL

section .data
    my_string:          DB "Hello World", 0x00, 0x0A
    my_string_length:   EQU $ - my_string ; calcul diff entre adresse courante ($) et le début de notre str