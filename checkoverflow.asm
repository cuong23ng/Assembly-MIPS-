.text
start:
	li $s1, 0x7fffffff #set s1
	li $s2, 0x00000002 #set s2
	li $t0, 0 #t0 = {0, 1}
	addu $s3, $s1, $s2 #s3 = s1 + s2
	xor $t1, $s1, $s2 #t1 = s1 xor s2
	# if t1 = 1 -> cung dau; else -> nguoc dau 
	bltz $t1, exit 
	bltz $s1, negative #if s1 < 0 -> negative
	slt $t3, $s1, $s3 #so sanh s1 va s3; t3 = 1 if s1 < s3
	beq $t3, $zero, overflow #if s1 > s3 ->overflow
	j exit 
negative: 
	slt $t2, $s3, $s1 #so sanh s1 va s3; t3 = 1 if s3 < s1
	beq $t2, $zero, overflow #if s1 < s3 ->overflow
	j exit
overflow:
	li $t0, 1 #if overflow -> t0 = 1
exit:
