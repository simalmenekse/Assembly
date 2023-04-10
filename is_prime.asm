main:
li $a0,23
jal isprime	# isprime(23)
break		# terminate (result is in $v0)

# ----- procedure isprime -----
isprime:
slti $t0,$a0,2
beq $t0,$zero,endif	# if(n < 2)
li $v0,0		# return 0
jr $ra
endif:

li $t1,2		# for(int i = 2; ...
beginfor:
slt $t0,$t1,$a0		# ... i < n; ...
beq $t0,$zero,endfor
divu $a0,$t1		# n / i, n % i
mfhi $t2		# remainder (n % i)
bne $t2,$zero,endif2	# if(n % i == 0)
li $v0,0		# return 0
jr $ra
endif2:
addi $t1,$t1,1		# ... i++)
j beginfor
endfor:

li $v0,1		# return 1
jr $ra
# ---------------------------