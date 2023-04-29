.text 
	li $s0, 0x87247154
	andi $s1, $s0, 0xff000000 #Extract MSB
	andi $s0, $s0, 0xffffff00 #Clear LSB
	ori $s0, $s0, 0x11 #bits 7 to 0 are set to 1
	andi $s0, $s0, 0x0 #Clear $s0
