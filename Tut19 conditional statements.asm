.data
   m1: .asciiz "Numbers are equal\n"
   m2: .asciiz "Numbers are not equal\n"
   m3: .asciiz "irrespective of the conditions this is called\n"
.text
   main:
      
      addi $a1, $zero, 5
      addi $a2, $zero, 15
      addi $a3, $zero, 5
      beq $a1,$a3,equal #beq=branch if equal, syntax:cond1, cond2, label(function to called if conditions are met)
      beq $a1,$a3,equal
      bne $a1,$a2,notequal #bne=branch if not equal, syntax:cond1, cond2, label(function to called if conditions are met)
      b fun #b=branch
   #Tell the system that prog is done
   li $v0, 10
   syscall
   
   equal:
      li $v0,4
      la $a0, m1
      syscall
   notequal:
      li $v0,4
      la $a0, m2
      syscall
   fun:
      li $v0,4
      la $a0, m3
      syscall
