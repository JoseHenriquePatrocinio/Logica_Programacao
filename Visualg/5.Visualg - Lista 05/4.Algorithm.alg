algoritmo "Exercise 4"
// Você foi contratado pelo JEC (Jaguatirica Esporte Clube) para programar
// a urna eletrônica da eleição da presidência do clube.
// O programa deve dar as seguintes opções de voto:
//15 Daniel
//75 Jean
//0 Voto em branco
//Outros valores Voto nulo

//Nas eleições do JEC, nem sempre todos os sócios comparecem para votar,
// então não tem como saber quantos votos serão contabilizados. Ao final
// de cada voto, o programa deve perguntar ao usuário se ainda existe mais
// uma pessoa para votar, se sim, o usuário deve informar “SIM”, se não,
//informar “NÃO”. Ao final, deverá ser mostrado:

//Quantidade de votos para cada candidato, em branco e nulo;
//E o resultado final da eleição, que pode ser:

//Eleição cancelada: Se não houverem votantes ou se a soma dos votos nulos e brancos exceder
// a soma dos votos válidos (um voto é considerado válido quando for um voto em algum candidato);

//Empate: se a condição acima for falsa e a soma dos votos para o
//Daniel seja igual a soma dos votos para a Jean;

//Candidato eleito: se as condições acima forem falsas e a soma dos
// votos para um dos candidatos seja maior que a do outro.


var
iniciar:caractere
vote:inteiro
stCandidato:inteiro
ndCandidato:inteiro
branco:inteiro
null:inteiro
validadora:logico
somaFalso:inteiro
somaVerd:inteiro
inicio
escreval ("============================")
escreval ("     Eleições JEC 2022")
escreval ("============================")

escreval ("Existe eleitores? sim ou nao")
leia(iniciar)
limpatela
se (iniciar="nao") entao
   validadora<-verdadeiro
fimse

enquanto (iniciar="sim") faca


   escreval ("15 - Daniel")
   escreval ("75 - Jean")
   escreval ("0  - Voto Branco")
   escreval ("Outro número - Voto Nulo")
   leia(vote)
   limpatela

   escolha (vote)

   caso 15
      stCandidato<-stCandidato+1

   caso 75
      ndCandidato<-ndCandidato+1

   caso 0
      branco<-branco+1

   outrocaso
      null<-null+1

   fimescolha

   escreval ("Mais alguem vai votar?")
   escreval ("SIM ou NAO")
   leia(iniciar)
   limpatela
fimenquanto
somaFalso<-branco+null
somaVerd<-stCandidato+ndCandidato

se (validadora=verdadeiro) entao
   escreval ("Eleição cancelada")
senao
   se (somaFalso>=somaVerd) entao
      escreval ("Eleição cancelada")
   senao
      se (stCandidato=ndCandidato) entao
         escreval ("Ocorreu um empate")
         escreval ("Votos Daniel:",stCandidato)
         escreval ("Votos Jean:",ndCandidato)
         escreval ("Votos Branco:",branco)
         escreval ("Votos Nulos:",null)
      senao
         escreval ("Candidato eleito")
         escreval ("Votos Daniel:",stCandidato)
         escreval ("Votos Jean:",ndCandidato)
         escreval ("Votos Branco:",branco)
         escreval ("Votos Nulos:",null)
      fimse
   fimse
fimse



fimalgoritmo
