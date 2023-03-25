package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio3 {

	/*
	 * Escreva um programa que leia um n�mero inteiro e apresente um menu para o
	 * usu�rio escolher: Verificar se o n�mero � m�ltiplo de algum outro n�mero
	 * (pedir ao usu�rio esse n�mero); Verificar se o n�mero � par; Verificar se o
	 * n�mero est� entre 0 e 1000; Sair Ap�s as entradas de dados, deve ser mostrado
	 * ao usu�rio o resultado da respectiva op��o escolhida, e novamente o menu.
	 * Para a op��o �4- Sair�, utilize System.exit(0);
	 * 
	 */

	public static void main(String[] args) {
		int stNum = 0;
		int opcao = 0;
		int ndNum = 0;

		stNum = Integer.parseInt(JOptionPane.showInputDialog("Digite um n�mero inteiro"));

		do {

			opcao = Integer.parseInt(JOptionPane.showInputDialog(
					"O que voc� deseja ver?" + "\n 1 - Verificar m�ltiplo " + "\n 2 - Verificar se � par"
							+ "\n 3 - Verificar se o n�mero est� entre 0 e 1000" + "\n 4 - Sair"));

			switch (opcao) {
			case 1:

				ndNum = Integer.parseInt(
						JOptionPane.showInputDialog("Digite o n�mero que deseja verificar se � m�ltiplo de " + stNum));
				if (stNum % ndNum == 0) {
					JOptionPane.showMessageDialog(null, ndNum + " � m�ltiplo de " + stNum);
				} else {
					JOptionPane.showMessageDialog(null, ndNum + " n�o � m�ltiplo de " + stNum);
				}
				break;

			case 2:

				if (stNum % 2 == 0) {
					JOptionPane.showMessageDialog(null, stNum + " � Par");
				} else {
					JOptionPane.showMessageDialog(null, stNum + " n�o � Par");
				}
				break;

			case 3:

				if ((stNum > 0) && (stNum <= 1000)) {
					JOptionPane.showMessageDialog(null, stNum + " est� entre 0 e 1000");
				} else {
					JOptionPane.showMessageDialog(null, stNum + " n�o est� entre 0 e 1000");
				}
				break;

			case 4:

				JOptionPane.showMessageDialog(null, "Saindo do programa...","Sair",JOptionPane.INFORMATION_MESSAGE);
				System.exit(0);
				break;

			default:

				JOptionPane.showMessageDialog(null, "Digite uma op��o v�lida");

				break;

			}
		} while (opcao != 4);
	}

}
