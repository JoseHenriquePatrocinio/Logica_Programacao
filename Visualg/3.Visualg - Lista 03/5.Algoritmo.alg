algoritmo "Exercicio 5"

var

categoria:inteiro
subCategoria:inteiro

inicio
escreval ("Selecione uma categoria para assistir")
escreval ("=====================================")
escreval ("Filme        (1)")
escreval ("S�rie        (2)")
escreval ("Document�rio (3)")
escreva  ("Sua escolha:")
leia (categoria)
limpatela


escolha (categoria)

caso 1

   escreval ("Selecione a op��o desejada")
   escreval ("==========================")
   escreval ("Suspense (1)")
   escreval ("A��o     (2)")
   escreva ("Sua escolha:")
   leia (subCategoria)
   limpatela
   
   escolha (subCategoria)

   caso 1
      limpatela
      escreval ("=========================================")
      escreval ("Recomenda��o - Filme - Suspense - A �rf� ")
      escreval ("=========================================")

   caso 2
      limpatela
      escreval ("============================================================")
      escreval ("Recomenda��o - Filme - A��o - Batman: O cavaleiro das trevas")
      escreval ("============================================================")

   outrocaso
      limpatela
      escreval("Inv�lido")

   fimescolha

caso 2

   escreval ("Selecione a op��o desejada")
   escreval ("==========================")
   escreval ("Drama   (1)")
   escreval ("Com�dia (2)")
   escreva ("Sua escolha:")
   leia (subCategoria)
   limpatela

   escolha (subCategoria)

   caso 1
      limpatela
      escreval ("======================================")
      escreval ("Recomenda��o - S�rie - Drama - Revenge")
      escreval ("======================================")

   caso 2
      limpatela
      escreval ("======================================================")
      escreval ("Recomenda��o - S�rie - Com�dia - How I met your mother")
      escreval ("======================================================")

   outrocaso
      limpatela
      escreval("Inv�lido")

   fimescolha

caso 3

   escreval ("Selecione a op��o desejada")
   escreval ("==========================")
   escreval ("Investiga��o (1)")
   escreval ("Ci�ncia      (2)")
   escreva ("Sua escolha:")
   leia (subCategoria)
   limpatela

   escolha (subCategoria)

   caso 1
      limpatela
      escreval ("=====================================================")
      escreval ("Recomenda��o - Document�rio - Investiga��o - Deep web")
      escreval ("=====================================================")

   caso 2
      limpatela
      escreval ("=============================================")
      escreval ("Recomenda��o - Document�rio - Ci�ncia - Terra")
      escreval ("=============================================")

   outrocaso
      limpatela
      escreval("Inv�lido")

   fimescolha

outrocaso
   escreval("Inv�lido")

fimescolha
fimalgoritmo
