algoritmo "Exercise 2"
// Crie uma calculadora que permita o cálculo de uma equação, sem limite de execuções definido, da seguinte maneira:
//1. Peça o primeiro valor ,
//2. Peça o cálculo que deseja fazer (entre as 4 operações básicas),
//3. Peça um segundo valor ,
//4. Efetue o cálculo,
//5. Peça se o usuário quer continuar calculando. Se ele responder que sim, volte
//para o passo 2 usando o resultado do cálculo da linha 4 como primeiro valor , se
//disser que não, mostre o resultado final .
//Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2

var
stNum:real
symbol:caractere
option:caractere
ndNum:real
check:logico


inicio
escreval("Digite um numero: ")
leia(stNum)
limpatela

repita
   escreval("Digite um operador básico")
   escreval("Adição        (+)")
   escreval("Subtração     (-)")
   escreval("Multiplicação (*)")
   escreval("Divisão       (/)")
   escreva("sua escolha:")
   leia(symbol)
   limpatela
   se (symbol<> "+") e (symbol<> "-") e (symbol<> "*") e (symbol<> "/")  entao
      escreval ("Operação inválida")
      escreval ("=================")
      check<-falso
   senao
      check<-verdadeiro
   fimse

   se (check=verdadeiro) entao
      escreval("Digite um numero:")
      leia(ndNum)
      limpatela

      escolha symbol

      caso "+"
         stNum<-(stNum+ndNum)

      caso "-"
         stNum<-(stNum-ndNum)

      caso "*"
         stNum<-(stNum*ndNum)

      caso "/"
         se (ndNum=0) entao
            escreval("Não é possivel dividir por zero")
            escreval("===============================")
         senao
            stNum<-(stNum/ndNum)
         fimse
      fimescolha
   fimse

   escreval ("Gostaria de continuar calculando?")
   escreval ("SIM - S ou NAO - N")
   escreva("sua escolha:")
   leia(option)
   limpatela
ate (option="N")

escreval("Resultado calculado: " , stNum:2:2)




fimalgoritmo
