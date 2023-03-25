package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio6 {

	/*
	 * Uma empresa deseja saber alguns dados sobre suas vendas no passado. Faça um
	 * programa que armazene em um vetor o valor total das vendas de cada um dos 12
	 * meses do ano (que deverá ser informado pelo usuário) e mostre: O mês com a
	 * maior venda; O mês com a menor venda; A média das vendas do ano todo; A média
	 * das vendas dos meses pares; A média das vendas do 2º semestre.
	 * 
	 */

	public static void main(String[] args) {
		double[] valorMeses = new double[12];

		double maior = 0, menor = 0;
		int maiorMes = 0, menorMes = 0;
		int i = 0;
		double mediaAno = 0;
		double mediaSemestre = 0, mediaPares = 0;

		for (i = 0; i < 12; i++) {

			
			valorMeses[i] = Double
					.parseDouble(JOptionPane.showInputDialog("Digite o valor total de vendas do " + (i + 1) + "º mês"));
			while(valorMeses[i]<0) {
				JOptionPane.showMessageDialog(null, "Valor inválido","erro",JOptionPane.INFORMATION_MESSAGE);
				valorMeses[i] = Double
						.parseDouble(JOptionPane.showInputDialog("Digite o valor total de vendas do " + (i + 1) + "º mês"));
			}
			if (valorMeses[i] > maior) {
				maior = valorMeses[i];
				maiorMes = i + 1;
			}
			mediaAno = mediaAno + valorMeses[i] / 12;

			if (i % 2 == 0) {
				mediaPares = mediaPares + valorMeses[i] / 6;
			}
			if (i >= 6) {
				mediaSemestre = mediaSemestre + valorMeses[i] / 6;
			}

		}

		menor = valorMeses[0];
		for (i = 0; i < 12; i++) {
			if (valorMeses[i] <= menor) {
				menor = valorMeses[i];
				menorMes = i + 1;
			}
		}
		JOptionPane.showMessageDialog(null,
				"Mês com maior valor de venda: " + maiorMes + "º" + "\n Mês com menor valor de venda: " + menorMes + "º"
						+ "\n Média de vendas anual: " + "R$ " + String.format("%.2f", mediaAno)
						+ "\n Média de vendas do segundo semestre: " + "R$ " + String.format("%.2f", mediaSemestre)
						+ "\n Média de vendas do meses pares: " + "R$ " + String.format("%.2f", mediaPares),
				"OutPut", JOptionPane.INFORMATION_MESSAGE);

	}

}
