#sum of array
.data
input: .word 10,5,7,-3,6
output: .word 0

.text
li $t1, 5 #number of elements = 5 (addiu $t1, $zero, 5)
li $t2, 0 #index counter
li $s1, 0 #sum

la $t3, input
la $t4, output

loop:
slt $t5, $t2, $t1 		 #Check if counter < number of elements
beq $t5, $zero, out	 # if false, then go to end

sll $t5, $t2, 2 		# Calculate byte offset of input[counter]
add $t5, $t5, $t3	 	# Calculate &input[counter]

lw $t6, 0($t5)	 	# Get input[counter]
add $s1, $s1, $t6 		# sum = sum + input[counter]


addi $t2, $t2, 1 		# increment counter by 1
j loop 			# go to beginning of loop

out:
sw $s1,0($t4) 	       	# output = sum





