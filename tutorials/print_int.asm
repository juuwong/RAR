.data
num: .word 24

.text
main:
  # environment call 5 : reads an int from a0
  li a7, 5
  ecall
  
  # environment call 1 : prints an int from a0
  li a7, 1
  lw a0, num
  ecall
  
  # environment call 10 : exit with code 0
  li a7, 10
  ecall