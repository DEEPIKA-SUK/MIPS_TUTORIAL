# Printing float
.data
   fl: .float 2.3
.text
   li  $v0, 2 # 2 for printing a float
   lwc1 $f12, fl #lwc1=load word into coprocessor 1, f12 for doubles and float
   syscall  