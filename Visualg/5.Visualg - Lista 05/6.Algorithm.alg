algoritmo "Exercise 6"
// Fa�a um algoritmo que pe�a a idade, o sexo e o sal�rio de um grupo indeterminado de pessoas.
// O algoritmo deve encerrar quando o usu�rio informar �Fim� para a pergunta �Deseja continuar?�. Ao final, deve ser mostrado:
//a) a m�dia de sal�rio do grupo;
//b) a m�dia de todas as idades;
//c) a quantidade de mulheres com sal�rio at� R$1000,00.

var
iniciar:caractere
qtdPessoas:inteiro
idade:inteiro
genero:caractere
salario:real
somaSal:real
somaIdade:inteiro
ateMil:inteiro
mediaSal:real
mediaIdade:real
inicio

escreval ("Deseja adicionar algu�m?(S-SIM N-NAO)")
leia(iniciar)

enquanto (iniciar="S") faca
   qtdPessoas<-qtdPessoas+1

   escreval("Digite sua idade:")
   leia(idade)
   somaIdade<-somaIdade+idade
   escreval("Digite seu genero:(M-MASCULINO F-FEMININO)" )
   leia(genero)
   escreval("Digite seu sal�rio:")
   leia(salario)
   somaSal<-somaSal+salario
   se(genero="f") e (salario<=1000) entao
      ateMil<-ateMil+1
      limpatela
   fimse
   escreval ("Deseja continuar? (S-SIM F-NAO)")
   leia(iniciar)
   limpatela
fimenquanto
mediaSal<-somaSal/qtdPessoas
mediaIdade<-somaIdade/qtdPessoas
escreval ("M�dia de sal�rio do grupo:" ,mediaSal:2:2)
escreval ("M�dia de idades do grupo:" , mediaIdade)
escreval ("quantidade de mulheres com sal�rio at� R$1000,00:",ateMil)
fimalgoritmo
