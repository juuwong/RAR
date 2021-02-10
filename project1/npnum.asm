.globl npnum

npnum:
	addi sp, sp , -4
	sw ra, 0(sp)
	
	mv t0, a0 # t0 = nth
	beqz t0, IsZero # can't find 0th prime, output -1

	li t1, 1 # t1 = counter
	li t2, 2 # t2 = number to output when nth prime = prime counter
	li t6, 1 # placeholder for 1

OuterWhile:
	beq t0, t1, NumOut # branch to output when counter equals nth input
	addi t2, t2, 1 # number += 1
	li t3, 1 # set prime state = 1 (is prime until not)
	li t4, 1 # loop = 1

InnerWhile:
	addi t4, t4, 1 # loop += 1
	bgeu t4, t2, ForIsDone # exit for loop when loop >= number
	remu t5, t2, t4 # t5 = number % loop
	bnez t5, InnerWhile # inner loop if t5 not 0
	li t3, 0 # otherwise, prime state = 0
	

ForIsDone:
	bne t6, t3, OuterWhile # straight to outer loop if prime state is not still 1
	addi t1, t1, 1 # counter += 1
	j OuterWhile

NumOut:
	add a0, x0, t2 # output final number
	j exit

IsZero:
	addi a0 , x0 , -1 # output -1
	j exit

exit:
	lw ra, 0(sp)
	addi sp, sp, 4
	ret
