.data
var:
.word 100
.word 200

.text
la $t0,var
lw $t1,0($t0)
lw $t2,4($t0)
add $t3,$t1,$t2

li      $v0, 1                  
move    $a0, $t3        
syscall  
