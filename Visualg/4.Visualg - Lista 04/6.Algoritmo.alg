algoritmo "Exercicio 6"

//Voc� foi contratado para desenvolver um programa de adivinha��o.
//O programa deve gerar um n�mero aleat�rio entre 1 e 50
//(utilize a fun��o randi() no VisualG) e o usu�rio tem 5 chances
//para tentar adivinhar esse n�mero. Se o usu�rio adivinhar,
//deve ser mostrado em tela: �Voc� ganhou! Adivinhou o n�mero secreto X!�,
//ou, em caso de n�o acertar: �Infelizmente voc� perdeu!�.

var
contadora:inteiro
qtdNum:inteiro
numSecreto:inteiro
tentativa:inteiro

inicio
numSecreto<-randi (50)+1
escreval("adivinhe o numero secreto de 1 a 50, voc� tem 5 chances")

para contadora de 1 ate 5 passo 1 faca
   escreval ("sua",contadora,"� tentativa")
   leia(tentativa)
   se (tentativa=numSecreto) entao
      escreval("")
      escreval ("Voc� ganhou! Adivinhou o n�mero secreto",numSecreto)
      interrompa contadora
   fimse
fimpara

se(tentativa<>numSecreto) entao
   escreval("")
   escreval("Infelizmente voc� perdeu! o numero secreto era:",numSecreto)
fimse

fimalgoritmo
