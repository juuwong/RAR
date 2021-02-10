.globl palin

palin:
	addi sp , sp , -4
	sw ra , 0(sp)
	
	mv t0 , a0 # input to be compared to t1 at end
	mv t1 , a0 # input to be manipulated
	beqz t1 , IsZero # zero edge case
	li t3 , 16 # hex is base 16
	li t4 , 0 # initialize reverse value to zero

While: # loop for reverse value manipulation per digit
	remu t2 , t1 , t3 # remainder per digit
	mul t4 , t4 , t3 # rev = rev * base
	add t4 , t4 , t2 # rev = rev + digit
	divu t1 , t1 , t3 # num = num / base
	bnez t1 , While # loop until manipulated input is 0 (the loop has parsed through all digits)
	beq t4 , t0 , IsPalin # branch if reversed input = original input
	li a0 , 0 # else output 0
	j exit
	
IsPalin:
	li a0 , 1 # output 1
	j exit
	
IsZero:
	addi a0 , x0 , -1 # output -1
	j exit

exit:
	lw ra , 0(sp)
	addi sp , sp , 4
	ret