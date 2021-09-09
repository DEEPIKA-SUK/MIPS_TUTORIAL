#Multiplication Method1
.data
.text
   addi $t0, $zero, 2 #addi=add immediate
   addi $t1, $zero, 3
   mul $a0, $t1,$t0 #drawback-> max range: can multiply max 2 num of 16 bit each
   li $v0, 1
   syscall 