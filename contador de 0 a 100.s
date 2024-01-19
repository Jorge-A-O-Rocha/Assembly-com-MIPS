.data	#Pequenos Textos
	msg1:.asciiz"\nDigite um numero inteiro maior que zero e menor que 100 para contar os intervalos: "	
	msg2:.asciiz"\nNumeros entre 0 e 33: "	
	msg3:.asciiz"\nNumeros entre 34 e 66: "	
	msg4:.asciiz"\nNumeros entre 67 e 100: "
	esp:.asciiz"\n"
.text	#Grandes Textos
main: 
	# n : $t1 | cta1 : $t2 | cta2 : $t3 | cta3 : $t4
	
	  # 1 escreve inteiro
	  # 2 escreve decimal pequeno 
	  # 3 escreve decimal grande
	  # 4 escreve caracteres 
	  # 5 lê inteiro 
	  # 6 lê decimal pequeno
	  # 7 lê decimal grande 
	  # 8 lê caracteres   
	  #\n pula linha
  
	#escreva(msg1) entrada do $t1
	li $v0, 4          
	la $a0, msg1
	syscall
	
	#leia($t1)
	li $v0, 5 
	syscall
	add $t1, $v0, 0  
	
	#condionais pra comparar se é entre 0 e 33
		bge $t1, 0, se  
		ble $t1, 33, se 
			
		se:
			# adiciona no cta1 os numeros entre 0 e 33 cta1
			add $t2, $t2, 1
						
		#condionais pra comparar se é entre 34 e 66
		bge $t1, 34, se1  
		ble $t1, 66, se1 
		j se2
		
		se1:
			#condionais pra comparar  se é entre 34 e 66 cta2
			add $t3, $t3 , 1
		j se2	
		
		se2:
		
		#condionais pra comparar se é entre 67 e 100
		bge $t1, 67, se1  
			# condionais pra comparar se é entre 67 e 100 cta3
				add $t4, $t4 , 1
		j fimse
fimse:
	
	#condionais pra exibir
		blt $t1, 0, mostra  
		
	
	# enquanto < que 0 e > 100 vai pedir um novo valor 
	blt $t1, 0, main
	bgt $t1, 100, main
	
	mostra:
	#mostrando os contadores  //////////////////////////////////
	#cta1
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
    add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, esp
	syscall
	
	#cta2
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
    add $a0, $t3, 0
	syscall
	
	li $v0, 4
	la $a0, esp
	syscall
	
	
	#cta3
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
    add $a0, $t4, 0
	syscall
	
	li $v0, 4
	la $a0, esp
	syscall