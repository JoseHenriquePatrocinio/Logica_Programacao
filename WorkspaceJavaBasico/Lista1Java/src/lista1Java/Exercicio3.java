package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio3 {

	/*
	 * Fa�a um programa que pe�a ao usu�rio para informar 03 n�meros e mostre o
	 * menor entre eles. Considere que o usu�rio n�o poder� informar n�meros iguais.
	 */

	public static void main(String[] args) {
		int stNum, ndNum, rdNum = 0;

		stNum = Integer.parseInt(JOptionPane.showInputDialog("Digite o primeiro numero"));
		ndNum = Integer.parseInt(JOptionPane.showInputDialog("Digite o segundo numero"));
		rdNum = Integer.parseInt(JOptionPane.showInputDialog("Digite o terceiro numero"));

		if ((stNum == ndNum) || (stNum == rdNum) || (ndNum == rdNum)) {
			JOptionPane.showMessageDialog(null, "Os numero nao podem ser iguais");
		} else if ((stNum < ndNum) && (stNum < rdNum)) {
			JOptionPane.showMessageDialog(null, "Primeiro � o menor numero  " + stNum);
		} else if (ndNum < rdNum) {
			JOptionPane.showMessageDialog(null, "Segundo � o menor numero  " + ndNum);
		} else {
			JOptionPane.showMessageDialog(null, "Terceiro � o menor numero  " + rdNum);
		}
	}

}
