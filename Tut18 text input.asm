.data
   mesg: .asciiz "Hi, "
   userinp: .space 10
.text
   
   # get the user input
   li $v0, 8 
   la $a0, userinp
   li $a1, 10
   syscall
   
   #display hi
   li $v0, 4
   la $a0,mesg
   syscall
   
   #display name
   li $v0, 4
   la $a0,userinp
   syscall