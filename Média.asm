#Fazer, em Assembly MIPS, um algoritmo que leia um número não determinado de valores e calcule e escreva a média aritmética inteira dos valores lidos, a quantidade de valores positivos, 
#a quantidade de valores negativos. A saída aparecerá quando o usuário digitar o número 0
.data
    msg1: .asciiz"\nDigite um Valor Inteiro: "
    msg2: .asciiz"\nA Média Aritmética é: "
    msg3: .asciiz"\nA Quantidade de Números Poisitivos é: "
    msg4: .asciiz"\nA Quantidade de Números Negativos é: "
.text
main:

Negativo:

    #Recebendo um Valor Inteiro
    li, $v0, 4
    la, $a0, msg1
    syscall
    
    li $v0, 5
    syscall
    add, $t0, $v0, 0
    
    #Verifica se o valor é zero
    beq $t0, 0, Zero 
    
    #Soma os valores digitados              
    add, $t1, $t0, $t1
    j ContadorMedia
    
ContadorMedia:
    add $t4, $t4, 1
    j Contador    
    
Contador:   
    
    bgt $t0, 0, ContadorPositivo

ContadorPositivo:
    add $t2, $t2, 1
    j Positivo
            
Positivo:
    
    blt $t0, 0, ContadorNegativo
    j main 
           
ContadorNegativo:
    add $t3, $t3, 1    
    j main
          
Zero:
    li, $v0, 4
    la, $a0, msg2
    syscall
    
    div $t5, $t1, $t4
    
    li, $v0, 1
    add $a0, $t5, 0
    syscall
    
    li, $v0, 4
    la, $a0, msg3
    syscall
    
    li, $v0, 1
    add $a0, $t2, 0
    syscall
    
    li, $v0, 4
    la, $a0, msg4
    syscall
    
    li, $v0, 1
    add $a0, $t3, 0
    syscall
                                                                  