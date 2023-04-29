.data
message: .asciiz "Nhap xau "
string: .space 1000
result: .asciiz "Do dai la: "
.text
	li $v0, 54
	la $a0, message
	la $a1, string 
	la $a2, 1000
	syscall
	la $t1, string #Load address of message to t1
	li $a1, 0 #set s1 = 0 (length of string)
	li $s0, 0 #set s0 = 0 (index i)

do:	add $s1, $t1, $s0 #Read each character of string
	lb $s2, 0($s1) #Load data to s2 at the address pointed by s1
	beq $s2, 10, end #s2 = 10 means the string been all read (the last address contains '\n')
	
	addi $a1, $a1, 1 #length
	addi $s0, $s0, 1 #Add s0 by 1
	j do

end:    li $v0, 56
	la $a0, result
	syscall	
	
	
