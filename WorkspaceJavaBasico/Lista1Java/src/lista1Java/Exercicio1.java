package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio1 {

	/*
	 * Faça um algoritmo que peça para o usuário inserir uma quantidade em horas,
	 * outra em minutos e mais uma em segundos e mostre quantos segundos esse
	 * horário contém.
	 */

	public static void main(String[] args) {

		int horas = 0;
		int minutos = 0;
		int segundos = 0;
		int total = 0;

		horas = Integer.parseInt(JOptionPane.showInputDialog("Digite o numero de horas:"));
		horas = horas * 3600;
		minutos = Integer.parseInt(JOptionPane.showInputDialog("Digite o numero de minutos"));
		minutos = minutos * 60;
		segundos = Integer.parseInt(JOptionPane.showInputDialog("Digite o numero de segundos"));

		total = horas + minutos + segundos;

		JOptionPane.showMessageDialog(null, "O total de segundo é: " + total);

	}

}
