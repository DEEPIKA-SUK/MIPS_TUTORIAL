# Print Hello
.data #For all the variables
     message: .asciiz "Hello"  #asciiz is a datatype
     
.text #All the instructions are written here
     li  $v0, 4 #li=load immediate, v0 is a register , 4=system call for printing string
     la $a0, message #la=load address, we r storing address of message from RAM to register
     syscall #calling system call 
     
     
     