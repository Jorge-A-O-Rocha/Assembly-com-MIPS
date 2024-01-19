.data	#Pequenos Textos
	msg1:.asciiz"\nIMC = "
	msg2:.asciiz"\nDigite o peso: "
	msg3:.asciiz"\nDigite a Altura: "
.text	#Grandes Textos
main: #Inicio

# peso $t0 ; altura $t1; $t3 ; IMC $t2

  # 1 escreve inteiro
  # 2 escreve decimal pequeno 
  # 3 escreve decimal grande
  # 4 escreve caracteres 
  # 5 lê inteiro 
  # 6 lê decimal pequeno
  # 7 lê decimal grande 
  # 8 lê caracteres   
  #\n pula linha
  
  #v0 comunicação e validação de entreada de saida
  #a0 escrita em console   
  
   #                 IMC = Peso / Altura^2
   
	#escreva(msg2) entrada do peso
	li $v0, 4               
	la $a0, msg2 #msg2 atribuída a $a0
	syscall
	
	#leia($t0)
	li $v0, 5
	syscall
	add $t0, $v0, 0  #copia o peso na $t0 
	
	#escreva(msg3) entrada do altura 
	li $v0, 4               
	la $a0, msg3 #msg3 atribuída a $a0
	syscall
	
	#leia($t0)
	li $v0, 5
	syscall
	add $t1, $v0, 0  #copia da altura na $t1
	
	#calculando o quadrado da altura e salvando no próprio registrador
	mul $t1, $t1, $t1
	
	#calculando o IMC e salvando no endereço $t2
	div $t2, $t0, $t1
	
	# mostrando  o resultado no console
	#escreva(msg1)
	li $v0, 4
	la $a0, msg1 #msg1 atribuída a $a0
	syscall

	#escreva(area)
	li $v0, 1
	add $t2, $a0, 0
	syscall
	
	