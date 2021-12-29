;   nasm -felf64 echo.asm && gcc -no-pie echo.o && ./a.out dog 22 -zzz "hi there"

    global      main
    extern      puts
    section     .text

main:
    push    rdi
    push    rsi
    sub     rsp, 8

    mov     rdi, [rsi]
    call    puts

    add     rsp, 8
    pop     rsi
    pop     rdi

    add     rsi, 8
    dec     rdi
    jnz     main

    ret