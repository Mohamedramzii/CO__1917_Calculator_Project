.data
choice: .asciiz "Enter Choice for operation\n"
ch1: .asciiz "1-addition (+) \n"
ch2: .asciiz "2-Min of list \n"
ch3: .asciiz "3- multiplication (*)\n"
ch4: .asciiz "4-division (/) \n"
ch5: .asciiz "5-Sin  \n"
ch6: .asciiz "6-Cos  \n"
ch7: .asciiz "7-Tan  \n"
ch8: .asciiz "8-Square detection  \n"
ch9: .asciiz "9-Reactangle detection  \n"
ch10: .asciiz "10-Triangle detection  \n"
st1: .asciiz "Enter 2 numbers \n"
an1: .asciiz "\nAddition is \n"
an2: .asciiz "\nmin of list is \n"
an3: .asciiz "\nMultiple is \n"
an4: .asciiz "\ndivision is \n"
degree: .asciiz "\enter the degree \n"
Opposite:.asciiz "\enter the opposite to the angle ?\n"
Adjacent:.asciiz "\enter  the adjacent (next to) to the angle ?\n"
Hypotenuse:.asciiz "\enter  the adjacent (next to) to the angle ?\n"
an6: .asciiz "\nCos is \n"
an7: .asciiz "\nTan is \n"
an8: .asciiz "\n Square detection is \n"
an9: .asciiz "\n Rectangle detection is   \n"
an10: .asciiz "\n Triangle detection is \n"
Dividend:     .asciiz "\nPlease Enter the Dividend: "
Divisor:      .asciiz "\nPlease Enter the Divisor: "
Result:       .asciiz "\nThe Result is: "
Remainder:    .asciiz "\nthe Remainderis: "
ReadasAfloat:   .float 0.0
MinMsg1: .asciiz"Enter the array elemnts: "
MinMsg2: .asciiz"Enter the array size: "
array: .word 80
#$s0 contains number 1
#$sl contains number 2
#$s2 contains number 
#$t0 contains choice

.text
.globl main

main:

li $v0,4
la $a0, choice
syscall
li $v0,4
la $a0, ch1 
syscall
li $v0,4
la $a0, ch2
syscall
li $v0,4
la $a0, ch3
syscall
li $v0,4
la $a0, ch4
syscall
li $v0,4
la $a0, ch5
syscall
li $v0,4
la $a0, ch6
syscall
li $v0,4
la $a0, ch7
syscall
li $v0,4
la $a0, ch8
syscall
li $v0,4
la $a0, ch9
syscall
li $v0,4
la $a0, ch10
syscall
li $v0,5
syscall



#Cases
add $t0,$zero,$v0
#CASE 1-->ADD
addi $t1,$zero,1
beq $t0,$t1,addd
#CASE 2-->min of list
addi $t1,$zero,2
beq $t0,$t1,min
#CASE 3-->MULTIPLICATION
addi $t1,$zero,3
beq $t0,$t1,mull
#CASE 4-->DIVISION
addi $t1,$zero,4
beq $t0,$t1,divv
#CASE 5-->Sin
addi $t1,$zero,5
beq $t0,$t1,sin
#CASE 6-->Cos
addi $t1,$zero,6
beq $t0,$t1,cos
#CASE 7-->Tan
addi $t1,$zero,7
beq $t0,$t1,tan
#CASE 8-->Square
addi $t1,$zero,8
beq $t0,$t1,square
#CASE 7-->rectangle
addi $t1,$zero,9
beq $t0,$t1,rectangle
#CASE 7-->triangle
addi $t1,$zero,10
beq $t0,$t1,triangle
#DEFAULT CASE
j alll

#Case 1 Will  execute this part
addd:
#Enter Two numbers
li $v0,4
la $a0, st1
syscall
li $v0,5
syscall
addi $s0,$v0,0
li $v0,5
syscall
addi $s1,$v0,0
li $v0,4
syscall
#start adding
li $v0, 4
la $a0, an1
syscall
add $a0, $s0, $s1
li $v0, 1
syscall
j exit

#Case 2 Will  execute this part
#Mostafa Section Minmuim of list

min: 

#Enter the size of the array
li $v0,4
la $a0,MinMsg2
syscall
li $v0, 5
syscall
move $t3, $v0
addi $t2, $zero,4
mul $t3, $t3, $t2

#Enter numbers of array
li $v0,4
la $a0,MinMsg1
syscall

addi $t0, $zero,0
addi $t5, $zero,0
addi $s4, $zero, 0
lw $s4,array($t5)
while:
	beq $t0,$t3,while1 
	li $v0,5
	syscall
	move $s0,$v0
	sw $s0, array($t0)
	addi $t0,$t0,4

	j while
#start to find minmuim

