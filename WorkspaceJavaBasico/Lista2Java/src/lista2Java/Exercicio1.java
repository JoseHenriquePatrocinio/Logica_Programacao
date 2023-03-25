package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio1 {
	/*
	 * Faça um programa que receba um vetor de valores e mostre a quantidade de
	 * valores negativos. Os valores e o tamanho do vetor devem ser informados pelo
	 * usuário.
	 */
	public static void main(String[] args) {
		int qtdPosicoes = 0;
		int i = 0;
		int totalNegativo = 0;

		qtdPosicoes = Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade de  posições do vetor"));

		while (qtdPosicoes < 0) {
			qtdPosicoes = Integer.parseInt(JOptionPane
					.showInputDialog("A quantidade de posições não pode ser negativo" + "\n Digite novamente"));
		}

		double vetor[] = new double[qtdPosicoes];

		for (i = 0; i < qtdPosicoes; i++) {
			vetor[i] = Integer.parseInt(JOptionPane.showInputDialog("Digite o " + (i+1) + "º valor da posição do vetor"));

			if (vetor[i] < 0) {
				totalNegativo++;

			}

		}
		JOptionPane.showMessageDialog(null, "Quantidade de valores negativos " + totalNegativo);

	}

}
