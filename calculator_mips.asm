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
an5: .asciiz "\nSin is \n"
an6: .asciiz "\nCos is \n"
an7: .asciiz "\nTan is \n"
an8: .asciiz "\n Square detection is \n"
an9: .asciiz "\n Rectangle detection is   \n"
an10: .asciiz "\n Triangle detection is \n"
Dividend:     .asciiz "\nPlease Enter the Dividend: "
Divisor:      .asciiz "\nPlease Enter the Divisor: "
Result:       .asciiz "\nThe Result of the Division is: "
Remainder:    .asciiz "\nthe Remainderis: "
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
#Enter size of array numbers 

#Enter numbers of array


#start to find minmuim
######## remove this and start Your fuckn work#####
li $v0,4
la $a0, ch2
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

#Enter three numbers


##########
li $v0,4
la $a0,an5
syscall
#start to find sin
######## remove this and start Your fuckn work#####
li $v0,4
la $a0, ch5
syscall
###### END Date 26/12 ######
j exit

###### cos
cos:
#Enter Three numbers

########
li $v0,4
la $a0,an6
syscall
#start to find cos
######## remove this and start Your fuckn work#####
li $v0,4
la $a0, ch6
syscall
###### END Date 26/12 ######
j exit

##### TAN
tan:
#Enter Three numbers

#####
li $v0,4
la $a0,an7
syscall
#start to find tan
######## remove this and start Your fuckn work#####
li $v0,4
la $a0, ch7
syscall
###### END Date 26/12 ######
j exit

#### maher section 
#square
square:
li $v0,4
la $a0,an8
syscall
#Enter  numbers

########
li $v0,4
la $a0,an8
syscall
#start to find square
######## remove this and start Your fuckn work#####
li $v0,4
la $a0, ch8
syscall
###### END Date 26/12 ######
j exit

#####rectangle
rectangle:

#Enter numbers

########
li $v0,4
la $a0,an9
syscall
#start to find rectangle
######## remove this and start Your fuckn work#####
li $v0,4
la $a0, ch9
syscall
###### END Date 26/12 ######
j exit

#####triangle
triangle:
#Enter three numbers

######
li $v0,4
la $a0,an10
syscall
#start to find triangle
######## remove this and start Your fuckn work#####
li $v0,4
la $a0, ch10
syscall
###### END Date 26/12 ######
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
