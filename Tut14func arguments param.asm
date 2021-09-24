.data
   
.text
   main:
      
      addi $a1, $zero, 5
      addi $a2, $zero, 5
      jal addnum #calling target
      li $v0, 1
      addi $a0,$v1,0
      syscall
   #Tell the system that prog is done
   li $v0, 10
   syscall
   
   addnum:
      
      add $v1, $a1, $a2 # v1 is used for returning
      jr $ra #return
