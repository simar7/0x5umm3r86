ENTRY(loader)
                                /* 0x00100000 = 1 MB = 1*10^6*1024
                                 * 0x00001000 = 4 KB = 4*1024  <-- Alignment */
SECTIONS {
    . = 0x00100000;             /* load at 1 MB, GRUB takes < 1 MB addresses */

    .text ALIGN (0x1000) :      /* 4 KB align */
    {
        *(.text)
    }

    .rodata ALIGN (0x1000) :
    {
        *(.rodata*)
    }

    .data ALIGN (0x1000) :
    {
        *(.data)
    }

    .bss ALIGN (0x1000) :
    {
        *(COMMON)
        *(.bss)
    }
}
