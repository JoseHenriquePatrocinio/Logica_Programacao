package lista2Java;

import javax.swing.JOptionPane;

/*
 * Fa�a um programa que a partir do valor de uma compra, fa�a o c�lculo de um desconto para o usu�rio. 
 * O programa deve solicitar o valor total da compra por meio de um m�todo, que dever� retorn�-lo. 
 * Um m�todo deve ser criado para receber o valor da compra e mostrar o valor final com desconto, considerando:
 *  	At� R$100 - sem desconto, o valor permanece o mesmo
 *  	De R$100,01 a R$200 - desconto de 20%
 *  	Acima de R$200 - desconto de 30%
 */

public class Exercicio3 {

	public static void main(String[] args) {
		double valor = 0;

		valor = solicitaValor(valor);
		mostraMensagem(valor);
	}

// LIMITE DO MAIN

	public static double solicitaValor(double valor) {
		double desc = 0;

		valor = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor total de compras"));

		while (valor <= 0) {
			JOptionPane.showMessageDialog(null, "Digite um valor v�lido", "Erro", JOptionPane.INFORMATION_MESSAGE);
			valor = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor total de compras"));
		}

		if (valor > 100 && valor <= 200) {

			desc = valor * 0.2;
			valor = valor - desc;

		} else if (valor > 200) {

			desc = valor * 0.3;
			valor = valor - desc;
		}

		/*
		 * if(valor > 200) {
		 * 
		 * } else if (valor > 100) {
		 * 
		 * }
		 */

		return valor;
	}

	public static void mostraMensagem(double valor) {

		JOptionPane.showMessageDialog(null, "Valor da compra: R$ " + String.format("%.2f", valor), "output",
				JOptionPane.INFORMATION_MESSAGE);

	}

}
