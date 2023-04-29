# abs $s2, $s0
.text
	li $s0, -2
	slt $s1, $zero, $s0
	beq $s1, $zero, NEGATIVE
	add $s2, $s0, $zero
	j exit
NEGATIVE:
	sub $s2, $zero, $s0
exit: