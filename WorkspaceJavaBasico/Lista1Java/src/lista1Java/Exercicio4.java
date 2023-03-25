package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio4 {
	// Faça um algoritmo que mostre a soma de todos os valores pares entre o
	// intervalo de dois números digitados pelo usuário.

	public static void main(String[] args) {
		int i, intervalo1, intervalo2, somaPares = 0;

		intervalo1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o primeiro valor do intervalo"));
		intervalo2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o segundo valor do intervalo"));

		if (intervalo2 < intervalo1) {

			int intervalo3 = intervalo1;
			intervalo1 = intervalo2;
			intervalo2 = intervalo3;

		}
		
		for (i = intervalo1; i < intervalo2 + 1; i++) {
			if (i % 2 == 0) {
				somaPares = somaPares + i;
			}
		}
		JOptionPane.showMessageDialog(null, "A soma dos pares é " + somaPares);
	}

}
