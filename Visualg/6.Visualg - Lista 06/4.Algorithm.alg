algoritmo "Exercise 4"
// Faça uma solução que alimente um vetor com 10 valores inteiros e também que
// solicite ao usuário a entrada de dados de um valor inteiro qualquer.
// A solução deverá fazer uma busca do valor, informado pelo usuário, no vetor
//e imprima a posição em que este foi encontrado ou se não foi encontrado.

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
      escreval("Valor encontrado na",contadora,"º posição")
      validadora<-verdadeiro
   fimse
fimpara

se(validadora=falso) entao
   escreval("Valor não encontrado")
fimse


fimalgoritmo
