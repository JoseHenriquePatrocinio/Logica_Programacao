algoritmo "Exercise 1"
// Faça um algoritmo que peça para o usuário digitar um número.
// Caso o usuário digite um número ímpar, deve ser informado a ele:
//“Você digitou um número ímpar, não tem direito de digitar mais números”.
//Caso o número digitado seja par, o programa deve permitir que
// o usuário digite mais números (quantos quiser), até o momento
// que ele digitar algum número ímpar, informando a mesma frase citada anteriormente.
// Ao final, deve ser informada a quantidade de números que foram digitados.
var
num:inteiro
qtd:inteiro

inicio

repita
   qtd<-qtd+1
   escreval ("Digite um numero inteiro:")
   leia(num)
ate (num%2<>0)

limpatela

escreval("Você digitou um número ímpar, não tem direito de digitar mais números")
escreval("quantidade de numeros digitados:" , qtd)


fimalgoritmo
