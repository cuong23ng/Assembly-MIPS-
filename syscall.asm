.data 
x: .space 1000
y: .asciiz "Hello kitty"
.text
	li $v0, 55
strcpy:
	la $a0, x
	la $a1, y
	li $s0, 0
do:
	add $t1, $a1, $s0
	lb $t2, 0($t1)
	add $t3, $a0, $s0
	sb $t2, 0($t3)
	beq $t2, $zero, end
	addi $s0, $s0, 1
	j do
end:	syscall
