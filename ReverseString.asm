.data
message: .asciiz "Nhap chuoi: "
string: .space 20
result: .space 20
message_1: .asciiz "Chuoi dao nguoc la: "
.text
	li $v0, 54
	la $a0, message
	la $a1, string
	addi $t0, $a1, 0 #t0 is the address of the first character of each 4-box-memory
	la $a2, 20
	syscall
	la $s1, result #address of result
	
#Move to the last character of string
do:
	lb $t1, 0($t0)
	beq $t1, 10, end
	addi $t0, $t0, 1
	j do
end:	subi $t0, $t0, 1 #the address of the last character is saved in t0
	addi $a1, $s1, 0

#Read backward the string
reverse:
do_1:	lb $t2, 0($t0) #t2 is data at the address pointed by t0
	beq $t2, 0, end_1 
	sb $t2, 0($s1)
	sub $t0, $t0, 1
	addi $s1, $s1, 1
	j do_1
end_1:	li $v0, 59
	la $a0, message_1
	syscall
	
	
	
	