while1:
	beq $t5,$t3,printresult 
	lw $s6, array($t5)
	addi $t5, $t5,4
	slt $s0,$s6,$s4
	bne $s0,$zero,assignMin
	j while1
	
	
assignMin:
move $s4, $s6
j while1
printresult:
li $v0,4
la $a0, ch2
syscall
li $v0,1
add $a0, $zero, $s4
syscall


###### END Date 26/12 ######
j exit

##Case 3 Will  execute this part
# ; section multiplication
mull:
#Enter Two numbers
     li $v0, 4  #command for printing a string
     la $a0, st1  #loading the string into st1 enable printing
     syscall
     li $v0, 5 #command for reading an integer
     syscall
     add $t0, $v0, $zero
     li $v0, 5 #command for reading an integer
     syscall
     add $t1, $v0, $zero 
     mult $t0, $t1  #this adds the values stored in t1 and assigns them to the temporary register $t0
     li $v0, 4 #command for printing a string
     la $a0, Result  #loading the string into Result enable printing
     syscall
     li $v0, 1
     mfhi $a0 # Move From High  register
     syscall
     li $v0, 1
     mflo $a0  # Move From Low register
     syscall
j exit

#Case 4 Will  execute this part
# ; section
divv:
#Enter Two numbers
    li $v0, 4   #command for printing a string
    la $a0, Dividend #loading the string into Dividend enable printing
    syscall      #executing the command
     li $v0, 5       #command for reading an integer
     syscall    #executing the command
     add $t0, $v0, $zero

     li $v0, 4   #command for printing a string
     la $a0, Divisor #loading the string into Divisor enable printing
     syscall          #executing the command
     li $v0, 5 #command for reading an integer
     syscall  #executing the command
     add $t1, $v0, $zero
     mul $t6,$t0,$t1 #this adds the values stored in $t0 and $t1 and assigns them to the temporary register $t6

#start division
     div $t0, $t1 #this adds the values stored in $t1 and assigns them to the temporary register $t0
     li $v0, 4  #this is the command for printing a string
     la $a0, Result #loading the string into Result enable printing
     syscall

     li $v0, 1 
     mflo $a0  # Move From Low register
     syscall

     li $v0, 4 #this is the command for printing a string
     la $a0, Remainder #loading the string into Remainder enable printing
     syscall
     
     li $v0, 1
     mfhi $a0  # Move From High register
     syscall
j exit

##### medhat section Sin , cos , tan #####
sin:
lwc1 $f4,ReadasAfloat
li $v0, 4   #command for printing a string
    la $a0, degree #loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 5       #command for reading an integer
     syscall    #executing the command


    li $v0, 4   #command for printing a string
    la $a0, Opposite #loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 6      #command for reading an integer
     syscall    #executing the command
     add.s $f5, $f0, $f4
     
    li $v0, 4   #command for printing a string
    la $a0, Hypotenuse #loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 6      #command for reading an integer
     syscall    #executing the command
     add.s $f6, $f0, $f4
     






#start sin
     div.s $f12,$f5, $f6  #this adds the values stored in $t1 and assigns them to the temporary register $t0

            la $a0, Result

            li $v0, 4

            syscall                          # Print Output String

            li $v0, 2

            syscall                          # Print result contained in $f12
j exit

###### cos
cos:
lwc1 $f4,ReadasAfloat
li $v0, 4   #command for printing a string
    la $a0, degree #loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 5       #command for reading an integer
     syscall    #executing the command


    li $v0, 4   #command for printing a string
    la $a0, Adjacent #loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 6      #command for reading an integer
     syscall    #executing the command
     add.s $f5, $f0, $f4
     
    li $v0, 4   #command for printing a string
    la $a0, Hypotenuse #loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 6      #command for reading an integer
     syscall    #executing the command
     add.s $f6, $f0, $f4
     


#start cos
     div.s $f12,$f5, $f6  #this adds the values stored in $t1 and assigns them to the temporary register $t0

            la $a0, Result

            li $v0, 4

            syscall                          # Print Output String

            li $v0, 2

            syscall                          # Print result contained in $f12
j exit

##### TAN
tan:
lwc1 $f4,ReadasAfloat
li $v0, 4   #command for printing a string
    la $a0, degree #loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 5       #command for reading an integer
     syscall    #executing the command


    li $v0, 4   #command for printing a string
    la $a0,  Opposite#loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 6      #command for reading an integer
     syscall    #executing the command
     add.s $f5, $f0, $f4
     
    li $v0, 4   #command for printing a string
    la $a0, Adjacent #loading the string into degree enable printing
    syscall      #executing the command
     li $v0, 6      #command for reading an integer
     syscall    #executing the command
     add.s $f6, $f0, $f4
     


