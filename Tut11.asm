#Multiplication Method2
.data
.text
   addi $t0, $zero, 2 #addi=add immediate
   addi $t1, $zero, 3
   mult $t1,$t0 #result is stored i a special register lo
   mflo $a0 #move from LO register
   li $v0, 1
   syscall 