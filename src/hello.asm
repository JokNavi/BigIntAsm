section .data
    hello db `Hello, World!\n`,0
    helloLen equ $-hello

section .text
    global print_hello  ; make print_hello accessible

print_hello:
    mov rax, 1          ; syscall number for write
    mov rdi, 1          ; file descriptor 1 (stdout)
    mov rsi, hello      ; pointer to the string
    mov rdx, helloLen   ; string length
    syscall             ; invoke syscall
    ret
