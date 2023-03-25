algoritmo "Exercicio 6"

//Você foi contratado para desenvolver um programa de adivinhação.
//O programa deve gerar um número aleatório entre 1 e 50
//(utilize a função randi() no VisualG) e o usuário tem 5 chances
//para tentar adivinhar esse número. Se o usuário adivinhar,
//deve ser mostrado em tela: “Você ganhou! Adivinhou o número secreto X!”,
//ou, em caso de não acertar: “Infelizmente você perdeu!”.

var
contadora:inteiro
qtdNum:inteiro
numSecreto:inteiro
tentativa:inteiro

inicio
numSecreto<-randi (50)+1
escreval("adivinhe o numero secreto de 1 a 50, você tem 5 chances")

para contadora de 1 ate 5 passo 1 faca
   escreval ("sua",contadora,"º tentativa")
   leia(tentativa)
   se (tentativa=numSecreto) entao
      escreval("")
      escreval ("Você ganhou! Adivinhou o número secreto",numSecreto)
      interrompa contadora
   fimse
fimpara

se(tentativa<>numSecreto) entao
   escreval("")
   escreval("Infelizmente você perdeu! o numero secreto era:",numSecreto)
fimse

fimalgoritmo
