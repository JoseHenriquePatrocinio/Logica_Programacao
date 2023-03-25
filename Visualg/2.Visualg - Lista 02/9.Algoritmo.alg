algoritmo "Algoritmo 9"

var
num1:real
num2:real
num3:real

inicio

escreval("escreva o primeiro numero:")
leia(num1)
escreval("escreva o segundo numero:")
leia(num2)
escreval("escreva o terceiro numero:")
leia(num3)

se(num1=num2) ou (num1=num3) ou (num2=num3)entao
   escreval ("Os numeros não podem ser iguais")
senao
   se (num1<num2) e (num1<num3) entao
      escreval ("Menor numero:" , num1)
   senao
      se (num2<num3) entao
         escreval ("Menor numero:" , num2)
      senao
            escreval ("Menor numero:" , num3)

         fimse
      fimse
   fimse
fimalgoritmo
