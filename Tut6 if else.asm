# Implement following if-else condition in MIPS32:

#If (f==g) then

#  {

#      g=f+g;

#      print  g;

#  }

#Else

#     {

#       f=f*g;

#      print  f;

#    }
.data 
mesg1: .asciiz "Enter f"
mesg2: .asciiz "Enter g"
mesg3: .asciiz "val of f:"
mesg4: .asciiz "val of g:"
.text
	main: 
		#taking input 1
	        li $v0,4
	        la $a0,mesg1
	        syscall
		li $v0,5
		syscall
		move $t1,$v0
		
		#taking input 2
	        li $v0,4
	        la $a0,mesg2
	        syscall
		li $v0,5
		syscall
		move $t2,$v0
		
		beq $t1,$t2,equal
		jal not_eq
		li $v0,10
		syscall
	display1:
		li $v0,4
	        la $a0,mesg4
	        syscall
	        move $a0,$t2
	        li $v0,1
	        syscall
	        li $v0,10
		syscall
		
	display2:
		li $v0,4
	        la $a0,mesg3
	        syscall
	        move $a0,$t1
	        li $v0,1
	        syscall
	        li $v0,10
		syscall
	equal:
		add $t2,$t2,$t1
		jal display1
	not_eq:
		mul $t1,$t2,$t1
		jal display2