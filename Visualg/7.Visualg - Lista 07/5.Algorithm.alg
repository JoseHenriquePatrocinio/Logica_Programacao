algoritmo "Exercise 5"

// Autor : Jose H.

//Uma empresa de cosméticos comercializa cinco diferentes tipos de produtos
//e os armazena em uma estante de 40 x 40 posições. Em cada posição da estante,
// pode ficar armazenada apenas uma caixa com um desses produtos. Para facilitar
// sua identificação, os produtos foram codificados da seguinte forma:
//1.xampu
//2.condicionador
//3.hidratante
//4.tintura
//5.demaquilante
//0.vazio

//Nessa situação e considerando o desenvolvimento de um sistema para gerenciar
//a organização dos produtos na estante, estabeleceu-se a declaração de variáveis a seguir.

//Com base nessa declaração e considerando a codificação dos produtos exposta,
//apresente um algoritmo (Visualg ou Java) que:
// * Leia os códigos dos produtos e armazene-os na matriz Estante
// * Realize a contagem e imprima a quantidade de caixas de cada tipo de produto na estante.
//Insira comentários nos código explicando as linhas que apresentam as solicitações acima.


var
estante:vetor [1..5,1..5] de inteiro
produtos: vetor [0..5] de caractere
contador:vetor [0..5] de inteiro
i,j:inteiro

inicio

produtos[0]<-"Vazio"
produtos[1]<-"Xampu"
produtos[2]<-"Condicionador"
produtos[3]<-"Hidratante"
produtos[4]<-"Tintura"
produtos[5]<-"Demaquilante"


para i de 1 ate 5 passo 1 faca
   para j de 1 ate 5 passo 1 faca
      limpatela
      escreval("Lista de produtos:")
      escreval("")
      escreval("1.Xampu"        )
      escreval("2.Condicionador")
      escreval("3.Hidratante"   )
      escreval("4.Tintura"      )
      escreval("5.Demaquilante" )
      escreval("0.Vazio"        )
      escreval("")
      escreva("Digite o numero do produto que deseja armazenar:")

      leia(estante[i,j])
      enquanto (estante[i,j] > 5) ou (estante[i,j] < 0) faca
         escreval("Codigo invalido")
         escreva("Digite novamente:")
         leia(estante[i,j])
         fimenquanto
   fimpara
fimpara


      para i de 1 ate 5 passo 1 faca
         para j de 1 ate 5 passo 1 faca

            escolha (estante[i,j])

            caso 0
               contador[0]<-contador[0]+1

            caso 1
               contador[1]<-contador[1]+1

            caso 2
               contador[2]<-contador[2]+1

            caso 3
               contador[3]<-contador[3]+1

            caso 4
               contador[4]<-contador[4]+1

            caso 5
               contador[5]<-contador[5]+1

            fimescolha
         fimpara
      fimpara

      limpatela

      para i de 1 ate 5 passo 1 faca

         escreval("Total de caixas de ", produtos[i],":", contador[i])

      fimpara

      escreval("Total de pratileiras vazias:" , contador[0])





fimalgoritmo
