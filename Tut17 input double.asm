.data
   prompt: .asciiz "Enter double\n"
.text
   #prompt the user to enter double
   li $v0, 4
   la $a0, prompt
   syscall
   
   # get the user's double
   li $v0, 7 #7 for double
   syscall
   
   #store the result
   add.d $f12,$f0,$f10 #result is stored in f0, f10 is by default 0.0 
   li $v0, 3
   syscall