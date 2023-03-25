algoritmo "Exercicio 7"

var
tipo:caractere
litros:real
valorTotal:real
inicio
escreval("Qual tipo de cobustivel (G para gasolina A para alcool):")
leia(tipo)
escreval("Quantos litros de cobustivel:")
leia(litros)

se (tipo="A") e (litros<=20) entao
   valorTotal<- litros*(0.97*2.90)
senao
   se (tipo="A") e (litros>20) entao
      valorTotal<- litros*(0.95*2.90)
   senao
      se (tipo="G") e (litros<=20) entao
         valorTotal<- litros*(0.96*3.30)
      senao
         se (tipo="G") e (litros>20) entao
            valorTotal<- litros*(0.94*3.30)

         fimse
      fimse
   fimse
fimse

escreval ("Valor total do combustivel:" , valorTotal:2:2)

fimalgoritmo
