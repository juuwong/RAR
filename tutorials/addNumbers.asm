# uncomment to be able to reference functions from external file
# .globl main
# .globl addNumbers

.text
main:
  # assign the two numbers to add : a0 = 5 , a1 = 7
  addi a0, x0, 5
  addi a1, zero, 7

  jal addNumbers
  # use to call function from external file
  # call addNumbers
  
  # print output of addNumbers
  li a7, 1
  ecall
  
  li a7, 10 # exit(0)
  ecall

addNumbers:
  # move numbers to temporaries
  mv t1, a0
  mv t2, a1
  # add the two values in temporaries
  add t1, t1, t2
  # move sum to argument return value
  mv a0, t1
  # exit function
  ret