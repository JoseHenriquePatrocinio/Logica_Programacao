algoritmo "Exercicio 2"
//Fa�a um algoritmo que pe�a ao usu�rio 10 n�meros e mostre posteriormente
// quantos s�o pares e a soma deles, bem como quantos s�o �mpares e a soma deles.

var
contadora:inteiro
num:inteiro
contadoraPar:inteiro
parSoma:inteiro
contadoraImpar:inteiro
imparSoma:inteiro

inicio
para contadora de 1 ate 10 faca
   escreval ("Digite o" , contadora , "� numero")
   leia(num)
   se (num%2 = 0) entao
      contadoraPar<-contadoraPar + 1
      parSoma<- parsoma + num
   senao
      contadoraImpar<-contadoraImpar + 1
      imparSoma<-imparSoma + num

   fimse
fimpara

limpatela

escreval ("Quantidade de pares:", contadoraPar)
escreval ("Soma dos Pares:", parSoma)
escreval ("===================================")
escreval ("Quantidade de impares:", contadoraImpar)
escreval ("Soma dos impares:", imparSoma)



fimalgoritmo
