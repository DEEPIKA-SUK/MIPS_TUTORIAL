.data
     arr: .word 50:3 #initialize array of size 3 by 50
.text
     
     #index or offset $t0
     addi $t0, $zero,0
    
     #retrieve
     lw $t6, arr($zero) #lw=load word, retreive value at $t0 position in RAM
     li $v0,1
     move $a0,$t6
     syscall