.globl lpyear

lpyear:

	addi sp, sp , -4
	sw ra, 0(sp)
	
	# move argument values to temp registers
	mv t0, a0
	# Branch Less Than Zero
	bltz t0, IsNeg
	#mv a0,t0
	li t1, 4 # t1 = 4
	remu t2, t0, t1 # t2 = rem(t0 / 4)
	# Branch Not Equal Zero
	bnez t2, NotLY # year divisible by 4?
	li t1, 100 # t1 = 100
	remu t2, t0, t1 # t2 = rem(t0 / 100)
	bnez t2, NotLY # year divisible by 100?
	li t1, 400 # t1 = 400
	remu t2, t0, t1 # t2 = rem(t0 / 400)
	# Set EQual Zero
	seqz t0, t2 # if divisible set t0 = 1 else 0, output
	mv a0, t0
	beqz x0, exit

	NotLY:
	li t0, 0
	mv a0, t0
	beqz x0, exit

	IsNeg: # set t0 = -1 and move to a0 for output
	li t0, -1
	mv a0, t0
	beqz x0, exit

exit:
	lw ra, 0(sp)
	addi sp, sp, 4
	ret
