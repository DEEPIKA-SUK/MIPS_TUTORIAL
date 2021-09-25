.data
     arr: .space 12 # .space allocating space in RAM, 12 because 3elements*(4 byte)
.text
     addi $s0,$zero,4
     addi $s1,$zero,10
     addi $s2,$zero,500
     
     #index or offset $t0
     addi $t0, $zero,0
     
     sw $s0, arr($t0) #sw=save word in RAM, save $s0 value in RAM at position $t0
            addi $t0, $t0,4
     sw $s1, arr($t0)
            addi $t0, $t0,4
     sw $s2, arr($t0)
     
     subi $t0,$t0,4
     
     #retrieve
     lw $t6, arr($t0) #lw=load word, retreive value at $t0 position in RAM
     li $v0,1
     move $a0,$t6
     syscall
