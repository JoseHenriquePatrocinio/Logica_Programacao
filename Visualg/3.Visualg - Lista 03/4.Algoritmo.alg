algoritmo "Exercicio 4"

var

num1:real
num2:real
operador:caractere

inicio

escreval ("Digite o primeiro n�mero:")
leia (num1)
escreval ("Digite o segundo n�mero:")
leia (num2)
limpatela

escreval ("Escolha uma opera��o")
escreval ("=======================")
escreval ("soma          (+)")
escreval ("subtra��o     (-)")
escreval ("Divis�o       (/)")
escreval ("Multiplica��o (*)")
escreval("========================")
escreval ("Digite o simbolo da opera��o desejada:")
leia (operador)
limpatela

se (operador="/") e (num2=0) entao
   escreval ("N�o possivel dividir por zero")
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
