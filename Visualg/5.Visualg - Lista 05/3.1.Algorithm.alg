algoritmo "Exercise 3"
// Fa�a um algoritmo que solicite ao usu�rio a nota que ele tirou em uma prova.
// Caso a nota seja menor do que 7, permita que ele fa�a quantas provas
// de recupera��o forem necess�rias at� que ele atinja no m�nimo a nota 7.
// Para isso, pergunte ao usu�rio quanto ele tirou na prova de recupera��o
// e enquanto n�o informar 7 ou mais continua a repeti��o. Ao fim do algoritmo,
//indique se o estudante precisou de recupera��o, e se sim, quantas provas precisou fazer.

var
nota:real
qtdProva:inteiro
inicio

Escreval("Insira sua Nota")
leia (nota)

enquanto (nota < 0) ou (nota > 10) FACA
   Escreval("Nota Inv�lida Digite Novamente")
   leia (nota)
fimenquanto

enquanto (nota < 7) FACA

   Escreval("Insira sua Nota de recupera��o")
   leia (nota)
   
   qtdProva<-qtdProva+1
    
   enquanto (nota < 0) ou (nota > 10) FACA
      Escreval("Nota Inv�lida Digite Novamente")
      leia (nota)
   fimenquanto

fimenquanto

se (qtdProva > 1)  entao
   escreva ("O estudante precisou de recuperacao e realizou", qtdProva, " de recupera��o")
senao
   escreva ("O estudante n�o precisou de recuperacao e realizou uma prova")
fimse

fimalgoritmo



