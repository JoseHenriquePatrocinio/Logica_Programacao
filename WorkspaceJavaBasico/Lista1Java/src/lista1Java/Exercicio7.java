package lista1Java;

import java.util.Random;

import javax.swing.JOptionPane;

public class Exercicio7 {

	/*
	 * Fa�a uma solu��o que alimente um vetor com 10 valores inteiros e tamb�m que
	 * solicite ao usu�rio a entrada de dados de um valor inteiro qualquer. A
	 * solu��o dever� fazer uma busca do valor, informado pelo usu�rio, no vetor e
	 * imprima a posi��o em que este foi encontrado ou se n�o foi encontrado.
	 */

	public static void main(String[] args) {
		int[] conjunto = new int[10];
		int i, entrada = 0;
		boolean validadora = false;
		Random aleatorio = new Random();

		for (i = 0; i < 10; i++) {
			conjunto[i] = aleatorio.nextInt(10);
		}
		entrada = Integer.parseInt(JOptionPane.showInputDialog("Digite um valor inteiro:"));

		for (i = 0; i < 10; i++) {
			if (conjunto[i] == entrada) {
				JOptionPane.showMessageDialog(null, "Valor encontrado na " + (i+1) + "� posi��o");
				validadora = true;
			}
		}
		if (validadora == false) {
			JOptionPane.showMessageDialog(null, "Valor n�o encontrado");
		}
	}

}
