algoritmo "Exercise 1"
// Fa�a um algoritmo que pe�a para o usu�rio digitar um n�mero.
// Caso o usu�rio digite um n�mero �mpar, deve ser informado a ele:
//�Voc� digitou um n�mero �mpar, n�o tem direito de digitar mais n�meros�.
//Caso o n�mero digitado seja par, o programa deve permitir que
// o usu�rio digite mais n�meros (quantos quiser), at� o momento
// que ele digitar algum n�mero �mpar, informando a mesma frase citada anteriormente.
// Ao final, deve ser informada a quantidade de n�meros que foram digitados.
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

escreval("Voc� digitou um n�mero �mpar, n�o tem direito de digitar mais n�meros")
escreval("quantidade de numeros digitados:" , qtd)


fimalgoritmo
