programa
{
	//Você está desenvolvendo uma solução para uma loja de roupas. Num primeiro
	//momento, eles só querem calcular o valor final de venda de um item a partir de
	//seu custo, incidindo comissão para o representante e impostos do governo
	
	funcao inicio()
	{

	real valorAcumulado,valorCusto,comissaoRepresentante,margemLucro,taxaGovernamental
	real valorComissao,valorMargem,valorTaxa,resultadoFinal

	escreva("Informe o valor de custo: ")
	leia(valorCusto)
	limpa()

	escreva("Informe a porcentagem de comissão que o representante receberá a partir do custo: ")
	leia(comissaoRepresentante)
	valorComissao = valorCusto * (comissaoRepresentante/100)
	limpa()

	valorAcumulado = valorCusto + valorComissao

	escreva("Informe a porcentagem de margem de lucro desejada a partir do valor acumulado entre custo e comissão: ")
	leia(margemLucro)
	valorMargem = valorAcumulado * (margemLucro/100)
	limpa()

	resultadoFinal = valorAcumulado + valorMargem

	escreva("Informe a porcentagem de impostos governamentais para o valor final acumulado de todos os itens anteriores: ")
	leia(taxaGovernamental)
	valorTaxa = resultadoFinal * (taxaGovernamental/100)
	limpa()
	
	resultadoFinal = resultadoFinal + valorTaxa
	
	escreva("comissao do representante: ",valorComissao)
	escreva("\nMargem de lucro: ",valorMargem)
	escreva("\nimposto governo: ",valorTaxa)
	escreva("\nvalor de venda: ",resultadoFinal)


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1173; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */