algoritmo "Exercise 5"
// Fa�a um programa que pe�a ao usu�rio dois n�meros. Ap�s, enquanto ele n�o
// digitar o resultado correto da soma desses dois n�meros, mostre na tela
// �tente novamente�, quando acertar �resultado correto!�.
var
num1,num2:real
soma,resultado:real

inicio


escreval ("Digite o primeiro n�mero:")
leia(num1)
escreval ("Digite o segundo n�mero:")
leia(num2)
resultado<-num1+num2

repita
   escreval ("Digite o resultado de",num1," +",num2)
   escreva("Resultado:")
   leia(soma)
   limpatela
   se (soma<>resultado) entao
      escreval ("Tente Novamente")
      escreval ("===============")
   fimse
ate(soma=resultado)

escreval("Resultado Correto")
escreval("=================")

fimalgoritmo
