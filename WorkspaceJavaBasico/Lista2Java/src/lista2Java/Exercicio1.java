package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio1 {
	/*
	 * Fa�a um programa que receba um vetor de valores e mostre a quantidade de
	 * valores negativos. Os valores e o tamanho do vetor devem ser informados pelo
	 * usu�rio.
	 */
	public static void main(String[] args) {
		int qtdPosicoes = 0;
		int i = 0;
		int totalNegativo = 0;

		qtdPosicoes = Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade de  posi��es do vetor"));

		while (qtdPosicoes < 0) {
			qtdPosicoes = Integer.parseInt(JOptionPane
					.showInputDialog("A quantidade de posi��es n�o pode ser negativo" + "\n Digite novamente"));
		}

		double vetor[] = new double[qtdPosicoes];

		for (i = 0; i < qtdPosicoes; i++) {
			vetor[i] = Integer.parseInt(JOptionPane.showInputDialog("Digite o " + (i+1) + "� valor da posi��o do vetor"));

			if (vetor[i] < 0) {
				totalNegativo++;

			}

		}
		JOptionPane.showMessageDialog(null, "Quantidade de valores negativos " + totalNegativo);

	}

}
