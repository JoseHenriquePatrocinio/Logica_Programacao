algoritmo "Exercicio 5"

var

Preco_Custo:Real
Imposto_Governo:Real
Imposto_Representante:Real
Valor_Governo:Real
Valor_Representante:Real
Valor_Total:Real
inicio

escreval("Digite o preço de custo: ")
leia(Preco_Custo)
escreval("Digite o imposto do governo: ")
leia(Imposto_Governo)
escreval("Digite o imposto do representante: ")
leia(Imposto_Representante)
Valor_Governo<- Preco_Custo*Imposto_Governo/100
Valor_Representante<- Preco_Custo*Imposto_Representante/100
Valor_Total<- Valor_Governo+Valor_Representante+Preco_Custo
Limpatela
escreval ("Valor do Produto:" , Preco_Custo:2:2)
escreval ("Valor do Governo:" , Valor_Governo:2:2)
escreval ("Valor do Representante:" , Valor_Representante:2:2)
escreval ("Valor total:" , Valor_Total:2:2)


fimalgoritmo

