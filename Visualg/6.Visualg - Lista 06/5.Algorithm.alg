algoritmo "Exercise 5"
// Um s�ndico de condom�nio deseja fazer um pequeno cadastro de todas
// as fam�lias que moram em seus 4 apartamentos. Para tanto, ele precisa
// inserir no software as seguintes informa��es: sobrenome da fam�lia,
//apartamento, quantidade de moradores e a renda da fam�lia. Ap�s inseridas
// as informa��es, o s�ndico deve poder pesquisar as fam�lias digitando o
//apartamento desejado, e o programa deve mostrar todas as informa��es desta fam�lia,
// e ainda a renda m�dia por morador. Ele deve poder realizar essa pesquisa quantas
// vezes quiser. Quando o s�ndico n�o quiser ver outra fam�lia, o programa deve ser encerrado.

var

sobrenome:vetor [1..4] de caractere
numApto:vetor [1..4] de inteiro
membros:vetor [1..4] de inteiro
renda:vetor [1..4] de real
contadora:inteiro
contador:inteiro
pesquisa:inteiro
media:real
validadora:logico

inicio

para contadora de 1 ate 4 passo 1 faca
   escreval ("Digite o sobrenome da familia:")
   leia(sobrenome[contadora])
   

   repita
      validadora<-falso
      escreval ("Digite o n�mero do apto:")
      leia(numApto[contadora])
      para contador de 1 ate 4 passo 1 faca
         se (contador<>contadora) e (numApto[contadora]=numApto[contador]) entao
            escreval("Apartamento j� cadastrado")
            validadora<-verdadeiro
         fimse
      fimpara
   ate(validadora=falso)
   

   escreval ("Quantidade de membros:")
   leia(membros[contadora])

   escreval ("Renda familiar:")
   leia(renda[contadora])
   limpatela
fimpara
limpatela
repita

   escreval ("Digite o numero do apto para obter informa��es da familia:")
   escreval("Familia " ,sobrenome[1],":" , numApto[1])
   escreval("Familia " ,sobrenome[2],":" , numApto[2])
   escreval("Familia " ,sobrenome[3],":" , numApto[3])
   escreval("Familia " ,sobrenome[4],":" , numApto[4])
   escreva ("Sua escolha:")
   leia(pesquisa)
   limpatela
   para contadora de 1 ate 4 passo 1 faca
      se (numApto[contadora] = pesquisa) entao
         media<-renda[contadora]/membros[contadora]
         escreval ("Sobrenome da familia: " , sobrenome[contadora] )
         escreval ("N�mero do apartamento: ", numApto[contadora]   )
         escreval ("Quantidade de membros: ", membros[contadora]   )
         escreval ("Renda familiar total: " , renda[contadora]:2:2 )
         escreval ("Renda m�dia por membro:" ,media:2:2            )
         escreval ("==============================================")
      fimse
   fimpara
   escreval("Deseja continuar a pesquisa?")
   escreval("Para Sim: 1")
   escreval("Para N�o: 2")
   escreva("Sua escolha:")
   leia(pesquisa)
   limpatela
ate (pesquisa<>1)

fimalgoritmo
