#Division Method2
.data
.text
   addi $t0, $zero, 30 #addi=add immediate
   addi $t1, $zero, 3
   div $t1,$t0 
   mflo $s0#quotient
   mflo $s1#remainder
   add $a0, $zero, $s1
   li $v0, 1
   syscall 
