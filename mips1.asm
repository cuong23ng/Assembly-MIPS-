#Labaratory Exercise 2, Assignment 1
.data
	X: .word 42949672
	Y: .word -1
	Z: .word 
.text 
	la $t8, X #load address of x
	la $t9, Y
	lw $t1, 0($t8) #load value of x
	lw $t2, 0($t9)
	
	add $s0, $s1, $s1
	add $s0, $s0, $t2
	
	la $t7, Z
	sw $s0, 0($t7)
	