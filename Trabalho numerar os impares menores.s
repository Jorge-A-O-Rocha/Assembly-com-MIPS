.data	#Pequenos Textos
	msg1:.asciiz"\nDigite um numero inteiro maior que zero: "	
	msg2:.asciiz"\nNao existe numero inteiro que seja impar menor que 1 e maior que 0 "	
	esp:.asciiz" "
.text	#Grandes Textos
main: 
	# n : $t1 | i : $t2 | resto : $t3 |Npar : $t4 | Nimpar : $t5| respar:$t6 
	#zerando as variaveis pra quando quiser testar de novo
	mul $t1, $t1,0
	mul $t2, $t2,0
	  
    #escreva(msg1) entrada do $t1
	li $v0, 4          
	la $a0, msg1
	syscall
	
	#leia($t1)
	li $v0, 5 
	syscall
	add $t1, $v0, 0  
	
	# até que n seja  < que 1  vai pedir um novo valor 
	blt $t1, 1, main
	
	#se n = 1 exibe msg3
	beq $t1, 1, one 
	
	#calculando os numeros a serem mostrados
	add $t3, $t1, 0
	
	#pegando o resto  de n
	rem $t3, $t3, 2
	
	#se n for impar 
	bne $t3, 0, se
	j senao
se:
loopP: 
	add $t2, $t2, 1
	#pegando o resto  de $t2
	rem $t6, $t2, 2
	
		beq $t6, 0, seimpar1
			j continue
			seimpar1:
			add $t2, $t2, 1
continue:
		
	#escreva i : $t2,  até n-2
	li $v0, 1          
	add $a0, $t2, 0
	syscall
	
	li $v0, 4         
	la $a0, esp
	syscall
	
 #Enquanto (i = n - 2)
sub $t5, $t1, 2 
beq $t2, $t5, fim 
bne $t2, $t5, loopP 

senao:
#caso n seja par
	loopI: 
	add $t2, $t2, 1
	#pegando o resto  de $t2
	rem $t6, $t2, 2
	
		beq $t6, 0, seimpar2
			j continua
			seimpar2:
			add $t2, $t2, 1
continua:
		
	#escreva i : $t2,  até n - 1
	li $v0, 1          
	add $a0, $t2, 0
	syscall
	
	li $v0, 4         
	la $a0, esp
	syscall
	
 #Enquanto (i = n - 1)
sub $t5, $t1, 1 
beq $t2, $t5, fim 
bne $t2, $t5, loopI
fimse:
	
	j fim
one :  
	#escreva(msg2)
	li $v0, 4          
	la $a0, msg2
	syscall
	
fim:

#volta pro começo pra poder testar de novo
j main