#start tan
     div.s $f12,$f5, $f6  #this adds the values stored in $t1 and assigns them to the temporary register $t0

            la $a0, Result

            li $v0, 4

            syscall                          # Print Output String

            li $v0, 2

            syscall                          # Print result contained in $f12
j exit


#square
square:

#Enter  numbers

li $v0,4
la $a0, st1
syscall
li $v0,5
syscall
addi $s4,$v0,0
li $v0,5
syscall
addi $s5,$v0,0
li $v0,5
syscall
addi $s6,$v0,0
li $v0,5
syscall
addi $s7,$v0,0
li $v0,4
syscall
########

#start to find square
beq  $s4,$s5,Sq1
li $t4,0
j ExitSq
Sq1:
beq $s6,$s7,Sq2
li $t4,0
j ExitSq
Sq2:
beq $s4,$s6,Sq3
li $t4,0
j ExitSq
Sq3:
li $t4,1
ExitSq:
#####
li $v0,4
la $a0, ch8
syscall
add $a0, $t4, $0
li $v0, 1
syscall
j exit

#####rectangle
rectangle:

#Enter numbers


li $v0,4
la $a0, st1
syscall
li $v0,5
syscall
addi $s4,$v0,0
li $v0,5
syscall
addi $s5,$v0,0
li $v0,5
syscall
addi $s6,$v0,0
li $v0,5
syscall
addi $s7,$v0,0
li $v0,4
syscall
### rect detection
beq  $s4,$s5,Rect1
beq $s4,$s6,Rect2
beq $s4,$s7,Rect3
Rect1:
beq  $s6,$s7,Rect11
li $t4,0
j ExitRect
Rect11:
li $t4,1
j ExitRect
Rect2:
beq $s5,$s7,Rect22
li $t4,0
j ExitRect
Rect22:
li $t4,1
j ExitRect
Rect3:
beq $s5,$s6,Rect33
li $t4,0
j ExitRect
Rect33:
li $t4,1
ExitRect:
########

li $v0,4
la $a0, ch9
syscall
add $a0, $t4, $0
li $v0, 1
syscall
j exit

#####triangle
triangle:
#Enter three numbers
li $v0,4
la $a0, st1
syscall
li $v0,5
syscall
addi $s4,$v0,0
li $v0,5
syscall
addi $s5,$v0,0
li $v0,5
syscall
addi $s6,$v0,0
li $v0,4
syscall

####Triangle detection


add $t4, $s4,$s5
add $t5, $s4 ,$s6 
add $t6,$s5,$s6 

sleu  $t7, $t4,$s6 
beqz $t7,Tri1
li $s7,0
j ExitTri
Tri1:
sleu  $t8, $t5,$s5
beqz $t8,Tri2
li $s7,0
j ExitTri
Tri2:
sleu $t9, $t6,$s4
beqz $t9,Tri3
li $s7, 0
j ExitTri
Tri3:
li $s7,1
ExitTri: 
######
li $v0,4
la $a0,an10
syscall

li $v0,4
la $a0, ch10
syscall
add $a0, $s7, $0
li $v0, 1
syscall
j exit


#Default Will  execute this part
alll:

li $v0,4
la $a0, choice
syscall
li $v0,4
la $a0, ch1 
syscall
li $v0,4
la $a0, ch2
syscall
li $v0,4
la $a0, ch3
syscall
li $v0,4
la $a0, ch4
syscall
li $v0,4
la $a0, ch5
syscall
li $v0,4
la $a0, ch6
syscall
li $v0,4
la $a0, ch7
syscall
li $v0,4
la $a0, ch8
syscall
li $v0,4
la $a0, ch9
syscall
li $v0,4
la $a0, ch10
syscall
li $v0,5
syscall



#Cases
add $t0,$zero,$v0
#CASE 1-->ADD
addi $t1,$zero,1
beq $t0,$t1,addd
#CASE 2-->min of list
addi $t1,$zero,2
beq $t0,$t1,min
#CASE 3-->MULTIPLICATION
addi $t1,$zero,3
beq $t0,$t1,mull
#CASE 4-->DIVISION
addi $t1,$zero,4
beq $t0,$t1,divv
#CASE 5-->Sin
addi $t1,$zero,5
beq $t0,$t1,sin
#CASE 6-->Cos
addi $t1,$zero,6
beq $t0,$t1,cos
#CASE 7-->Tan
addi $t1,$zero,7
beq $t0,$t1,tan
#CASE 8-->Square
addi $t1,$zero,8
beq $t0,$t1,square
#CASE 7-->rectangle
addi $t1,$zero,9
beq $t0,$t1,rectangle
#CASE 7-->triangle
addi $t1,$zero,10
beq $t0,$t1,triangle
#DEFAULT CASE
j alll


#EXIT
exit:
li $v0,10
syscall
