.data
array:  .word   10, 20, 30, 40, 50, 60, 70, 80, 90, 100      # array of 10 integers
array_size: .word 10

    .text
    .globl  main

main:
    li      $t0, 0              
    la      $t1, array              
    lw      $t2, array_size                

loop:
    lw      $t3, 0($t1)            
    bge     $t3, $t0, set_max       
    addi    $t2, $t2, -1            
    addi    $t1, $t1, 4             
    bnez    $t2, loop             
    j       done

set_max:
    move    $t0, $t3                
    addi    $t2, $t2, -1            
    addi    $t1, $t1, 4             
    bnez    $t2, loop              

done:
    li      $v0, 1                  
    move    $a0, $t0        
    syscall  

   
 