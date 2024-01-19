.data	#Pequenos Textos
	msg1:.asciiz"\nDigite um numero inteiro maior que zero e menor que dez para calcular o fatorial: "	
	msg2:.asciiz"\nFatorial: "	
.text	#Grandes Textos
main: 
# n : $t1 | i : $t2 | fat : $t3

	#escreva(msg1) entrada do $t1
	li $v0, 4          
	la $a0, msg1
	syscall
	
	#leia($t1)
	li $v0, 5 
	syscall
	add $t1, $v0, 0  
	
	# enquanto < que 0 e > 10 vai pedir um novo valor 
	blt $t1, 0, main
	bgt $t1, 10, main
  add $t3, $t3, 1
 faca:
	#contador para o fatorial
	add $t2, $t2, 1
	#calculo do fatorial
	mul $t3, $t3, $t2
	
	# enquanto  i for diferente de n volta pro faca
 bne $t2, $t1, faca
 
    #exibe o fatorial
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
    add $a0, $t3, 0
	syscall