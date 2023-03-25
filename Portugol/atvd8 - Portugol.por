programa
{ 
	//Faça um Programa que pergunte quanto você ganha por hora e o número de
	//horas trabalhadas no mês.
	
	funcao inicio()
	{
		real valorHora, horasTrabalhadas, salarioBruto, impostoRenda, inss, sindicato, salarioLiquido

	escreva ("Digite o valor que você ganha por hora:")
	leia (valorHora)
	limpa()
	
	escreva ("Digite o número de horas trabalhadas no mês:")
	leia (horasTrabalhadas)
	limpa()

	salarioBruto = valorHora * horasTrabalhadas
	impostoRenda = salarioBruto * 0.11
	inss = salarioBruto * 0.08
	sindicato = salarioBruto * 0.05
	salarioLiquido = salarioBruto - impostoRenda - inss - sindicato

	escreva("Salário Bruto: R$", salarioBruto)
	escreva("\nImposto de Renda (11%): R$", impostoRenda)
	escreva("\nINSS (8%): R$", inss)
	escreva("\nSindicato (5%): R$", sindicato)
	escreva("\nSalário Líquido: R$", salarioLiquido)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 91; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */