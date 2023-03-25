package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio2 {

	/*
	 * Escreva um programa que receba quatro notas do aluno e as insira em um vetor.
	 * Depois, calcule a média aritmética entre as quatro notas e mostre o
	 * "conceito" do aluno conforme as instruções: 9.0 ou maior = Conceito A entre
	 * 8.0 e 8.9 = Conceito B entre 7.0 e 7.9 = Conceito C menor que 7.0 = Conceito
	 * D
	 *
	 */

	public static void main(String[] args) {
		double notas[] = new double[4];
		double media = 0;
		int i = 0;

		for (i = 0; i < 4; i++) {
			notas[i] = Double.parseDouble(JOptionPane.showInputDialog("Digite a " + (i+1) + "ª nota"));
			while ((notas[i] < 0) || (notas[i] > 10)) {
				notas[i] = Double.parseDouble(JOptionPane.showInputDialog("Digite novamente a " + (i+1) + "ª nota"));
			}
			media = media + notas[i] / 4;
		}
		if (media >= 9) {
			JOptionPane.showMessageDialog(null, "Conceito A");
		} else if (media >= 8) {
			JOptionPane.showMessageDialog(null, "Conceito B");
		} else if (media >= 7) {
			JOptionPane.showMessageDialog(null, "Conceito C");
		} else {
			JOptionPane.showMessageDialog(null, "Conceito D");
		}
	}

}
