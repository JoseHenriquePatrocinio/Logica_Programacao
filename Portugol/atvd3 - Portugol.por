programa
{
	//Vamos solicitar a compra e a revenda de um produto.
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{

	real valorCompra, valorVenda,arredondamento

	escreva("Digite o valor de compra do produto: R$")
	leia(valorCompra)
	limpa()

	enquanto(valorCompra<=0){

	escreva("Digite um valor válido")
	escreva("\nDigite o valor de compra do produto: R$")
	leia(valorCompra)
	limpa()
		
	}

	valorVenda = valorCompra + (valorCompra*0.35)
	arredondamento = mat.arredondar(valorVenda,2)

	escreva("Valor de venda recomendado: " + arredondamento)
	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */