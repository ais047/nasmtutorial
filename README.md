# nasmtutorial

$ nasm -felf64 hello.asm && ld hello.o && ./a.out

$ nasm -f elf64 hello.asm && gcc -no-pie hello.o && ./a.out

### Registers

16 Integer Registers: (64 bits wide):

R0  R1  R2  R3  R4  R5  R6  R7  R8  R9  R10  R11  R12  R13  R14  R15
RAX RCX RDX RBX RSP RBP RSI RDI

Lowest 32-bits of each registers can be used as a register itself using:
R0D  R1D  R2D  R3D  R4D  R5D  R6D  R7D  R8D  R9D  R10D  R11D  R12D  R13D  R14D  R15D
EAX  ECX  EDX  EBX  ESP  EBP  ESI  EDI

Lowest 16-bits of each register can be used as a register itself using:
R0W  R1W  R2W  R3W  R4W  R5W  R6W  R7W  R8W  R9W  R10W  R11W  R12W  R13W  R14W  R15W
AX   CX   DX   BX   SP   BP   SI   DI

Lowest 8-bits of each register can be used as a register itself using:
R0B  R1B  R2B  R3B  R4B  R5B  R6B  R7B  R8B  R9B  R10B  R11B  R12B  R13B  R14B  R15B
AL   CL   DL   BL   SPL  BPL  SIL  DIL

A, C, D, B, SP, BP, SI, DI

### Instructions
mov         x,y     x <- y
and         x,y     x <- x and y
or          x,y     x <- x or y
xor         x,y     x <- x xor y
add         x,y     x <- x + y
sub         x,y     x <- x - y
inc         x       x <- x + 1
dec         x       x <- x - 1
syscall     Invoke operating system routine
db          Pseudo-instruction that declares bytes that will be in memory when program runs
