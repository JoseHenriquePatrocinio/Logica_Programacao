algoritmo "Exercise 4"
// Fa�a uma solu��o que alimente um vetor com 10 valores inteiros e tamb�m que
// solicite ao usu�rio a entrada de dados de um valor inteiro qualquer.
// A solu��o dever� fazer uma busca do valor, informado pelo usu�rio, no vetor
//e imprima a posi��o em que este foi encontrado ou se n�o foi encontrado.

var
conjunto:vetor [1..10] de inteiro
contadora:inteiro
entrada:inteiro
validadora:logico
inicio
para contadora de 1 ate 10 passo 1 faca
   conjunto[contadora]<-randi(100)+1
fimpara

escreval("Digite um valor inteiro:")
leia(entrada)
limpatela

para contadora de 1 ate 10 passo 1 faca
   se (conjunto[contadora] = entrada) entao
      escreval("Valor encontrado na",contadora,"� posi��o")
      validadora<-verdadeiro
   fimse
fimpara

se(validadora=falso) entao
   escreval("Valor n�o encontrado")
fimse


fimalgoritmo
