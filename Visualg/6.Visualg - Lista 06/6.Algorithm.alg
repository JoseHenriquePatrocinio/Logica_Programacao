algoritmo "Exercise 6"
// Faça um programa que peça 5 números em um vetor,
// mais 05 números em outro vetor e armazene a soma dos elementos
//de um vetor com outro em um terceiro. Ex.: vetorA[1] + vetorB[1].
// Mostre o vetor soma ao final.

var
vetorA:vetor [1..5] de inteiro
vetorB:vetor [1..5] de inteiro
somaVetor:vetor [1..5] de inteiro
contadora:inteiro
inicio

para contadora de 1 ate 5 passo 1 faca
   escreva ("Digite o", contadora, "º do vetor A: ")
   leia(VetorA[contadora])
   limpatela
fimpara

para contadora de 1 ate 5 passo 1 faca
   escreva ("Digite o", contadora, "º do vetor B: ")
   leia(VetorB[contadora])
   limpatela
fimpara

para contadora de 1 ate 5 passo 1 faca
   somavetor[contadora]<-VetorA[contadora]+VetorB[contadora]
fimpara

para contadora de 1 ate 5 passo 1 faca
   escreval("Soma da",contadora,"º posição do vetores A e B: ", somavetor[contadora])
fimpara






fimalgoritmo
