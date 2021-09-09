# Printing integer
.data
   int: .word 2
.text
   li  $v0, 1 # 1 for printing an integer
   lw $a0, int #lw=load word
   syscall  