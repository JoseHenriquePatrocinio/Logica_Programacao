package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio4 {
	/*
	 * Sabe-se que o latão é constituído de 70% de cobre e 30% de zinco. Faça um
	 * programa que permita ao usuário informar uma quantidade de latão em quilos e
	 * forneça o total de cobre e zinco necessários para fabricar essa quantidade.
	 */

	public static void main(String[] args) {

		double kgLatao = 0;
		double cobre = 0.7;
		double zinco = 0.3;
		double qtdCobre = 0;
		double qtdZinco = 0;

		kgLatao = Double.parseDouble(JOptionPane.showInputDialog("Digite quantos kilos de latão deseja produzir"));
		qtdCobre = kgLatao * cobre;
		qtdZinco = kgLatao * zinco;
		JOptionPane.showMessageDialog(null, "Será necessário " + String.format("%.2f", qtdCobre) + "kg de cobre"
				+ "\n Será necessário " + String.format("%.2f", qtdZinco) + " kg de zinco");

	}

}
