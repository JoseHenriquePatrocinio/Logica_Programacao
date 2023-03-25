package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio6 {

	/*
	 * Uma empresa deseja saber alguns dados sobre suas vendas no passado. Fa�a um
	 * programa que armazene em um vetor o valor total das vendas de cada um dos 12
	 * meses do ano (que dever� ser informado pelo usu�rio) e mostre: O m�s com a
	 * maior venda; O m�s com a menor venda; A m�dia das vendas do ano todo; A m�dia
	 * das vendas dos meses pares; A m�dia das vendas do 2� semestre.
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
					.parseDouble(JOptionPane.showInputDialog("Digite o valor total de vendas do " + (i + 1) + "� m�s"));
			while(valorMeses[i]<0) {
				JOptionPane.showMessageDialog(null, "Valor inv�lido","erro",JOptionPane.INFORMATION_MESSAGE);
				valorMeses[i] = Double
						.parseDouble(JOptionPane.showInputDialog("Digite o valor total de vendas do " + (i + 1) + "� m�s"));
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
				"M�s com maior valor de venda: " + maiorMes + "�" + "\n M�s com menor valor de venda: " + menorMes + "�"
						+ "\n M�dia de vendas anual: " + "R$ " + String.format("%.2f", mediaAno)
						+ "\n M�dia de vendas do segundo semestre: " + "R$ " + String.format("%.2f", mediaSemestre)
						+ "\n M�dia de vendas do meses pares: " + "R$ " + String.format("%.2f", mediaPares),
				"OutPut", JOptionPane.INFORMATION_MESSAGE);

	}

}
