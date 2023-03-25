package introducaoJava;

//importando classe JOptionPane para usarmos os paines de di�logo
import javax.swing.JOptionPane;

public class Main {

	public static void main(String[] args) {

		int[] valores = new int[10];
		int maiorValor = 0;
		// receber e guardar os 10 n�meros
		for (int i = 0; i < 10; i++) {
			valores[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe o " + (i + 1) + "� valor: "));
			// Verifica qual o maior valor e se o valor � positivo

			while (valores[i] < 0) {
				JOptionPane.showMessageDialog(null, "Op��o inv�lida", "Erro", JOptionPane.WARNING_MESSAGE);
				valores[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe o " + (i + 1) + "� valor: "));
			}

			while (maiorValor < valores[i]) {
				maiorValor = valores[i];
			}

		}

		// Criando variav�l para armazenar se usu�rio deseja encerrar o programa
		String repetir;
		// in�cio da estrutura de repeti��o para o menu
		do {
			// solicitando op��o do menu
			int opcao = Integer.parseInt(JOptionPane.showInputDialog("O que voc� deseja ver?"
					+ "\n 1 - Todos os valores" + "\n 2 - Somente o primeiro valor" + "\n 3 - Somente o �ltimo valor"
					+ "\n 4 - Ver os valores pares" + "\n 5 - Somente o maior valor"));

			// Programa��o do menu
			switch (opcao) {
			// Mostrando todos os valores
			case 1:
				for (int i = 0; i < 10; i++) {
					JOptionPane.showMessageDialog(null, valores[i], "Valor " + (i + 1), JOptionPane.INFORMATION_MESSAGE);
				}
				break;
			// Mostrando somente o primeiro valor
			case 2:
				JOptionPane.showMessageDialog(null, valores[0], "Primeiro valor", JOptionPane.INFORMATION_MESSAGE);
				break;
			// Mostrando o �ltimo valor valor
			case 3:
				JOptionPane.showMessageDialog(null, valores[9], "�ltimo valor", JOptionPane.INFORMATION_MESSAGE);
				break;
			// Mostrando somente os valores pares
			case 4:
				String valoresPares = "";
				for (int i = 0; i < 10; i++) {
					if (valores[i] % 2 == 0) {
						if (valoresPares != "") {
							valoresPares += ", ";
						}
						valoresPares += valores[i];
					}
				}

				JOptionPane.showMessageDialog(null, valoresPares, "Valores Pares", JOptionPane.INFORMATION_MESSAGE);
				break;
			// caso a op��o seja inv�lida
			default:
				JOptionPane.showMessageDialog(null, "Op��o inv�lida", "Erro", JOptionPane.WARNING_MESSAGE);
				break;
			case 5:
				JOptionPane.showMessageDialog(null, maiorValor, "Maior valor", JOptionPane.INFORMATION_MESSAGE);
				break;
			}
			// solicitando se usu�rio deseja voltar ao menu
			repetir = JOptionPane.showInputDialog(
					"Deseja voltar ao menu?" + "\n Digite S para sim ou outro caractere para encerrar:");
			// fim da estrutura de repeti��o para o menu
		} while (repetir.equalsIgnoreCase("S"));

	}

}
