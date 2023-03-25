package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio2 {

	/*
	 * Desenvolva um programa que pergunte qual é a maioridade civil do seu
	 * “estado/país” e que posteriormente o usuário informe sua idade. Como
	 * resultado, o programa deve informar se ele é ou não maior de idade.
	 */

	public static void main(String[] args) {
		int maiorIdade = 0;
		int idadeUser = 0;

		maiorIdade = Integer.parseInt(JOptionPane.showInputDialog("Qual a maiordade civil do seu país?"));
		idadeUser = Integer.parseInt(JOptionPane.showInputDialog("Qual a sua idade?"));

		if (idadeUser >= maiorIdade) {
			JOptionPane.showMessageDialog(null, "Você é maior de idade");
		} else {
			JOptionPane.showMessageDialog(null, "Você ainda não atingiu a maioridade");
		}

	}

}
