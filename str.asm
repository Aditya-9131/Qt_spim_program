

    .data
str:    .asciiz "Aditya, MIPS!"    # String to print
num:    .word 42                    # Integer to print
flt:    .float 3.14                 # Floating-point number to print
    
    .text
    .globl main
    
main:
    # Print string
    la $a0, str        # Load address of the string into $a0
    li $v0, 4          # Set system call code 4 to print string
    syscall            # Call the system to print the string
    
    # Print integer
    lw $a0, num        # Load the integer into $a0
    li $v0, 1          # Set system call code 1 to print integer
    syscall            # Call the system to print the integer
    
    # Print floating-point number
    l.s $f12, flt      # Load the floating-point number into $f12
    li $v0, 2          # Set system call code 2 to print float
    syscall            # Call the system to print the float
    
    # Exit the program
    li $v0, 10         # Set system call code 10 to exit the program
    syscall            # Call the system to exit
 