programa
{
	//Agora vamos criar um programa que simula uma venda de uma loja para um cliente final.
	
	funcao inicio()
	{

	real valorCompra, valorParcela
	inteiro numParcelas

	
	escreva("Valor total da compra: ")
	leia(valorCompra)
	limpa()
	
	escreva("Quantidade de vezes que deseja parcelar: ")
	leia(numParcelas)
	limpa()

	se(numParcelas<=0){

		
	escreva("Sua compra foi de R$", valorCompra)
	escreva("\nVocê optou por não parcelar")

		
	}senao{

	valorParcela = valorCompra/numParcelas
	escreva("Sua compra foi de R$", valorCompra)
	escreva("\nVocê optou por parcelar em ", numParcelas, " vezes")
	escreva("\nSua parcela mensal será de: R$" , valorParcela) 
	}
	
	

	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */