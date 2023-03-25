package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio6 {

	/*
	 * Crie uma calculadora que permita o cálculo de uma equação, sem limite de
	 * execuções definido, da seguinte maneira: 1. Peça o primeiro valor , 2. Peça o
	 * cálculo que deseja fazer (entre as 4 operações básicas), 3. Peça um segundo
	 * valor 4. Efetue o cálculo, 5. Peça se o usuário quer continuar calculando. Se
	 * ele responder que sim, volte para o passo 2 usando o resultado do cálculo da
	 * linha 4 como primeiro valor, e se disser que não, mostre o resultado final .
	 * Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2.
	 */

	public static void main(String[] args) {
		double stNum, ndNum = 0;
		boolean check = false;
		String symbol, option = "vazio";

		stNum = Integer.parseInt(JOptionPane.showInputDialog("Digite um número"));

		do {
			symbol = JOptionPane.showInputDialog("O que você deseja ver?" + "\n Digite os operadores básicos"
					+ "\n + para Adição" + "\n - para Subtração" + "\n * para Multiplicação" + "\n / para Divisão");
			if (!symbol.equals("+") && (!symbol.equals("-") && (!symbol.equals("*") && (!symbol.equals("/"))))) {
				JOptionPane.showMessageDialog(null, "Operação Inválida");
				check = false;
			} else {
				check = true;
			}
			if (check == true) {
				ndNum = Integer.parseInt(JOptionPane.showInputDialog("Digite um número"));
			}
			switch (symbol) {
			case "+":

				stNum = stNum + ndNum;
				break;
			case "-":
				stNum = stNum - ndNum;
				break;
			case "*":
				stNum = stNum * ndNum;
				break;
			case "/":
				if (ndNum == 0) {
					JOptionPane.showMessageDialog(null, "Não é possivel dividir por zero");
				} else {
					stNum = stNum / ndNum;
				}
				break;
			}
			option = JOptionPane.showInputDialog("Gostaria de continuar calculando?" + "\n SIM - S");
		} while (option.equalsIgnoreCase("S"));

		JOptionPane.showMessageDialog(null, String.format("%.2f", stNum));

	}

}
