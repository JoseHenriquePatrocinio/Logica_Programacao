algoritmo "Exercise 1"
// Autor: Jose H.

//Faça um algoritmo que alimente uma matriz 2x2 e mostre em tela a matriz ao final.

var
matriz:vetor [1..2,1..2] de inteiro
l,c:inteiro
inicio
escreva("Matriz:")
para l de 1 ate 2 passo 1 faca
   escreval("")
   para c de 1 ate 2 passo 1 faca
      matriz[l,c]<-randi(10)+1
      escreva(matriz[l,c])
   fimpara
fimpara

fimalgoritmo
