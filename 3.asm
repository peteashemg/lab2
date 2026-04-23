extern printf, scanf
section .data
    fmt_d db "%d", 0
    fmt_s db "%d ", 0
    fmt_dash db "- ", 0
    fmt_nl db 10, 0
section .bss
    n resd 1
    num resd 1
section .text
    global main
main:
    push rbp
    mov rdi, fmt_d
    mov rsi, n
    call scanf

.loop:
    mov eax, [n]
    test eax, eax
    jz .exit
    
    mov rdi, fmt_d
    mov rsi, num
    call scanf

    mov eax, [num]
    cmp eax, 10
    jl .print_dash

    xor ecx, ecx ; счетчик четных
.calc:
    test eax, eax
    jz .print_num
    xor edx, edx
    mov ebx, 10
    div ebx      ; остаток в edx
    test edx, 1
    jnz .calc_next
    inc ecx
.calc_next:
    jmp .calc

.print_num:
    mov rdi, fmt_s
    mov rsi, rcx
    call printf
    jmp .next_step

.print_dash:
    mov rdi, fmt_dash
    call printf

.next_step:
    dec dword [n]
    jmp .loop

.exit:
    mov rdi, fmt_nl
    call printf
    pop rbp
    ret

