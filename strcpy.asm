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
	add $t1, $a1, $s0 #t1 is address of each character of Y
	lb $t2, 0($t1) #Take data from the address pointed by t1 and load to t2
	add $t3, $a0, $s0 #t1 is address of each character of X
	sb $t2, 0($t3) #Save data of t2 to the address pointed by t3 
	beq $t2, $zero, end #t2 = 0 means strings been all read  
	nop #i don't know
	addi $s0, $s0, 1 #add s0=i by 1
	j do
	nop
end:	syscall
