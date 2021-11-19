#Call a function to compute Y=(g+h)-(i+j) and print Y.
#Use registers s1, s2 for intermediate storage and s0 for final output of the given function. 
#Suppose s0, s1 and s2 initially have some values. Then print values of s0, s1 and s2 computed within function and print initial values of s0, s1 and s2 after returning function. 

.text:
main:
    li $t0,1
    li $a1,1
    li $a3,1
    li $a2,1
    
    li $s0,4
    li $s1,5
    li $s2,6
    
    jal func
    
    li $v0,1
    move $a0,$s0
    syscall
    li $v0,1
    move $a0,$s1
    syscall
    li $v0,1
    move $a0,$s2
    syscall
    
    li $v0,10
    syscall
    
func:
    addi $sp,$sp,-12
    sw $s1,8 ($sp)
    sw $s0,4 ($sp)
    sw $s2,0 ($sp)
    
    add $s1,$t0,$a1
    add $s2,$a3,$a2
    sub $s0,$s1,$s2

    li $v0,1
    move $a0,$s0
    syscall
    li $v0,1
    move $a0,$s1
    syscall
    li $v0,1
    move $a0,$s1
    syscall
    
    lw $s2,0 ($sp)
    lw $s0,4 ($sp)
    lw $s1,8 ($sp)
    addi $sp,$sp,12
    jr $ra
