package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio8 {

	/*
	 * Faça um programa que carregue os valores das vendas de uma loja no primeiro
	 * semestre do ano. Considere para tal uma matriz [6,4], sendo que são 06 meses
	 * e 04 semanas por mês. Ao final, mostre na tela: ● Total de vendas do semestre
	 * ● Total vendido em cada mês
	 */

	public static void main(String[] args) {
		double[][] matriz = new double[7][5];
		double[] somaMes = new double[7];
		int i, j = 0;
		double soma = 0;
		double somaTotal = 0;

		for (i = 1; i < 7; i++) {
			for (j = 1; j < 5; j++) {
				matriz[i][j] = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor de venda do " + i + "º mês na " + j + "º semana"));
				soma = soma + matriz[i][j];
			}
			somaMes[i] = soma;
			somaTotal = somaTotal + soma;
			soma = 0;
		}

		JOptionPane.showMessageDialog(null, "Total de vendas semestral: " + String.format("%.2f", somaTotal));

		for (i = 1; i < 7; i++) {
			JOptionPane.showMessageDialog(null, "Total de vendas do " + i + "º mês: " + String.format("%.2f", somaMes[i]));
		}

	}

}
