.data
   mesg: .asciiz "hi\n"
.text
   main:
      jal display #calling target
      addi $a0, $zero, 5
      #Print number 5 to screen
      li $v0, 1
      syscall
   #Tell the system that prog is done
   li $v0, 10
   syscall
   
   display:
      li $v0, 4
      la $a0, mesg
      syscall
      
      jr $ra #return