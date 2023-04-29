.data
A: .word 	7, -2, 5, 1, 5, 6, 7, 3, 6, 8, 8, 59, 5
Aend: .word

.text
main:
	la $a0, A
	la $a1, Aend
	j sort
after_sort:	li $v0, 10
		syscall
end_main:

sort:	li $t9, 0
	addi $t0, $a0, 0

loop:	addi $t0, $t0, 4
	beq $t0, $a1, done
	lw $v0, 0($t0) #0(t0)
	sub $s1, $t0, 4
	lw $v1, 0($s1) #0(t0-4)
	slt $t1, $v0, $v1
	bne $t1, 1, loop
	sw $v0, 0($s1)
	sw $v1, 0($t0)
	addi $t9, $t9, 1
	j loop
	
done:	beq $t9, 0, after_sort
	j sort	
 