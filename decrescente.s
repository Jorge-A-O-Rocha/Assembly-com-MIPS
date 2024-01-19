.data	#Pequenos Textos
	msg1:.asciiz"\nDigite o primeiro numero: "
	msg2:.asciiz"\nDigite o segundo numero:  "
	msg3:.asciiz"\nDigite o terceiro numero:  "
	msg4:.asciiz"\nNumeros em ordem decrescenre:  "	
	espa:.asciiz" , "
	
.text	#Grandes Textos
main: 
	# n1 : $t1 | n2 : $t2 | n3 : $t3

	#escreve 1 
	li $v0, 4
	la $a0, msg1
	syscall
	
	#lê primeiro n1
    li $v0, 5 
	syscall
	add $t1, $v0, 0  
	
	#escreve 2
	li $v0, 4
	la $a0, msg2
	syscall
	
	#lê segundo n2
    li $v0, 5 
	syscall
	add $t2, $v0, 0
	
	#escreve 3
	li $v0, 4
	la $a0, msg3
	syscall
	
	#lê terceiro n3
    li $v0, 5 
	syscall
	add $t3, $v0, 0
	
		#condionais pra comparar,  sendo n1 > n2 > n3
		bge $t1, $t2, se  
		bge $t2, $t3, se 
		
		#pula pra condição 2
    j se2 
	
		se:
			# mostra os números quando n1 > n2 > n3
			
			#exibe o primeiro valor
			li $v0, 4
			la $a0, msg4
			syscall
			
			li $v0, 1
			add $a0, $t1, 0
			syscall
			
			#exibe o segundo valor
			li $v0, 4
			la $a0, espa
			syscall
			
			li $v0, 1
			add $a0, $t2, 0
			syscall
			
			#exibe o terceiro valor
			li $v0, 4
			la $a0, espa
			syscall
			
			li $v0, 1
			add $a0, $t3, 0
			syscall
			
		j fimse
		
	se2:
			#condionais pra comparar  sendo n2 > n3 > n1
			bge $t2, $t3, se1  
			ble $t3, $t1, se1
			bge $t2, $t1, se1 
	j senao 		
		
			se1:
				# condionais pra comparar,  sendo n2 > n3 > n1
				
				#exibe o primeiro valor
				li $v0, 4
				la $a0, msg4
				syscall
				
				add $a0, $t2, 0
				li $v0, 1
				syscall
				
				#exibe o segundo valor
				li $v0, 4
				la $a0, espa
				syscall
				
				li $v0, 1
				add $a0, $t3, 0
				syscall
				
				#exibe o terceiro valor
				li $v0, 4
				la $a0, espa
				syscall
				
				li $v0, 1
				add $a0, $t1, 0
				syscall
			
			j fimse

	senao:
		
				#  n2 > n1 > n3
				
				#exibe o primeiro valor
				li $v0, 4
				la $a0, msg4
				syscall
				
				li $v0, 1
				add $a0, $t2, 0
				syscall
				
				#exibe o segundo valor
				li $v0, 4
				la $a0, espa
				syscall
				
				add $a0, $t1, 0
				li $v0, 1
				syscall
				
				#exibe o terceiro valor
				li $v0, 4
				la $a0, espa
				syscall
				
				li $v0, 1
				add $a0, $t3, 0
				syscall
			
			j fimse
fimse: