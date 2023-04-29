.data
	pow : .word 1, -2, -9, 7, 23, 1, 3, -25
	n : .word 9
.text
	la $s2, pow #address of pow
	la $t8, n #address of n
	lw $s3, 0($t8) #value of n
	li $s1, 0 #index
	li $s6, 0 #max(abs)
loop: 	add $t1,$s1,$s1 #t1=2*s1
	add $t1,$t1,$t1 #t1=4*s1
	add $t1,$t1,$s2 #t1 store the address of A[i]
	lw $t0,0($t1) #load value of A[i] in$t0
	slt $s5, $t0, $zero #s5 = 0 if (t0 >0)
	
	beq $s5, $zero, case_0
	beq $s5, 1, case_1
	j default
	case_0:
		slt $s7, $s6, $t0
		beq $s7, 0, continue
		addi $s6, $t0, 0
		j continue
	case_1:
		sub $t0, $zero, $t0
		slt $s7, $s6, $t0
		beq $s7, 0, continue
		addi $s6, $t0, 0
		j continue
	default:
	continue:
	addi $s1,$s1,1 #i=i+step
	bne $s1, $s3,loop #if $s1 < n, goto loop
