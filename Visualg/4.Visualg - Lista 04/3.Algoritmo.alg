algoritmo "Exercicio 3"
//Sua empresa precisa fazer o balan�o financeiro semestral,
// portanto fa�a um algoritmo que pe�a o ganho bruto e os gastos da empresa
// para cada um dos 06 meses do primeiro semestre de um ano,
// e que mostre no final o ganho bruto semestral, o gasto semestral e o saldo financeiro,
// informando tamb�m se a empresa teve lucro, preju�zo ou saldo 0.
//Voc� fez esse exerc�cio na lista de exerc�cios condicionais, sem utilizar estrutura de repeti��o.
// Aqui voc� deve fazer utilizando e ap�s, fazer a compara��o das duas
//solu��es a fim de entender as vantagens do uso da estrutura para-fa�a nesse contexto.


var
contadora:inteiro
ganhoBruto:real
gastoTotal:real
ganhoSemestral:real
gastoSemestral:real
inicio
para contadora de 1 ate 6  passo 1 faca
   escreval ("Digite o ganho bruto da empresa do", contadora, "� m�s:")
   leia(ganhoBruto)
   ganhoSemestral<-ganhoBruto+ganhoSemestral
   escreval ("Digite o gasto total da empresa do", contadora, "� m�s:")
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
