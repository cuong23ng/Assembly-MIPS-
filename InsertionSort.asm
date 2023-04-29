.data
A: .word 	7, -2, 5, 1, 5, 6, 7, 3, 6, 8, 8, 59, 5
Aend: .word

.text
main:
	la $a0, A
	la $a1, Aend
	sub $t5, $a0, 4
	li $s5, -999999999
	sw $s5, 0($t5)
	addi $t0, $a0, 0
	j sort
after_sort:	li $v0, 10
		syscall
end_main:

sort:	addi $t0, $t0, 4
	beq $t0, $a1, after_sort
	sub $s0, $t0, 4

loop:	lw $v0, 0($s0)
	lw $a2, 0($t0)
	slt $t1, $v0, $a2
	beq $t1, 1, swap
	sub $s0, $s0, 4
	j loop 
	
swap:	addi $s0, $s0, 4
	beq $s0, $t0, sort
	lw $v1, 0($t0)
	addi $t6, $t0, 0
	
loop_1:	slt $t1, $t6, $s0
	beq $t1, 1, set
	sub $s4, $t6, 4
	lw $s7, 0($s4)
	sw $s7, 0($t6)
	sub $t6, $t6, 4
	j loop_1
	
set:	sw $v1, 0($s0)	
	j sort