programa
{
	//Desenvolver um algoritmo que terá por entrada dois valores. Você pode chamar essas variáveis de A e B.
	//A ideia é efetuar uma inversão dos valores contidos em cada uma das variáveis.
	
	funcao inicio()
	{
		real a,b,c
		

	escreva("Valor A: ")
	leia(a)

	escreva("Valor B: ")
	leia(b)
	limpa()
	
	c = a 
	a = b
	b = c

	escreva("valor A:",a)
	escreva("\nvalor B:",b)
	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */