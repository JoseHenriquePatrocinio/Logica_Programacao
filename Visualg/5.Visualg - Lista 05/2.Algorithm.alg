algoritmo "Exercise 2"
// Crie uma calculadora que permita o c�lculo de uma equa��o, sem limite de execu��es definido, da seguinte maneira:
//1. Pe�a o primeiro valor ,
//2. Pe�a o c�lculo que deseja fazer (entre as 4 opera��es b�sicas),
//3. Pe�a um segundo valor ,
//4. Efetue o c�lculo,
//5. Pe�a se o usu�rio quer continuar calculando. Se ele responder que sim, volte
//para o passo 2 usando o resultado do c�lculo da linha 4 como primeiro valor , se
//disser que n�o, mostre o resultado final .
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
   escreval("Digite um operador b�sico")
   escreval("Adi��o        (+)")
   escreval("Subtra��o     (-)")
   escreval("Multiplica��o (*)")
   escreval("Divis�o       (/)")
   escreva("sua escolha:")
   leia(symbol)
   limpatela
   se (symbol<> "+") e (symbol<> "-") e (symbol<> "*") e (symbol<> "/")  entao
      escreval ("Opera��o inv�lida")
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
            escreval("N�o � possivel dividir por zero")
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
