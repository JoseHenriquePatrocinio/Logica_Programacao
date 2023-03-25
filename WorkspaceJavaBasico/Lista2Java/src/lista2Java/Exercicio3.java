package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio3 {

	/*
	 * Escreva um programa que leia um número inteiro e apresente um menu para o
	 * usuário escolher: Verificar se o número é múltiplo de algum outro número
	 * (pedir ao usuário esse número); Verificar se o número é par; Verificar se o
	 * número está entre 0 e 1000; Sair Após as entradas de dados, deve ser mostrado
	 * ao usuário o resultado da respectiva opção escolhida, e novamente o menu.
	 * Para a opção “4- Sair”, utilize System.exit(0);
	 * 
	 */

	public static void main(String[] args) {
		int stNum = 0;
		int opcao = 0;
		int ndNum = 0;

		stNum = Integer.parseInt(JOptionPane.showInputDialog("Digite um número inteiro"));

		do {

			opcao = Integer.parseInt(JOptionPane.showInputDialog(
					"O que você deseja ver?" + "\n 1 - Verificar múltiplo " + "\n 2 - Verificar se é par"
							+ "\n 3 - Verificar se o número está entre 0 e 1000" + "\n 4 - Sair"));

			switch (opcao) {
			case 1:

				ndNum = Integer.parseInt(
						JOptionPane.showInputDialog("Digite o número que deseja verificar se é múltiplo de " + stNum));
				if (stNum % ndNum == 0) {
					JOptionPane.showMessageDialog(null, ndNum + " é múltiplo de " + stNum);
				} else {
					JOptionPane.showMessageDialog(null, ndNum + " não é múltiplo de " + stNum);
				}
				break;

			case 2:

				if (stNum % 2 == 0) {
					JOptionPane.showMessageDialog(null, stNum + " é Par");
				} else {
					JOptionPane.showMessageDialog(null, stNum + " não é Par");
				}
				break;

			case 3:

				if ((stNum > 0) && (stNum <= 1000)) {
					JOptionPane.showMessageDialog(null, stNum + " está entre 0 e 1000");
				} else {
					JOptionPane.showMessageDialog(null, stNum + " não está entre 0 e 1000");
				}
				break;

			case 4:

				JOptionPane.showMessageDialog(null, "Saindo do programa...","Sair",JOptionPane.INFORMATION_MESSAGE);
				System.exit(0);
				break;

			default:

				JOptionPane.showMessageDialog(null, "Digite uma opção válida");

				break;

			}
		} while (opcao != 4);
	}

}
