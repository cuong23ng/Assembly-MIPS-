.data
	test: .word 2
.text
	la $s0,test #load the address of test variable
	lw $s1, 0($s0) #load the value of test to register $t1
	li $s2, 5 #a
	beq $s1, 0, case_0
	beq $s1, 1, case_1
	beq $s1, 2, case_2
	j default 
	case_0:
		addi $s2, $s2, 1 #a=a+1
		j continue
	case_1:
		sub $s2, $s2, $t1 #a=a-1 
		j continue
	case_2:
		add $s2, $s2, $s2 #a=a*2
		j continue
	default:
	continue: