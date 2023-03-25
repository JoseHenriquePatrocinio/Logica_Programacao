algoritmo "Exercicio 3"
//Faça um programa que peça o gabarito de uma prova com 10 questões para o aluno,
// sendo que ele deve informar a, b, c ou d como resposta para cada questão.
// Ao final, em um outro vetor, você pedirá ao professor que informe as respostas
// corretas dessa prova. Ao final, mostre na tela quantos pontos o aluno atingiu nessa prova,
//considerando que cada questão vale 1 ponto.

var
aluno,prof:vetor [1..10] de caractere
contadora:inteiro
pontos:inteiro
inicio

para contadora de 1 ate 10 passo 1 faca
   repita
      escreval("Digite a",contadora,"° resposta")
      leia(aluno[contadora])
   ate(aluno[contadora]="a") ou (aluno[contadora]="b") ou (aluno[contadora]="c") ou (aluno[contadora]="d")
fimpara
limpatela


para contadora de 1 ate 10 passo 1 faca

   repita
   escreval("Informe a resposta da",contadora,"° questão")
   leia(prof[contadora])
   ate (prof[contadora]="a") ou (prof[contadora]="b") ou (prof[contadora]="c") ou (prof[contadora]="d")
   
   se (prof[contadora] = aluno[contadora]) entao
      pontos<-pontos+1
   fimse
fimpara
limpatela

escreval("A pontuação da prova foi de", pontos, " pontos")

fimalgoritmo
