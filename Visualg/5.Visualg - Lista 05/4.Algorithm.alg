algoritmo "Exercise 4"
// Voc� foi contratado pelo JEC (Jaguatirica Esporte Clube) para programar
// a urna eletr�nica da elei��o da presid�ncia do clube.
// O programa deve dar as seguintes op��es de voto:
//15 Daniel
//75 Jean
//0 Voto em branco
//Outros valores Voto nulo

//Nas elei��es do JEC, nem sempre todos os s�cios comparecem para votar,
// ent�o n�o tem como saber quantos votos ser�o contabilizados. Ao final
// de cada voto, o programa deve perguntar ao usu�rio se ainda existe mais
// uma pessoa para votar, se sim, o usu�rio deve informar �SIM�, se n�o,
//informar �N�O�. Ao final, dever� ser mostrado:

//Quantidade de votos para cada candidato, em branco e nulo;
//E o resultado final da elei��o, que pode ser:

//Elei��o cancelada: Se n�o houverem votantes ou se a soma dos votos nulos e brancos exceder
// a soma dos votos v�lidos (um voto � considerado v�lido quando for um voto em algum candidato);

//Empate: se a condi��o acima for falsa e a soma dos votos para o
//Daniel seja igual a soma dos votos para a Jean;

//Candidato eleito: se as condi��es acima forem falsas e a soma dos
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
escreval ("     Elei��es JEC 2022")
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
   escreval ("Outro n�mero - Voto Nulo")
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
   escreval ("Elei��o cancelada")
senao
   se (somaFalso>=somaVerd) entao
      escreval ("Elei��o cancelada")
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
