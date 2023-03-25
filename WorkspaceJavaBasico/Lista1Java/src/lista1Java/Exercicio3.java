package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio3 {

	/*
	 * Faça um programa que peça ao usuário para informar 03 números e mostre o
	 * menor entre eles. Considere que o usuário não poderá informar números iguais.
	 */

	public static void main(String[] args) {
		int stNum, ndNum, rdNum = 0;

		stNum = Integer.parseInt(JOptionPane.showInputDialog("Digite o primeiro numero"));
		ndNum = Integer.parseInt(JOptionPane.showInputDialog("Digite o segundo numero"));
		rdNum = Integer.parseInt(JOptionPane.showInputDialog("Digite o terceiro numero"));

		if ((stNum == ndNum) || (stNum == rdNum) || (ndNum == rdNum)) {
			JOptionPane.showMessageDialog(null, "Os numero nao podem ser iguais");
		} else if ((stNum < ndNum) && (stNum < rdNum)) {
			JOptionPane.showMessageDialog(null, "Primeiro é o menor numero  " + stNum);
		} else if (ndNum < rdNum) {
			JOptionPane.showMessageDialog(null, "Segundo é o menor numero  " + ndNum);
		} else {
			JOptionPane.showMessageDialog(null, "Terceiro é o menor numero  " + rdNum);
		}
	}

}
