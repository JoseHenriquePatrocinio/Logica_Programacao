algoritmo "Exercicio 3"
//Sua empresa precisa fazer o balanço financeiro semestral,
// portanto faça um algoritmo que peça o ganho bruto e os gastos da empresa
// para cada um dos 06 meses do primeiro semestre de um ano,
// e que mostre no final o ganho bruto semestral, o gasto semestral e o saldo financeiro,
// informando também se a empresa teve lucro, prejuízo ou saldo 0.
//Você fez esse exercício na lista de exercícios condicionais, sem utilizar estrutura de repetição.
// Aqui você deve fazer utilizando e após, fazer a comparação das duas
//soluções a fim de entender as vantagens do uso da estrutura para-faça nesse contexto.


var
contadora:inteiro
ganhoBruto:real
gastoTotal:real
ganhoSemestral:real
gastoSemestral:real
inicio
para contadora de 1 ate 6  passo 1 faca
   escreval ("Digite o ganho bruto da empresa do", contadora, "º mês:")
   leia(ganhoBruto)
   ganhoSemestral<-ganhoBruto+ganhoSemestral
   escreval ("Digite o gasto total da empresa do", contadora, "º mês:")
   leia(gastoTotal)
   gastoSemestral<-gastoTotal+gastoSemestral
fimpara
limpatela
escreval ("O ganho bruto semestral foi de: R$" , ganhoSemestral:2:2)
escreval ("O gasto total semestral foi de: R$" , gastoTotal:2:2)
escreval ("Obteve um saldo financeiro de: R$" , ganhoSemestral-gastoSemestral:2:2)

se (ganhoSemestral>gastoSemestral) entao
   escreval ("Status do saldo: Positivo")
senao
   se (ganhoSemestral<gastoSemestral) entao
      escreval ("Status do saldo: Negativo")
   senao
      escreval ("Status do saldo: Zerado")
   fimse
fimse

fimalgoritmo
