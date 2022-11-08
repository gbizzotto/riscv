.global _boot
.text

_boot:                    /* x0  = 0    0x000 */
    /* Test ADDI */
    lui x1, 1      /* x1 = 0x1000 */
    srli x2, x1, 9 /* x2 = 0x0008 */    
    srl x1, x1, x2 /* x1 = 0x10 = 16 */
loop:
    beq x2, x0, end
    add x3, x1, x3
    addi x2, x2, -1
    jal x0, loop    
end:
    auipc x4, 0
    sh x3, 16(x4)
