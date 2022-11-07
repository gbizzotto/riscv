.global _boot
.text

_boot:                    /* x0  = 0    0x000 */
    /* Test ADDI */
    addi x1 , x0,   1000  /* x1  = 1000 0x3E8 */
    sw x1,0(x0)
    addi x2, x1, 1
    addi x3, x0, 2
    addi x4, x0, 997
loop:
    sub x2, x2, x3
    bne x2, x4, loop
end:
    sw x2, 4(x0)
