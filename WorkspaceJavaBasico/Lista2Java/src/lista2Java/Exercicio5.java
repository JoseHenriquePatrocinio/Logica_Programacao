package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio5 {
	/*
	 * Faça um programa que solicite alguns dados dos usuários que frequentam um
	 * clube. O programa deve solicitar a idade, se a pessoa é fumante ou não (1-
	 * SIM, 2- NÃO), seu salário líquido e há quanto tempo frequenta o clube (em
	 * meses). O usuário deverá digitar “encerrar” quando não tiver mais pessoas
	 * para registrar. Como dados de saída, o programa deve exibir: A média das
	 * idades das pessoas; A média salarial das pessoas; Quantos são fumantes e
	 * quantos não são fumantes; A porcentagem de pessoas que frequentam o clube há
	 * mais de 03 meses.
	 * 
	 */

	public static void main(String[] args) {
		int qtdMembros = 0, idade = 0, numFumantes = 0, tempoCasa = 0;
		int idadeTotal = 0, naoFumantes = 0, escolha = 0, maiorTempo = 0;
		double salario = 0, mediaIdade = 0, mediaSalario = 0;
		double salarioTotal = 0, mediaTempo = 0;

		String iniciar = "";
		do {

	


		

		//while (iniciar.equalsIgnoreCase("SIM")) {

			qtdMembros++;

			idade = Integer.parseInt(JOptionPane.showInputDialog("Digite a idade do membro"));
			idadeTotal = idade + idadeTotal;
			mediaIdade = idadeTotal / qtdMembros;

			do {
				escolha = Integer.parseInt(JOptionPane
						.showInputDialog("Selecione se o membro é fumante ou não" + "\n 1 - SIM" + "\n 2 - NÃO"));
				if (escolha == 2) {
					numFumantes++;
				} else if ((escolha != 2) && (escolha != 1)) {
					JOptionPane.showMessageDialog(null, "Digite uma opção válida");
				}
				naoFumantes = qtdMembros - numFumantes;

			} while ((escolha != 2) && (escolha != 1));

			salario = Double.parseDouble(JOptionPane.showInputDialog("Digite o salário liquido do membro"));
			while(salario<0) {
				JOptionPane.showMessageDialog(null, "Somente valores positivos","Erro",JOptionPane.WARNING_MESSAGE);
				salario = Double.parseDouble(JOptionPane.showInputDialog("Digite o salário liquido do membro"));
			}
			salarioTotal = salario + salarioTotal;
			mediaSalario = salarioTotal / qtdMembros;

			tempoCasa = Integer
					.parseInt(JOptionPane.showInputDialog("Digite (em meses) o tempo de ingresso do membro no clube"));
			if (tempoCasa >= 3) {
				maiorTempo++;
			}
			mediaTempo = maiorTempo * 100 / qtdMembros;

			iniciar = JOptionPane.showInputDialog(
					"Deseja registrar mais algum membro?" + "\n SIM para continuar" + "\n ENCERRAR para finalizar");

		}while (!iniciar.equalsIgnoreCase("ENCERRAR")); 

				
			
			

		

		JOptionPane.showMessageDialog(null,
				"Média de idade dos membros: " + String.format("%.2f",
						mediaIdade) + "\n Média salarial dos membros: " + "R$ " + String.format("%.2f",
								mediaSalario) + "\n Número de fumantes: " + numFumantes + "\n Número de não fumantes: "
										+ naoFumantes + "\n Relação de membros com mais de 3 meses de casa: "
										+ String.format("%.2f", mediaTempo) + "%", "Output",
								JOptionPane.INFORMATION_MESSAGE);

	}

}
