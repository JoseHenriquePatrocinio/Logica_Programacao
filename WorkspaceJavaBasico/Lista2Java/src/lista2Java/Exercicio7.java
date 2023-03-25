package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio7 {
	/*
	 * um estudante do ensino m�dio gostaria de controlar melhor suas notas nas
	 * disciplinas exatas. Ele gostaria de poder enxergar suas notas dos 4 bimestres
	 * com exatamente duas casas decimais e em formato de matriz, como no exemplo a
	 * seguir: Al�m disso, o estudante gostaria de poder escolher algumas op��es de
	 * visualiza��o de acordo com o menu abaixo: Todas as notas de todas as
	 * disciplinas; Qual a maior nota e em qual disciplina foi; A m�dia das notas de
	 * alguma disciplina (solicitar qual); As notas de um dos bimestres (solicitar
	 * qual); Encerrar. Fa�a um programa que permita cadastrar as notas de acordo
	 * com o exemplo (considerando a ordem das disciplinas) e forne�a os dados
	 * supracitados. O menu deve ser exibido repetitivamente, at� que o usu�rio
	 * deseje encerrar o programa.
	 * 
	 */

	public static void main(String[] args) {
		double matriz[][] = new double[4][3];
		int i = 0, j = 0;
		int opcao = 0;
		boolean saida = false;

		String[] materia = new String[3];
		materia[0] = "Matem�tica";
		materia[1] = "F�sica";
		materia[2] = "Qu�mica";

		for (i = 0; i < matriz.length; i++) {
			for (j = 0; j < matriz[0].length; j++) {
				if (j == 0) {

					matriz[i][j] = Double.parseDouble(
							JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota de " + materia[j]));
					while ((matriz[i][j] > 10 || matriz[i][j] < 0)) {
						JOptionPane.showMessageDialog(null, "Digite uma nota v�lida");
						matriz[i][j] = Double.parseDouble(
								JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota de " + materia[j]));
					}

				} else if (j == 1) {
					matriz[i][j] = Double.parseDouble(
							JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota de " + materia[j]));
					while ((matriz[i][j] > 10 || matriz[i][j] < 0)) {
						JOptionPane.showMessageDialog(null, "Digite uma nota v�lida");
						matriz[i][j] = Double.parseDouble(
								JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota de " + materia[j]));
					}

				} else if (j == 2) {

					matriz[i][j] = Double.parseDouble(
							JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota de " + materia[j]));
				}
				while ((matriz[i][j] > 10 || matriz[i][j] < 0)) {
					JOptionPane.showMessageDialog(null, "Digite uma nota v�lida");
					matriz[i][j] = Double.parseDouble(
							JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota de " + materia[j]));
				}
			}
		}

		do {
			saida = false;
			opcao = Integer.parseInt(JOptionPane.showInputDialog(
					"Selecione a op��o desejado" + "\n 1 - Mostrar todas as notas de todas as disciplinas"
							+ "\n 2 - Mostrar a maior nota obtida " + "\n 3 - Verficar a m�dia de alguma disciplina"
							+ "\n 4 - Verificar as notas do bimestre de sua escolha" + "\n 5 - Encerrar"));

			// opcao=opcao+"a";

			switch (opcao) {
			case 1:

				String notas = "";
				for (i = 0; i < matriz.length; i++) {
					for (j = 0; j < matriz[0].length; j++) {
						notas = notas + String.format("%.2f", matriz[i][j]);
						notas = notas + "   ";

					}
					notas = notas + "\n";
				}
				JOptionPane.showMessageDialog(null, notas, "Todas as notas", JOptionPane.INFORMATION_MESSAGE);

				break;

			case 2:
				String maiorNota = "";
				String disciplina = "";
				double maior = 0;
				for (i = 0; i < matriz.length; i++) {
					for (j = 0; j < matriz[0].length; j++) {

						if (matriz[i][j] > maior) {
							maior = matriz[i][j];
							disciplina = materia[j];

						}
					}

				}
				maiorNota = maiorNota + String.format("%.2f", maior);
				maiorNota = maiorNota + " em ";
				maiorNota = maiorNota + disciplina;

				JOptionPane.showMessageDialog(null, maiorNota, "Maior Nota", JOptionPane.INFORMATION_MESSAGE);
				break;

			case 3:
				int olharMed = 0;
				double media = 0;

				olharMed = Integer.parseInt(JOptionPane.showInputDialog("Selecione qual mat�ria deseja ver a m�dia"
						+ "\n 1 - Matem�tica" + "\n 2 - F�sica" + "\n 3 - Qu�mica"));

				for (i = 0; i < matriz.length; i++) {
					for (j = 0; j < matriz[0].length; j++) {
						if (j == olharMed - 1) {
							media = media + matriz[i][j] / 4;

						}

					}
				}
				JOptionPane.showMessageDialog(null, String.format("%.2f", media), "M�dia",
						JOptionPane.INFORMATION_MESSAGE);
				break;

			case 4:
				String bimestre = "";
				int olharBim = 0;
				olharBim = Integer.parseInt(JOptionPane
						.showInputDialog("Selecione qual bimestre deseja ver as notas" + "\n 1 - Primeiro bimestre"
								+ "\n 2 - Segundo bimestre" + "\n 3 - Terceiro bimestre" + "\n 4 - Quarto bimestre"));

				for (i = 0; i < matriz.length; i++) {
					for (j = 0; j < matriz[0].length; j++) {
						if (i == olharBim - 1) {
							bimestre = bimestre + materia[j];
							bimestre = bimestre + ": ";
							bimestre = bimestre + String.format("%.2f", matriz[i][j]);
							bimestre = bimestre + "\n";

						}
					}
				}
				JOptionPane.showMessageDialog(null, bimestre, "Notas bimestre", JOptionPane.INFORMATION_MESSAGE);

				break;

			case 5:

				JOptionPane.showMessageDialog(null, "Saindo do programa...", "Sair", JOptionPane.INFORMATION_MESSAGE);
				saida = true;

				break;

			default:

				JOptionPane.showMessageDialog(null, "Selecione uma op��o v�lida", "Erro", JOptionPane.WARNING_MESSAGE);

			}
		} while (saida == false);
	}
}
