algoritmo "Exercicio 3"

var

valor,valorFinal:real
tipo:inteiro
forma:inteiro
pagamento:caractere
formaPagamento:caractere
validar:logico

inicio

validar<-verdadeiro

escreval ("Digite o valor do produto:")
leia(valor)
limpatela

escreval("Escolha uma forma de Pagamento")
escreval("=================================")
escreval("COD.CHEQUE    (1)")
escreval("COD.CARTÃO    (2)")
escreval("COD.BOLETO    (3)")
escreval("COD.DINHEIRO  (4)")
leia(forma)
limpatela
escolha (forma)

caso 1
   pagamento<-"cheque"
   valorFinal<-valor
   escreval ("Escolha o metodo de pagamento")
   escreval("==============================")
   escreval ("COD.A vista (1)")
   escreval ("COD.A prazo (2)")
   leia(tipo)
   limpatela

   escolha(tipo)
   caso 1
      formaPagamento<-"A vista"

   caso 2
      formaPagamento<-"A prazo"

   outrocaso
      validar<-falso

   fimescolha

caso 2
   pagamento<-"Cartão"
   escreval ("Escolha o metodo de pagamento")
   escreval("==============================")
   escreval ("COD.A vista (1)")
   escreval ("COD.A prazo (2)")
   leia(tipo)
   limpatela
   escolha (tipo)

   caso 1
      formaPagamento<-"A vista"
      valorFinal<-valor

   caso 2
      formaPagamento<-"A prazo"
      valorFinal<- valor+valor*5/100

   outrocaso
      validar<-falso
   fimescolha

caso 3
   pagamento<-"Boleto"
   formaPagamento<-"A vista"
   valorFinal<- valor*0.88

caso 4
   pagamento<-"Dinheiro"
   formaPagamento<-"A vista"
   se (valor>=300) entao
      valorFinal<- valor*0.95
   senao
      valorFinal<-valor
   fimse

outrocaso
   validar<-falso
fimescolha

se (validar=verdadeiro) entao

   escreval ("O valor do produto:" , valor:2:2 )
   escreval ("A forma de pagamento:" , pagamento)
   escreval ("Metodo de pagamento:" , formaPagamento)
   escreval ("O preço de venda é:" ,valorFinal:2:2)

senao

   escreval("Inválido")

fimse

fimescolha
fimalgoritmo
