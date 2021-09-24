#Division Method1
.data
.text
   addi $t0, $zero, 30 #addi=add immediate
   addi $t1, $zero, 3
   div $a0,$t1,$t0 
  
   li $v0, 1
   syscall 
