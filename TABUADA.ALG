Algoritmo "TABUADA"

Var
   num, res, cont : inteiro

Inicio
      repita
            escreva("Digite um numero inteiro: ")
            leia (num)
      ate (num > 0) e (num <= 10)
      
      cont <- 0
      
      enquanto (cont <= 10) faca
          res <- num * cont
          cont <- cont + 1
          escreval(res)
      fimenquanto


Fimalgoritmo