# Addition
.data
  num1: .word 2
  num2: .word 3
 .text
    lw $t0, num1($zero)
    lw $t1, num2($zero)
    add $a0,$t0,$t1
    li $v0, 1
    syscall
    