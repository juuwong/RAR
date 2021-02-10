.globl gcd

gcd:
	addi sp, sp, -4
	sw ra, 0(sp)
	
	# move temp registers to argument values
	mv t0, a0
	mv t1, a1
	# Branch EQual to Zero
	# branch to IsZero if t0 or t1 are equal to zero
	beqz t0, IsZero
	beqz t1, IsZero
	# Branch Not Equal
	# branch to while if t0 and t1 are not equal
	# initial check for equality
	bne t0, t1, while
	
	while: # Sort cases for t0 > < t1 and exit when t0 = t1
	mv a0, t0
	# looped check for equality
	# t0 = t1 , GCD = t0 = t1
	beq t0, t1, exit
	# Branch Greater Than Unsigned
	bgtu t0, t1, if
	# Branch LEss than Unsigned
	bleu t0, t1, else
	
	if: # if t0>t1; t0=t0-t1
	sub t0, t0, t1
	beqz x0, while # loop
	
	else: # else t0<t1; t1=t1-t0
	sub t1, t1, t0
	beqz x0, while # loop
	
	IsZero: # set temp values to -1 and move to function values 
	li t0, -1
	li t1, -1
	mv a0, t0
	mv a1, t1
	beqz x0, exit

exit:
	lw ra, 0(sp)
	addi sp, sp, 4
	ret
