.data	#Pequenos Textos
	msg1:.asciiz"\nArea = "
	msg2:.asciiz"\nDigite a Base: "
	msg3:.asciiz"\nDigite a Altura: "
.text	#Grandes Textos
main:	#Inicio area triangulo
	#escreva(msg2)
	li $v0, 4
	la $a0, msg2 #msg2 atribuída a $a0
	syscall
	
	#base <- 4
	#Atribuição li
	#li $t0, 4

	#leia($t0)
	li $v0, 5
	syscall
	add $t0, $v0, 0

	#escreva(msg3)
	li $v0, 4
	la $a0, msg3 #msg3 atribuída a $a0
	syscall
	
      	#altura <- 6
	#li $t1, 6

	#leia($t1)
	li $v0, 5
	syscall
	add $t1, $v0, 0
      
	#area <- (base * altura) div 2
	mul $t2, $t0, $t1
	div $t2, $t2, 2
	
	#escreva(msg1)
	li $v0, 4
	la $a0, msg1 #msg1 atribuída a $a0
	syscall

	#escreva(area)
	li $v0, 1
	add $a0, $t2, 0
	syscall
