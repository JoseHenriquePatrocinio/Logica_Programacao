programa
{
	//Uma concessionária pediu para que você crie uma solução para calcular o
	//valor final de salário de seus colaboradores. Por momento, eles farão isso
	//individualmente. Portanto, você não precisa se preocupar ainda em calcular
	//vários salários de uma só vez.
	
	funcao inicio()
	{

	cadeia nome
	inteiro qtdCarrosVendidos
	real totalVendido,comissao,salarioTotal
	
   	escreva("Digite o nome do vendedor: ")
   	leia(nome)
   	limpa()
   	
   	escreva("Digite a quantidade de carros vendidos pelo vendedor: ")
   	leia(qtdCarrosVendidos)
   	limpa()
   	
   	escreva("Digite o valor total vendido pela concessionária: ")
   	leia(totalVendido)
   	limpa()

   	comissao = (totalVendido * 0.05) + (qtdCarrosVendidos*50)
   	salarioTotal = 500 + comissao

	escreva("Nome do vendedor: ", nome)
   	escreva("\nValor total de comissão: R$ ", comissao)
   	escreva("\nSalário total do vendedor: R$ ", salarioTotal)
   	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 678; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */