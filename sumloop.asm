#a sum of numbers from 1 to 10
addi $t1, $zero, 10 #upper bound
addi $t2, $zero, 1  #counter
addi $t3, $zero, 0  #sum

loop:
add $t3, $t3, $t2
beq $t2, $t1, exit
addi $t2, $t2, 1
j loop

exit:
