Algoritmo "Par e Impar"

Var
   num, resto : inteiro

Inicio
      escreva("Digite um numero inteiro: ")
      leia (num)
      
      resto <- num mod 2
      
      se (resto = 0) entao
         escreval("Par")
      senao
         escreval("Impar")
      fimse


Fimalgoritmo