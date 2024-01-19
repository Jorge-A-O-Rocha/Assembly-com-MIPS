.data
    msg1:.asciiz"\nDigite um num. inteiro: "
    msg2:.asciiz"\nPar"
    msg3:.asciiz"\nImpar"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, 0

	blt $t0, 0, main

	rem $t1, $t0, 2

	beq $t1, 0, se
	j senao
se:
	li $v0, 4
	la $a0, msg2
	syscall
	j fimse

senao:
	li $v0, 4
	la $a0, msg3
	syscall
	j fimse
fimse:


