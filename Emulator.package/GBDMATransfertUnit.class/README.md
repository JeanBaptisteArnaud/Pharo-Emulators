FF46 - DMA - DMA Transfer and Start Address (R/W)

Writing to this register launches a DMA transfer from ROM or RAM to OAM memory (sprite attribute table). The written value specifies the transfer source address divided by 100h, ie. source & destination are:
 Source:      XX00-XX9F   ;XX in range from 00-F1h

 Destination: FE00-FE9F
It takes 160 microseconds until the transfer has completed (80 microseconds in CGB Double Speed Mode), during this time the CPU can access only HRAM (memory at FF80-FFFE). For this reason, the programmer must copy a short procedure into HRAM, and use this procedure to start the transfer from inside HRAM, and wait until the transfer has finished:
  ld  (0FF46h),a ;start DMA transfer, a=start address/100h
  ld  a,28h      ;delay...
 wait:           ;total 5x40 cycles, approx 200ms
  dec a          ;1 cycle
  jr  nz,wait    ;4 cycles

Most programs are executing this procedure from inside of their VBlank procedure, but it is possible to execute it during display redraw also, allowing to display more than 40 sprites on the screen (ie. for example 40 sprites in upper half, and other 40 sprites in lower half of the screen).
