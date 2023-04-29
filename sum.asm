.data
	Message_1: .asciiz "Nhap so nguyen s1: ”
	Message_2: .asciiz "Nhap so nguyen s2: ”
	Message_3: .asciiz "The sum of s0 and s1 is: "
.text
	#Nhap so nguyen s1
 	li $v0, 51
 	la $a0, Message_1
 	syscall 
 	add $s1, $a0, $zero #Chuyen gia tri cua a0 sang s1
 	
 	#Nhap so nguyen s2
 	la $a0, Message_2
 	syscall 
 	add $s2, $a0, $zero #Chuyen gia tri cua a0 sang s2
 	
 	add $s0, $s1, $s2 #s0 = s1 + s2
 	
 	#In ra man hinh sum 
 	li $v0, 56
 	la $a0, Message_3
 	add $a1, $s0, $zero
 	syscall
 	
 	
