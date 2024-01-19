.data	#Pequenos Textos
	msg1:.asciiz"\nDigite um numero inteiro para realizar a media e aperte 0 para parar "	
	msg2:.asciiz"\nMedia: "	
	msg3:.asciiz"\nPares: "
	msg4:.asciiz"\nImpares: "
.text	#Grandes Textos
main: 
# n : $t1 | i : $t2 | media: $t3 | soma : $t4 | par : $t5 | impar : $t6 | res : $t7

	enquanto:
	#add $t4, $t4, 0
	#contador de vezes que repete
	add $t2, $t2, 1
	
	#escreve 
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lê 
    li $v0, 5 
	syscall
	add $t1, $v0, 0  
	
	#somando os numeros 
	add $t4, $t4, $t1 
	
	#calculando a media
	div $t3, $t4, $t2
	
	# condicional do par e impar
	rem $t7, $t1, 2

	beq $t7, 0, se
	j senao
se:
	add $t5, $t5, 1

senao:
	add $t6, $t6, 1
	j fimse
fimse:
	
	bne $t1, 0, enquanto

	#exibe a media
	li $v0, 4
	la $a0, msg2
	syscall
				
	add $a0, $t3, 0
	li $v0, 1
	syscall
	
	#exibe pares
	li $v0, 4
	la $a0, msg3
	syscall
				
	add $a0, $t5, 0
	li $v0, 1
	syscall
	
	#exibe impares
	li $v0, 4
	la $a0, msg4
	syscall
				
	add $a0, $t6, 0
	li $v0, 1
	syscall
	

		