# Printing character
.data
   char: .byte 'm'
.text
   li  $v0, 4 
   la $a0, char
   syscall  