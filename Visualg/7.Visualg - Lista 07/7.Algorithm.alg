algoritmo "Exercise 7"
// Fun��o : Jose H.
//Considerando o tabuleiro 4 x 4 ilustrado acima, contendo a indica��o da ordem das casas, construa um �nico algoritmo que:
// * calcule, armazene em uma estrutura e escreva em ordem a quantidade de gr�os de trigo em cada casa do tabuleiro;
// * calcule, armazene em uma vari�vel e escreva a quantidade total de gr�os de trigo presentes no tabuleiro.
//Utilize vetores para armazenar os valores de cada posi��o do tabuleiro.
//As quest�es A e B devem ser demonstradas no c�digo do programa.

var

tabuleiro:vetor [1..4,1..4] de real
i,j:inteiro
soma,total:real
cont : real
graos : real
inicio
soma<- 0.5

cont <- 0


para i de 1 ate 4 passo 1 faca
   para j de 1 ate 4 passo 1 faca
      //soma<-soma+soma
      //tabuleiro[i,j]<-soma
      //total<-total+tabuleiro[i,j]
      //escreval(tabuleiro[i,j])

      graos <- 2 ^ cont
      tabuleiro[i,j] <- graos
      total <- total + graos

      cont <- cont + 1
      escreval(tabuleiro[i,j])

   fimpara
   escreval("")
fimpara
escreval("")
escreval("Quantidade total de trigo: ", total)



fimalgoritmo
