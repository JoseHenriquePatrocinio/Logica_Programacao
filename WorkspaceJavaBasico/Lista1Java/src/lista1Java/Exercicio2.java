package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio2 {

	/*
	 * Desenvolva um programa que pergunte qual � a maioridade civil do seu
	 * �estado/pa�s� e que posteriormente o usu�rio informe sua idade. Como
	 * resultado, o programa deve informar se ele � ou n�o maior de idade.
	 */

	public static void main(String[] args) {
		int maiorIdade = 0;
		int idadeUser = 0;

		maiorIdade = Integer.parseInt(JOptionPane.showInputDialog("Qual a maiordade civil do seu pa�s?"));
		idadeUser = Integer.parseInt(JOptionPane.showInputDialog("Qual a sua idade?"));

		if (idadeUser >= maiorIdade) {
			JOptionPane.showMessageDialog(null, "Voc� � maior de idade");
		} else {
			JOptionPane.showMessageDialog(null, "Voc� ainda n�o atingiu a maioridade");
		}

	}

}
