algoritmo "Exercise 3"
// Autor : Jose H.
// Faça um programa que peça os valores de uma matriz 2x3 e ao final,
// mostre na tela o total da soma de todos os elementos dessa matriz.

var

matriz:vetor [1..2,1..3] de real
l,c:inteiro
soma:real

inicio

para l de 1 ate 2 passo 1 faca
   para c de 1 ate 3 passo 1 faca
      escreva("Linha", l , " Digite a", c , "º coluna: ")
      leia(matriz[l,c])
      soma<-soma+matriz[l,c]
   fimpara
fimpara

escreval("") //pular linha
escreva ("A soma de todos os elementos: ", soma:2:2)


fimalgoritmo
