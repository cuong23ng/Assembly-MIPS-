.text
start:
	li $s1, 0x80000000
	li $s2, 0xf0000000
	li $t0, 0
	addu $s3, $s1, $s2 #s3 = s1 + s2
	xor $t1, $s1, $s2 #t1 = s1 xor s2

	bltz $t1, exit  #if t1 < 0 ->exit
	xor $t2, $s3, $s1  
	#if t2(=s1 xor s3) < 0 ->overflow
	bltz $t2, overflow
	j exit 
overflow:
	li $t0, 1
exit:
