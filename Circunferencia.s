.data	#Pequenos Textos
	msg0:.asciiz"\nArea = "
	msg1:.asciiz"\nDiametro = "
	msg2:.asciiz"\nCircunferencia =  "
	msg3:.asciiz"\nDigite o raio da circunferencia: "
.text	#Grandes Textos
main: #Inicio

# area $t1 ; diametro $t2 ; circunferencia $t3 ; raio $t4 ; raio^2 $t5

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
  
  #escreva(msg3) entrada do raio
	li $v0, 4          
	la $a0, msg3 #msg3 atribuída a $a0
	syscall
	
	#leia($t4)
	li $v0, 5 
	syscall
	add $t4, $v0, 0  #copia do raio na $t4 
	
	mul $t2, $t4, 2 # calculando o diamentro em $t2
	
	mul $t3, $t2, 3 # calculando a circunferencia em $t3
	
	mul $t5, $t4, $t4 # calculando o raio ao quadrado
	
	mul $t1, $t5, 3 #calculando a area 
	
	
	
 	# mostrando  o resultado no console
	#escreva(msg1) diamentro
	li $v0, 4
	la $a0, msg1 #msg1 atribuída a $a0
	syscall

	#escreva(diamentro)
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	#escreva(msg1) circunferencia
	li $v0, 4
	la $a0, msg2 #msg2 atribuída a $a0
	syscall

	#escreva(circunferencia)
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	#escreva(msg1) area
	li $v0, 4
	la $a0, msg0 #msg0 atribuída a $a0
	syscall

	#escreva(area)
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	
	
	
	
	