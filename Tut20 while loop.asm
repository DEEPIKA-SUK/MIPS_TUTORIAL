.data
     mesg: .asciiz "After while loop is done\n"
     space: .asciiz ", "
.text
	main:
		addi $t0,$zero,0 #i=0
		while:
		     bgt $t0,10,exit
		     jal print #jal=jump and link
		     addi $t0,$t0,1 #i=i+1
		     j while #j=jump unconditionally
		exit:
		     li $v0, 4
		     la $a0,mesg
		     syscall
		li $v0,10
		syscall
		print:
		     li $v0, 1
		     addi $a0,$t0,0
		     syscall
		     li $v0, 4
		     la $a0,space
		     syscall
		     jr $ra
		     