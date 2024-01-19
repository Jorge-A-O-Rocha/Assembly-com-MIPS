.data	#Pequenos Textos
	msg0:.asciiz"\nDigite a posicao inicial:  "
	msg1:.asciiz"\nDigite a velocidade inicial: "
	msg2:.asciiz"\nDigite o tempo:  "
	msg3:.asciiz"\nDigite a aceleracao "
	msg4:.asciiz"\nPosicao final =  "
.text	#Grandes Textos
main: #Inicio

# S $t1 ; s0 $t2 ; v0 $t3 ; t $t4 ; t^2 $t5 ; a $t6
# mult $t7 para multplicações 
 
# (Entradas podem ser negativas).
# S = S0 + (v0 * t) + ((a * t²) / 2)

# S = posição final | S0 = posição inicial 
# V0 = velociade inicial | t = tempo 
# a = aceleração | 

#escreva(msg0) entrada do s0
	li $v0, 4          
	la $a0, msg0 #msg0 atribuída a $a0
	syscall
	
	#leia($t2)
	li $v0, 5 
	syscall
	add $t2, $v0, 0  #copia da velocidade inicial $t2 
	
	#escreva(msg1) entrada do v0
	li $v0, 4          
	la $a0, msg1 #msg1 atribuída a $a0
	syscall
	
	#leia($t3)
	li $v0, 5 
	syscall
	add $t3, $v0, 0  #copia da velociade inicial na $t3 
	
	#escreva(msg2) entrada do t
	li $v0, 4          
	la $a0, msg2 #msg0 atribuída a $a0
	syscall
	
	#leia($t2)
	li $v0, 5 
	syscall
	add $t4, $v0, 0  #copia do tempo na $t2 
	
	mul $t5, $t4, $t4 # calculando o tempo ao quadrado
	
	#escreva(msg3) entrada do a
	li $v0, 4          
	la $a0, msg3 #msg0 atribuída a $a0
	syscall
	
	#leia($t6)
	li $v0, 5 
	syscall
	add $t6, $v0, 0  #copia da aceleração na $t6 
	
	# S = S0 + (v0 * t) + ((a * t²) / 2)
	
	mul $t7, $t3,$t4 # multiplicando a velocidade inicial com o tempo 
	
	add $t1, $t2, $t7 # somando a posição inical com a multiplicação anterior 
	
	mul $t7, $t7, 0 # zerando a variavel mult
	 
	mul $t7, $t6, $t5 # multiplicando aceleração pelo tempo ao quadrado
	
	div $t7, $t7, 2 # dividindo a multiplicação anterior por 2 
	
	add $t1, $t1, $t7 # somando com o restante da conta 
	
	
	
	#escreva(msg4) posição final
	li $v0, 4
	la $a0, msg4 #msg4 atribuída a $a0
	syscall

	#escreva(S)
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	