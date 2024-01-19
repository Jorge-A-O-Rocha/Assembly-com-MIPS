.data
    msg1:.asciiz"\nDigite um num. inteiro: "
    msg2:.asciiz"\n"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, 0

	blt $t0, 0, main
	bgt $t0, 10, main

	li $t1, 0

enquanto:
	mul $t2, $t0, $t1
	add $t1, $t1, 1
	
	li $v0, 1
	add $a0, $t2, 0
	syscall

	li $v0, 4
	la $a0, msg2
	syscall

	ble $t1, 10, enquanto




