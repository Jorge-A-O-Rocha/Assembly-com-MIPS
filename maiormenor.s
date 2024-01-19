.data	#Pequenos Textos
	msg1:.asciiz"\nDigite o primeiro numero: "
	msg2:.asciiz"\nDigite o segundo numero:  "
	msg3:.asciiz"\nA diferenca do maior para o menor e de:  "	

.text	#Grandes Textos
main: #Inicio

   #escreva(msg1) entrada do $t1
	li $v0, 4          
	la $a0, msg1 #msg1 atribuída a $a0
	syscall
	
	#leia($t0)
	li $v0, 5 
	syscall
	add $t1, $v0, 0  
	
	#escreva(msg2) entrada do $t2
	li $v0, 4          
	la $a0, msg2 
	syscall
	
	#leia($t2)
	li $v0, 5 
	syscall
	add $t2, $v0, 0  

	bgt $t1, $t2, se 
  
	j senao 
  
		se:
			sub $t0, $t1, $t2
		
			# mostra res : $t0 caso o primeiro seja maior
			li $v0, 4
			la $a0, msg3
			syscall
			
			add $a0, $t0, 0
			li $v0, 1
			syscall
		j fimse

	senao:
		sub $t0, $t2, $t1
		
		# mostra res : $t0 caso o segundo seja maior
		
		li $v0, 4
		la $a0, msg3
		syscall
			
		add $a0, $t0, 0
		li $v0, 1
		syscall
			
	j fimse
fimse:
	