package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio6 {

	/*
	 * Crie uma calculadora que permita o c�lculo de uma equa��o, sem limite de
	 * execu��es definido, da seguinte maneira: 1. Pe�a o primeiro valor , 2. Pe�a o
	 * c�lculo que deseja fazer (entre as 4 opera��es b�sicas), 3. Pe�a um segundo
	 * valor 4. Efetue o c�lculo, 5. Pe�a se o usu�rio quer continuar calculando. Se
	 * ele responder que sim, volte para o passo 2 usando o resultado do c�lculo da
	 * linha 4 como primeiro valor, e se disser que n�o, mostre o resultado final .
	 * Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2.
	 */

	public static void main(String[] args) {
		double stNum, ndNum = 0;
		boolean check = false;
		String symbol, option = "vazio";

		stNum = Integer.parseInt(JOptionPane.showInputDialog("Digite um n�mero"));

		do {
			symbol = JOptionPane.showInputDialog("O que voc� deseja ver?" + "\n Digite os operadores b�sicos"
					+ "\n + para Adi��o" + "\n - para Subtra��o" + "\n * para Multiplica��o" + "\n / para Divis�o");
			if (!symbol.equals("+") && (!symbol.equals("-") && (!symbol.equals("*") && (!symbol.equals("/"))))) {
				JOptionPane.showMessageDialog(null, "Opera��o Inv�lida");
				check = false;
			} else {
				check = true;
			}
			if (check == true) {
				ndNum = Integer.parseInt(JOptionPane.showInputDialog("Digite um n�mero"));
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
					JOptionPane.showMessageDialog(null, "N�o � possivel dividir por zero");
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
