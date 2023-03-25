algoritmo "Exercise 6"
// Faça um algoritmo que peça a idade, o sexo e o salário de um grupo indeterminado de pessoas.
// O algoritmo deve encerrar quando o usuário informar “Fim” para a pergunta “Deseja continuar?”. Ao final, deve ser mostrado:
//a) a média de salário do grupo;
//b) a média de todas as idades;
//c) a quantidade de mulheres com salário até R$1000,00.

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

escreval ("Deseja adicionar alguém?(S-SIM N-NAO)")
leia(iniciar)

enquanto (iniciar="S") faca
   qtdPessoas<-qtdPessoas+1

   escreval("Digite sua idade:")
   leia(idade)
   somaIdade<-somaIdade+idade
   escreval("Digite seu genero:(M-MASCULINO F-FEMININO)" )
   leia(genero)
   escreval("Digite seu salário:")
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
escreval ("Média de salário do grupo:" ,mediaSal:2:2)
escreval ("Média de idades do grupo:" , mediaIdade)
escreval ("quantidade de mulheres com salário até R$1000,00:",ateMil)
fimalgoritmo
