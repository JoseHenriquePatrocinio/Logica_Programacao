algoritmo "Exercicio 3"

var
numeroDigitado:inteiro
antecessor:inteiro
sucessor:inteiro
inicio

escreval ("Digite um número inteiro:")
leia(numeroDigitado)
escreval ("Digite seu antecessor:" )
leia (antecessor)
escreval ("Digite seu sucessor:" )
leia (sucessor)

limpatela

se (antecessor=numeroDigitado - 1) entao
   escreval("Antecessor correto")
senao
   escreval ("Antecessor incorreto")

fimse

se (sucessor=numeroDigitado + 1) entao
   escreval("Sucessor correto")
senao
   escreval ("Sucessor incorreto")
fimse
fimalgoritmo
