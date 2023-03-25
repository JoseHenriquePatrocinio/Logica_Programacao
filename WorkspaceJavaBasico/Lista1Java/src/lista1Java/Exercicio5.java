package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio5 {

	/*
	 * Faça um algoritmo que peça ao usuário 10 números e mostre posteriormente
	 * quantos são pares e a soma deles, bem como quantos são ímpares e a soma
	 * deles.
	 */

	public static void main(String[] args) {
		int num = 0;
		int i = 0;
		int iPar = 0;
		int iImpar = 0;
		int somaPares = 0;
		int somaImpares = 0;

		for (i = 1; i < 11; i++) {
			num = Integer.parseInt(JOptionPane.showInputDialog("Digite o " + i + "º numero"));
			if (num % 2 == 0) {
				iPar = iPar + 1;
				somaPares = somaPares + num;
			} else {
				iImpar = iImpar + 1;
				somaImpares = somaImpares + num;

			}
		}
		JOptionPane.showMessageDialog(null, "Quantidade de pares: " + iPar + "\n Soma do pares: " + somaPares);
		JOptionPane.showMessageDialog(null, "Quantidade de impares:" + iImpar + "\n Soma dos impares:" + somaImpares);

	}

}
