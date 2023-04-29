.data
pow : .word 0, 0, 0, 0, 0, 3, 1, 3, 5
n : .word 9
.text
	la $s2, pow #address of pow
	la $t8, n #address of n
	lw $s3, 0($t8) #value of n
	li $s1, 0 #index
	li $s5, 0 #sum[i]
loop: 	add $t1,$s1,$s1 #t1=2*s1
	add $t1,$t1,$t1 #t1=4*s1
	add $t1,$t1,$s2 #t1 store the address of A[i]
	lw $t0,0($t1) #load value of A[i] in$t0
	add $s5,$s5,$t0 #sum=sum+A[i]
	addi $s1,$s1,1 #i=i+step
	beq $t0, 0,loop #if A[i] == 0, goto loop
