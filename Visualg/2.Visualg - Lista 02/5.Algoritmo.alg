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

escreval ("você informou os numeros" , dividendo , " e" , divisor)
escreval( "O Quociente é:" , quociente)
escreval ("O Resto é:" ,resto)



verQuociente<- int (quociente) % 2
verResto <- resto % 2

se ((verQuociente = 1) e (verResto = 0) e (quociente>=3))  entao
   escreval ("Você VENCEU! o desafio algoritmo")
senao
   escreval ("Você PERDEU! o desafio algoritmo")
fimse



fimalgoritmo
