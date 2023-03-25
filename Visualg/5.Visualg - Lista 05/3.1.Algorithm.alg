algoritmo "Exercise 3"
// Faça um algoritmo que solicite ao usuário a nota que ele tirou em uma prova.
// Caso a nota seja menor do que 7, permita que ele faça quantas provas
// de recuperação forem necessárias até que ele atinja no mínimo a nota 7.
// Para isso, pergunte ao usuário quanto ele tirou na prova de recuperação
// e enquanto não informar 7 ou mais continua a repetição. Ao fim do algoritmo,
//indique se o estudante precisou de recuperação, e se sim, quantas provas precisou fazer.

var
nota:real
qtdProva:inteiro
inicio

Escreval("Insira sua Nota")
leia (nota)

enquanto (nota < 0) ou (nota > 10) FACA
   Escreval("Nota Inválida Digite Novamente")
   leia (nota)
fimenquanto

enquanto (nota < 7) FACA

   Escreval("Insira sua Nota de recuperação")
   leia (nota)
   
   qtdProva<-qtdProva+1
    
   enquanto (nota < 0) ou (nota > 10) FACA
      Escreval("Nota Inválida Digite Novamente")
      leia (nota)
   fimenquanto

fimenquanto

se (qtdProva > 1)  entao
   escreva ("O estudante precisou de recuperacao e realizou", qtdProva, " de recuperação")
senao
   escreva ("O estudante não precisou de recuperacao e realizou uma prova")
fimse

fimalgoritmo



