algoritmo "Exercicio 5"


var
dividendo:inteiro
divisor:inteiro
resto:inteiro
verQuociente:inteiro
verResto:inteiro
quociente:real

inicio

escreval ("Digite um numero inteiro:")
leia (dividendo)
escreval ("Digite um numero inteiro:" )
leia (divisor)

limpatela

quociente<- int (dividendo/divisor)
resto<- dividendo % divisor

escreval ("voc� informou os numeros" , dividendo , " e" , divisor)
escreval( "O Quociente �:" , quociente)
escreval ("O Resto �:" ,resto)



verQuociente<- int (quociente) % 2
verResto <- resto % 2

se ((verQuociente = 1) e (verResto = 0) e (quociente>=3))  entao
   escreval ("Voc� VENCEU! o desafio algoritmo")
senao
   escreval ("Voc� PERDEU! o desafio algoritmo")
fimse



fimalgoritmo
