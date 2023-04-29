.data
A: .word 7, -2, 5, 1, 5, 6, 7, 3, 6, 8, 8, 59, 5
Aend: .word

.text
main:	la $a0, A #$a0 = Address(A[0])
	la $a1, Aend
	j sort
after_sort: 	li $v0, 10
		syscall
end_main:

change: 	lw $t9, 0($a1)
		sw $t9, 0($v0)
		sw $v1, 0($a1)
sort:		sub $a1, $a1, 4
		beq $a0, $a1, after_sort
		addi $t0, $a0, 0
		lw $v1, 0($a1)  #max tam thoi
		addi $v0, $a1, 0 
		j find_max
loop:		addi $t0, $t0, 4
find_max:	beq $t0, $a1, change
		lw $s0, 0($t0)
		slt $t1, $v1, $s0
		bne $t1, 1, loop
		addi $v1, $s0, 0
		addi $v0, $t0, 0
		j loop		  
    	
