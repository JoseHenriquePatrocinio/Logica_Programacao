package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio4 {
	/*
	 * Sabe-se que o lat�o � constitu�do de 70% de cobre e 30% de zinco. Fa�a um
	 * programa que permita ao usu�rio informar uma quantidade de lat�o em quilos e
	 * forne�a o total de cobre e zinco necess�rios para fabricar essa quantidade.
	 */

	public static void main(String[] args) {

		double kgLatao = 0;
		double cobre = 0.7;
		double zinco = 0.3;
		double qtdCobre = 0;
		double qtdZinco = 0;

		kgLatao = Double.parseDouble(JOptionPane.showInputDialog("Digite quantos kilos de lat�o deseja produzir"));
		qtdCobre = kgLatao * cobre;
		qtdZinco = kgLatao * zinco;
		JOptionPane.showMessageDialog(null, "Ser� necess�rio " + String.format("%.2f", qtdCobre) + "kg de cobre"
				+ "\n Ser� necess�rio " + String.format("%.2f", qtdZinco) + " kg de zinco");

	}

}
