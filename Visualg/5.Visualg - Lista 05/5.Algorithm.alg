algoritmo "Exercise 5"
// Faça um programa que peça ao usuário dois números. Após, enquanto ele não
// digitar o resultado correto da soma desses dois números, mostre na tela
// “tente novamente”, quando acertar “resultado correto!”.
var
num1,num2:real
soma,resultado:real

inicio


escreval ("Digite o primeiro número:")
leia(num1)
escreval ("Digite o segundo número:")
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
