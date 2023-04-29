# ble $s1, $s2, L
.text
	li $s1, 1
	li $s2, 2
	slt $s0, $s2, $s1
	beq $s0, $zero, L
	j exit
L: 	li $s3, 0xffff
exit:	