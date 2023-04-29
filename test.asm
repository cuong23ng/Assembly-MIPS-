.data
a: .asciiz "Nguyen"
b: .asciiz ""
.text
	la $s4, b
	la $s0, a
	lb $s1, 0($s0)
	andi $s3, $s1, 0xffffffff
	sb $s3, 0($s4)