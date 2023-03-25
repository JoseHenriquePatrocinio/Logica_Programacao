algoritmo "Exercise 5"
// Um síndico de condomínio deseja fazer um pequeno cadastro de todas
// as famílias que moram em seus 4 apartamentos. Para tanto, ele precisa
// inserir no software as seguintes informações: sobrenome da família,
//apartamento, quantidade de moradores e a renda da família. Após inseridas
// as informações, o síndico deve poder pesquisar as famílias digitando o
//apartamento desejado, e o programa deve mostrar todas as informações desta família,
// e ainda a renda média por morador. Ele deve poder realizar essa pesquisa quantas
// vezes quiser. Quando o síndico não quiser ver outra família, o programa deve ser encerrado.

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
      escreval ("Digite o número do apto:")
      leia(numApto[contadora])
      para contador de 1 ate 4 passo 1 faca
         se (contador<>contadora) e (numApto[contadora]=numApto[contador]) entao
            escreval("Apartamento já cadastrado")
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

   escreval ("Digite o numero do apto para obter informações da familia:")
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
         escreval ("Número do apartamento: ", numApto[contadora]   )
         escreval ("Quantidade de membros: ", membros[contadora]   )
         escreval ("Renda familiar total: " , renda[contadora]:2:2 )
         escreval ("Renda média por membro:" ,media:2:2            )
         escreval ("==============================================")
      fimse
   fimpara
   escreval("Deseja continuar a pesquisa?")
   escreval("Para Sim: 1")
   escreval("Para Não: 2")
   escreva("Sua escolha:")
   leia(pesquisa)
   limpatela
ate (pesquisa<>1)

fimalgoritmo
