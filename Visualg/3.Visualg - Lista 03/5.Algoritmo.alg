algoritmo "Exercicio 5"

var

categoria:inteiro
subCategoria:inteiro

inicio
escreval ("Selecione uma categoria para assistir")
escreval ("=====================================")
escreval ("Filme        (1)")
escreval ("Série        (2)")
escreval ("Documentário (3)")
escreva  ("Sua escolha:")
leia (categoria)
limpatela


escolha (categoria)

caso 1

   escreval ("Selecione a opção desejada")
   escreval ("==========================")
   escreval ("Suspense (1)")
   escreval ("Ação     (2)")
   escreva ("Sua escolha:")
   leia (subCategoria)
   limpatela
   
   escolha (subCategoria)

   caso 1
      limpatela
      escreval ("=========================================")
      escreval ("Recomendação - Filme - Suspense - A órfã ")
      escreval ("=========================================")

   caso 2
      limpatela
      escreval ("============================================================")
      escreval ("Recomendação - Filme - Ação - Batman: O cavaleiro das trevas")
      escreval ("============================================================")

   outrocaso
      limpatela
      escreval("Inválido")

   fimescolha

caso 2

   escreval ("Selecione a opção desejada")
   escreval ("==========================")
   escreval ("Drama   (1)")
   escreval ("Comédia (2)")
   escreva ("Sua escolha:")
   leia (subCategoria)
   limpatela

   escolha (subCategoria)

   caso 1
      limpatela
      escreval ("======================================")
      escreval ("Recomendação - Série - Drama - Revenge")
      escreval ("======================================")

   caso 2
      limpatela
      escreval ("======================================================")
      escreval ("Recomendação - Série - Comédia - How I met your mother")
      escreval ("======================================================")

   outrocaso
      limpatela
      escreval("Inválido")

   fimescolha

caso 3

   escreval ("Selecione a opção desejada")
   escreval ("==========================")
   escreval ("Investigação (1)")
   escreval ("Ciência      (2)")
   escreva ("Sua escolha:")
   leia (subCategoria)
   limpatela

   escolha (subCategoria)

   caso 1
      limpatela
      escreval ("=====================================================")
      escreval ("Recomendação - Documentário - Investigação - Deep web")
      escreval ("=====================================================")

   caso 2
      limpatela
      escreval ("=============================================")
      escreval ("Recomendação - Documentário - Ciência - Terra")
      escreval ("=============================================")

   outrocaso
      limpatela
      escreval("Inválido")

   fimescolha

outrocaso
   escreval("Inválido")

fimescolha
fimalgoritmo
