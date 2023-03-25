algoritmo "Exercicio 8"


var
genero:caractere
tipo:caractere
calca:inteiro
sueter:inteiro
vestido:inteiro
saia:inteiro

inicio

calca<-100
sueter<-90
vestido<-80
saia<-65

escreval("Qual roupa você quer? (M para masculino F para feminino)")
leia(genero)

se (genero = "M") entao
   escreval ("calca ou sueter?")
   leia(tipo)
   se (tipo="calca") entao
      escreval ("valor da calca:" , calca)
   senao
      se (tipo="sueter")entao
         escreval ("valor do sueter:" , sueter)
      senao
         se  (tipo<>"sueter") ou (tipo<>"calca")    entao
            escreval ("Digite um item válido")
         fimse
      fimse
   fimse
fimse

se (genero = "F") entao
   escreval ("vestido ou saia?")
   leia(tipo)
   se (tipo="vestido") entao
      escreval ("valor do vestido:" , vestido)
   senao
      se (tipo="saia")entao
         escreval ("valor da saia:" , saia)
      senao

         se (tipo<>"saia") ou (tipo<>"vestido") entao
            escreval ("Digite um item válido")

         fimse
      fimse
   fimse
fimse





fimalgoritmo
