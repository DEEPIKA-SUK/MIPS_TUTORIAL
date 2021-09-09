# Printing double    zero double is needed to print double
.data
   d: .double 2.302
   zerod: .double 0.0
.text
   ldc1 $f2, d               #ldc1=load double into coprocessor 1, f2 or f3 for non zero doubles
   ldc1 $f0, zerod #f0 or f1 for zero doubles
   li $v0, 3 #for printing double
   add.d  $f12,$f2,$f0             #floating point addition
   syscall
   
   