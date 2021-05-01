.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall# Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
   addi t0,a0,0   #t0=n
   addi t1,x0,1   #t1=1
   addi t3,x0,1   #t3=1
   addi a0,x0,1   #a0=1
   loop:
      beq t0,x0,exit #if(n==0) exit
      mul a0,a0,t1
      beq t0,t1,exit
      add t1,t1,t3
      j loop
   exit:
      jr ra
