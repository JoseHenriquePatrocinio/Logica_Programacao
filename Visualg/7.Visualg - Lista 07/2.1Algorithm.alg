algoritmo "Exercise 2"
// Autor : Jose H.
// Fa�a um programa que pe�a os valores inteiros para uma matriz 3x3 e pe�a
// ao usu�rio qual o n�mero da linha que ele deseja ver os valores e mostre
// na tela somente essa linha.

var
matriz:vetor [1..3,1..3] de inteiro
l,c:inteiro

inicio

para l de 1 ate 3 passo 1 faca
   para c de 1 ate 3 passo 1 faca
      escreva("Linha", l , " Digite a", c , "� coluna: ")
      leia(matriz[l,c])
   fimpara
fimpara

escreval("")    //pular linha

enquanto (l<1) ou (l>3) Faca
   escreva ("Escolha uma linha de 1 ate 3: ")
   leia(l)
fimenquanto

escreval("")    //pular linha

escreva("Estes sao os valores da", l ,"� linha: ")

para c de 1 ate 3 passo 1 faca
   escreva(matriz[l,c])
fimpara


fimalgoritmo
