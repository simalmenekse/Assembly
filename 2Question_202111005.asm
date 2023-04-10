.data
num1:   .word   500
num2:   .word   100
num3:   .word   250
num4:   .word   75
num5:   .word   30
num6:   .word   15
result: .word   0

.text
.globl main
main:
    lw $s0, num1 
    lw $s1, num2 
    lw $s2, num3 
    lw $s3, num4
    lw $s4, num5
    lw $s5, num6

    add $t0, $s0, $zero    # $t0 = num1
    sub $t0, $t0, $s1      # $t0 = num1 - num2
    add $t1, $s2, $zero    # $t1 = num3
    sub $t1, $t1, $s3      # $t1 = num3 - num4
    add $t2, $t0, $t1      # $t2 = (num1 - num2) + (num3 - num4)
    add $t2, $t2, $s4      # $t2 = (num1 - num2) + (num3 - num4) + num5
    sub $t2, $t2, $s5      # $t2 = (num1 - num2) + (num3 - num4) + num5 - num6
    
    sw $t2, result
    
    li $v0, 10
    syscall