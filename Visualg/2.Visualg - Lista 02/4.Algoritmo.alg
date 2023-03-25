algoritmo "Exercicio 4"

var
ganhoBruto:vetor [0..5] de real
gastoMensal:vetor [0..5] de real
loteGanho: real
loteGasto: real
loteSaldo: real

inicio
escreva("Digite o ganho bruto do mês de janeiro:")
leia(ganhoBruto [0])
escreva("Digite o gasto do mês de janeiro:")
leia(gastoMensal [0])

escreva("Digite o ganho bruto do mês de fevereiro:")
leia(ganhoBruto [1])
escreva("Digite o gasto do mês de fevereiro:")
leia(gastoMensal [1])

escreva("Digite o ganho bruto do mês de março:")
leia(ganhoBruto [2])
escreva("Digite o gasto do mês de março:")
leia(gastoMensal [2])

escreva("Digite o ganho bruto do mês de abril:")
leia(ganhoBruto [3])
escreva("Digite o gasto do mês de abril:")
leia(gastoMensal [3])

escreva("Digite o ganho bruto do mês de maio:")
leia(ganhoBruto [4])
escreva("Digite o gasto do mês de maio:")
leia(gastoMensal [4])

escreva("Digite o ganho bruto do mês de junho:")
leia(ganhoBruto [5])
escreva("Digite o gasto do mês de junho:")
leia(gastoMensal [5])

limpatela

loteGanho<- ganhoBruto[0] + ganhoBruto[1] + ganhoBruto[2] + ganhoBruto[3] + ganhoBruto[4] + ganhoBruto[5]

loteGasto<- gastoMensal[0] + gastoMensal[1] + gastoMensal[2] + gastoMensal[3] + gastoMensal[4] + gastoMensal[5]

loteSaldo<- loteGanho - loteGasto


escreval("O ganho bruto semestral foi de:",loteGanho," Reais")
escreval(" ") //pula linha
escreval("O gasto total semestral foi de:",loteGasto," Reais")
escreval(" ") //pula linha
escreval("O salto semestral foi de:",loteSaldo," Reais")
escreval(" ")  //pula linha

se (loteGanho > loteGasto) entao
   escreval("A empresa obteve um saldo POSITIVO")

senao

   se (loteGanho < loteGasto) entao
      escreval("A empresa obteve um saldo NEGATIVO")

   senao
   
      escreval ("A empresa obteve um saldo EQUILIBRADO")

   fimse
fimse
fimalgoritmo

