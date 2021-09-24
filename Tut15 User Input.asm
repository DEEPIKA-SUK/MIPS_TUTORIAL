.data
   prompt: .asciiz "Enter num\n"
.text
   #prompt the user to enter num
   li $v0, 4
   la $a0, prompt
   syscall
   
   # get the user's num
   li $v0, 5
   syscall
   
   #store the result
   move $a0, $v0
   li $v0, 1
   syscall