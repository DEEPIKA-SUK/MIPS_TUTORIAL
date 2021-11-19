#clear bits
.data
newline: .asciiz "\n"
.text
	main:
		li $a1,11
		jal display

		li $a1,11
		jal func

		move $a1,$v0
		jal display

		li $v0,10
		syscall

	display:
		li $v0,4
		la $a0,newline
		syscall

		li $v0,1
		move $a0,$a1
		syscall

		jr $ra

	func:
		addi $sp,$sp,-4
		sw $s0,0($sp)

		li $s0,-1
		sll $s0,$s0,1
		add $v0,$a1,$s0

		lw $s0,0($sp)
		addi $sp,$sp,4

		jr $ra
