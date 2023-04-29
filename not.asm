# not $s0
.text
	li $s0, 0xf0f0f0f0
	xori $s1, $s0, 0xffffffff	