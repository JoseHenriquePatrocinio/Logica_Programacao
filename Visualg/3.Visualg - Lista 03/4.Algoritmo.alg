algoritmo "Exercicio 4"

var

num1:real
num2:real
operador:caractere

inicio

escreval ("Digite o primeiro número:")
leia (num1)
escreval ("Digite o segundo número:")
leia (num2)
limpatela

escreval ("Escolha uma operação")
escreval ("=======================")
escreval ("soma          (+)")
escreval ("subtração     (-)")
escreval ("Divisão       (/)")
escreval ("Multiplicação (*)")
escreval("========================")
escreval ("Digite o simbolo da operação desejada:")
leia (operador)
limpatela

se (operador="/") e (num2=0) entao
   escreval ("Não possivel dividir por zero")
senao


   escolha operador

   caso "+"
      escreval (num1, " +", num2, " =", num1+num2)

   caso "-"
      escreval (num1, " -", num2, " =", num1-num2)

   caso "/"
      escreval (num1, " /", num2, " =", num1/num2)

   caso "*"
      escreval (num1, " *", num2, " =", num1*num2)

   fimescolha
   fimse
fimalgoritmo
