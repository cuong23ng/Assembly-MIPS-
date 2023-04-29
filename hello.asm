.data
test: .asciiz "Hello World"
.text
	li $v0, 4 
	la $a0, test #Load address of test to a0
	syscall 
