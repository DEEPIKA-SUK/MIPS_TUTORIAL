.data
   prompt: .asciiz "Enter float\n"
   z: .float 0.0
.text
   lwc1 $f4, z
   #prompt the user to enter float
   li $v0, 4
   la $a0, prompt
   syscall
   
   # get the user's num
   li $v0, 6 #6 for floats
   syscall
   
   #store the result
   add.s $f12, $f0,$f4 #dloating point add single precision
   li $v0, 2
   syscall