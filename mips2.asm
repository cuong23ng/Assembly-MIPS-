.data
I : .word 5
J : .word -6
m : .word 2
n : .word 3
.text
	li $t1, 2
	li $t2, 2
	li $t3, 3
	la $t8, I
	la $t9, J
	lw $s1, 0($t8)
	lw $s2, 0($t9)
	add $s3, $s1, $s2 # $s3 = i + j
	la $t6, m
	la $t7, n
	lw $s6, 0($t6)
	lw $s7, 0($t7)
	add $s5, $s6, $s7 #$s5 = m + n
start:
	slt $t0, $s3, $s5 #i + j> m + n
	beq $t0, 0, else
	addi $t1, $t1, 1
	addi $t3, $zero, 1
	j endif
else:
	addi $t1, $t1, 1
	addi $t3, $zero, 1
endif:
