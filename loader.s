global loader

MAGIC_NUMBER    equ 0x1BADB002
FLAGS           equ 0x0
CHECKSUM        equ -MAGIC_NUMBER

section .text:                      ; start of the code section
align 4                             ; 4 byte aligned, 4x16=64 word length
    dd MAGIC_NUMBER                 ; old ye dd util, not the one you think.
    dd FLAGS
    dd CHECKSUM

loader:
    mov eax, 0xCAFEBABE             ; write the actual value into the eax reg
.loop:
    jmp .loop
