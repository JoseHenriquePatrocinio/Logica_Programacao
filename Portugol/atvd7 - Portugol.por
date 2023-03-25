programa
{
	//Você é responsável das soluções tecnológicas para o setor de Atendimento ao
	//Cliente de sua empresa. Então, seu chefe comentou que, para ele, é mais fácil
	//e perceptível saber quantos segundos um atendente dedicou dando suporte
	//para um cliente. Para solucionar esse problema, ele quer que você crie uma
	//solução que seja capaz de converter horas, minutos e segundos apenas para segundos.
	
	funcao inicio()
	{

	inteiro hora,minuto,segundo,totalSeg

	escreva("Informe quantas horas o cliente foi atendido: ")
	leia(hora)
	limpa()

	escreva("Informe quantos minutos o cliente foi atendido: ")
	leia(minuto)
	limpa()

	escreva("Informe quantos segundos o cliente foi atendido: ")
	leia(segundo)
	limpa()

	escreva(totalSeg = (hora*3600) + (minuto*60) + segundo)
	
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 729; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */