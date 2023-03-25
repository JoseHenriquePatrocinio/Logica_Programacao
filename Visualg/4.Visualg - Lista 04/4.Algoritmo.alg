algoritmo "Algorimo 4"
//Faça um algoritmo que mostre a soma de todos os valores pares
// entre um intervalo de dois números digitados pelo usuário.

var
contadora:inteiro
intervalo1:inteiro
intervalo2:inteiro
intervalo3:inteiro
somaPar:inteiro
inicio
escreval ("Digite o valor do primeiro intervalo:")
leia (intervalo1)
escreval ("Digite o valor do segundo intervalo:")
leia (intervalo2)

se(intervalo2<intervalo1) entao

intervalo3<-intervalo1
intervalo1<-intervalo2
intervalo2<-intervalo3
fimse

para contadora de intervalo1 ate intervalo2 faca
   se (contadora %2=0) entao
      somaPar<-somaPar+contadora
   fimse
fimpara
escreval ("soma dos pares: " , somaPar)

fimalgoritmo
