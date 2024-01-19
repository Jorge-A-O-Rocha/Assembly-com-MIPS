.data	
	num:.asciiz"\nDigite um numero que seja inteiro maior que 0: "	
	h:.asciiz"\nH =  "
.text	
main: 
	li $v0, 4          
	la $a0, num
	syscall
	
	li $v0, 5 
	syscall
	add $t1, $v0, 0  
	
	# até que n seja  < que 1  vai pedir um novo valor 
	blt $t1, 1, main
	
repete: 
	add $t2, $t2, 1
	mul $t3, $t2, 4
	
	rem $t4, $t2, 2
	
		bne $t4, 0, se
			j senao
			se:	 	
					beq $t2, 1, se1
					j senao1
						se1:
						add $t5, $t3, 0
					j fimse	
						senao1:
					
				add $t5, $t5, $t3
				j  fimse
			senao:
				add $t5, $t5, $t2
				j  fimse
		fimse:

 # repete até $t2 = $t1
bne $t2, $t1, repete

	li $v0, 4
	la $a0, h
	syscall

	li $v0, 1          
	add $a0, $t5, 0
	syscall
		
