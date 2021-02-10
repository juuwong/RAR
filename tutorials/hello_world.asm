# Based on the Hello World Example on GitHub
# Start with .data to tell assembler lines below are data, not code, which are stored in memory
# "\n" is newline notation in C
.data
str: .string "Hello World!\n"

# end .data section, begin .text to tell assembler that lines below are code lines
# main: demarks program start
.text
main:
  # environment call 64 : write from buffer
  # a0 = num char , a1 = buffer address, a2 = write length
  li a0, 1
  la a1, str
  li a2, 15
  li a7, 64
  ecall
  
  # environment call 93 : exit with code in a0
  # li a0, 0
  # li a7, 93
  # ecall

  # environment call 10 : exit with code 0
  li a7, 10
  ecall