algoritmo "Exercise 4"
// Autor : Jose H.

// Fa�a um programa que carregue os valores das vendas de uma loja no primeiro
// semestre de 2021. Considere para tal, uma matriz [6,4],
// sendo que s�o 06 meses e 04 semanas por m�s. Ao final, mostre na tela:
// *Total de vendas do semestre
// *Total vendido em cada m�s

var

matriz:vetor [1..6,1..4] de real
l,c:inteiro
soma:real
somaTotal:real
somaMes:vetor [1..6] de real

inicio

para l de 1 ate 6 passo 1 faca
   para c de 1 ate 4 passo 1 faca
      escreva("Digite o valor de venda do", l ,"� m�s", " na", c,"� semana: ")
      leia(matriz[l,c])
      soma<-soma+matriz[l,c]
   fimpara
   somaMes[l]<-soma
   somaTotal<-somaTotal+soma
   soma<-0
fimpara

limpatela

escreval("Total de vendas semestral: ",somaTotal:2:2)
escreval("")

para l de 1 ate 6 passo 1 faca
   escreval("Total de vendas do", l ,"� m�s: ",somaMes[l]:2:2)
fimpara



fimalgoritmo
