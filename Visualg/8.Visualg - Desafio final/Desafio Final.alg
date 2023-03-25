algoritmo "Jogo da Velha"

//Socorro!

var
tabuleiro:vetor [1..3,1..3] de caractere
i,j,contadora,rodada:inteiro
jogador:caractere
jogada:caractere
erro:logico
resultado:logico

inicio
//tabuleiro
para i de 1 ate 3 passo 1 faca
   escreval("")
   para j de 1 ate 3 passo 1 faca
      contadora<-contadora+1
      tabuleiro[i,j]<- numpcarac (contadora)
      escreva (" ",tabuleiro[i,j])
   fimpara
fimpara


//Verifica jogador
enquanto (resultado=falso) e (rodada<>9) faca
   rodada<-rodada+1
   se (rodada%2<>0) entao
      jogador<-"X"
   senao
      jogador<-"O"
   fimse



   //Jogadas
   repita
      escreval("")
      escreval(jogador," escolha uma posição:")
      leia(jogada)
      erro<-falso



      //Validação jogadas
      escolha (jogada)

         //Posição 1
      caso "1"
         se (tabuleiro[1,1]<>"X") e (tabuleiro[1,1]<>"O") entao
            tabuleiro[1,1]<-jogador
            erro<-falso
         senao
            limpatela
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

         //Posição 2
      caso "2"
         se(tabuleiro[1,2]<>"X") e (tabuleiro[1,2]<>"O") entao
            tabuleiro[1,2]<-jogador
            erro<-falso
         senao
            limpatela
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

         //Posição 3
      caso "3"
         se(tabuleiro[1,3]<>"X") e (tabuleiro[1,3]<>"O") entao
            tabuleiro[1,3]<-jogador
            erro<-falso
         senao
            limpatela
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

         //Posição 4
      caso "4"
         se(tabuleiro[2,1]<>"X") e (tabuleiro[2,1]<>"O") entao
            tabuleiro[2,1]<-jogador
            erro<-falso
         senao
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

         //Posição 5
      caso "5"
         se(tabuleiro[2,2]<>"X") e (tabuleiro[2,2]<>"O") entao
            tabuleiro[2,2]<-jogador
            erro<-falso
         senao
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

         //Posição 6
      caso "6"
         se(tabuleiro[2,3]<>"X") e (tabuleiro[2,3]<>"O") entao
            tabuleiro[2,3]<-jogador
            erro<-falso
         senao
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

         //Posição 7
      caso "7"
         se(tabuleiro[3,1]<>"X") e (tabuleiro[3,1]<>"O") entao
            tabuleiro[3,1]<-jogador
            erro<-falso
         senao
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara


         //Posição 8
      caso "8"
         se(tabuleiro[3,2]<>"X") e (tabuleiro[3,2]<>"O") entao
            tabuleiro[3,2]<-jogador
            erro<-falso
         senao
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

         //Posição 9
      caso "9"
         se(tabuleiro[3,3]<>"X") e (tabuleiro[3,3]<>"O") entao
            tabuleiro[3,3]<-jogador
            erro<-falso
         senao
            erro<-verdadeiro
         fimse

         //Tabuleiro
         limpatela
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

         //fora do tabuleiro
      outrocaso
         limpatela
         erro<-verdadeiro

         //Tabuleiro
         para i de 1 ate 3 passo 1 faca
            escreval("")
            para j de 1 ate 3 passo 1 faca
               escreva (" ",tabuleiro[i,j])
            fimpara
         fimpara

      fimescolha

      //Aviso de erro
      se(erro=verdadeiro) entao
         escreval("")
         escreva("Escolha uma posição válida")
      fimse

   ate(erro=falso)

   //Diagonal
   se (tabuleiro[1,1]=jogador) e (tabuleiro[2,2]=jogador) e (tabuleiro[3,3]=jogador) entao
      resultado<-verdadeiro
   senao
      se (tabuleiro[1,3]=jogador) e (tabuleiro[2,2]=jogador) e (tabuleiro[3,1]=jogador) entao
         resultado<-verdadeiro
      senao

         //Horizontal
         se (tabuleiro[1,1]=jogador) e (tabuleiro[1,2]=jogador) e (tabuleiro[1,3]=jogador) entao
            resultado<-verdadeiro
         senao
            se (tabuleiro[2,1]=jogador) e (tabuleiro[2,2]=jogador) e (tabuleiro[2,3]=jogador) entao
               resultado<-verdadeiro
            senao
               se (tabuleiro[3,1]=jogador) e (tabuleiro[3,2]=jogador) e (tabuleiro[3,3]=jogador) entao
                  resultado<-verdadeiro
               senao

                  //Vertical
                  se (tabuleiro[1,1]=jogador) e (tabuleiro[2,1]=jogador) e (tabuleiro[3,1]=jogador) entao
                     resultado<-verdadeiro
                  senao
                     se (tabuleiro[1,2]=jogador) e (tabuleiro[2,2]=jogador) e (tabuleiro[3,2]=jogador) entao
                        resultado<-verdadeiro
                     senao
                        se (tabuleiro[1,3]=jogador) e (tabuleiro[2,3]=jogador) e (tabuleiro[3,3]=jogador) entao
                           resultado<-verdadeiro
                        senao
                           resultado<-falso

                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

fimenquanto

//Saida de dados
se (resultado=verdadeiro) entao
   escreval("")
   escreval("")
   escreval("Jogador ",jogador," Venceu")
senao
   escreval("")
   escreval("")
   escreval("Pow deu velha...")
fimse

fimalgoritmo
