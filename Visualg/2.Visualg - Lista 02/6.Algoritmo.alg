algoritmo "Exercicio 6"

var
horaTrabalhada:inteiro
valorHora:real
salarioTotal:real
horaExtra:inteiro
valorExtra:real
horaPadrao:inteiro
inicio
escreval ("Quantas horas trabalhadas:")
leia(horaTrabalhada)
escreval ("Valor a ser pago por hora: ")
leia(valorHora)

horaExtra<- horaTrabalhada - 160
horaPadrao<-160
valorExtra<- 50 * valorHora/100+valorHora

se (horaTrabalhada<=160) entao
   salarioTotal<- horaTrabalhada * valorHora
   escreval ("Salário total:" , salarioTotal:2:2)
senao
   salarioTotal<-horaExtra*valorExtra + horaPadrao*valorHora
   escreval ("Salário total:" , salarioTotal:2:2)

fimse


fimalgoritmo
