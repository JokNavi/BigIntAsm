%include "src/hello.asm"

section .text
    global _start

_start:

    times 2 call print_hello 
    ; call print_hello 2 times

    call full_exit           ; exit program
    ret


full_exit:
    mov rax, 60         ; syscall number for sys_exit
    xor rdi, rdi        ; status: 0
    syscall             ; invoke syscall




