package desafio;

import javax.swing.JOptionPane;

public class JogoDaVelha {

	public static void main(String[] args) {
		String[][] tabuleiro = new String[3][3];
		String jogador = "", jogada = "", mostrar;
		int rodada = 0;
		boolean resultado = false, erro = false;

		montarTabuleiro(tabuleiro);

		while (resultado == false && rodada != 9) {
			rodada++;

			jogador = verificarJogador(rodada);

			do {
				mostrar = mostrarTabuleiro(tabuleiro);
				jogada = JOptionPane.showInputDialog(mostrar + "\n" + jogador + " escolha uma posição");
				erro = jogadasTabuleiro(jogada, tabuleiro, jogador);

			} while (erro == true);

			resultado = validarVitoria(tabuleiro, jogador);
		}
//LIMITE WHILE
		mostrarResultado(resultado, tabuleiro, jogador);

	}
//LIMITE DO MAIN

	public static void montarTabuleiro(String[][] tabuleiro) {
		int i = 0, j = 0, contador = 0;
		String receber = "";

		for (i = 0; i < 3; i++) {
			receber = receber + "\n";
			for (j = 0; j < 3; j++) {
				contador++;
				tabuleiro[i][j] = String.valueOf(contador);
				receber = receber + "      " + tabuleiro[i][j];

			}
		}

	}

	public static String mostrarTabuleiro(String[][] tabuleiro) {
		int i = 0, j = 0;
		String mostrar = "";

		for (i = 0; i < 3; i++) {
			mostrar = mostrar + "\n";
			for (j = 0; j < 3; j++) {
				mostrar = mostrar + "      " + tabuleiro[i][j];
			}
		}
		// JOptionPane.showMessageDialog(null, receber, "Tabuleiro",
		// JOptionPane.PLAIN_MESSAGE);

		return mostrar;
	}

	public static String verificarJogador(int rodada) {
		String jogador = "";

		if (rodada % 2 != 0) {
			jogador = "X";

		} else {
			jogador = "O";
		}

		return jogador;
	}

	public static boolean jogadasTabuleiro(String jogada, String[][] tabuleiro, String jogador) {
		boolean erro = false;

		switch (jogada) {

		case "1":

			if ((tabuleiro[0][0] != "X" && tabuleiro[0][0] != "O")) {
				tabuleiro[0][0] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		case "2":

			if ((tabuleiro[0][1] != "X" && tabuleiro[0][1] != "O")) {
				tabuleiro[0][1] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		case "3":

			if ((tabuleiro[0][2] != "X" && tabuleiro[0][2] != "O")) {
				tabuleiro[0][2] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		case "4":

			if ((tabuleiro[1][0] != "X" && tabuleiro[1][0] != "O")) {
				tabuleiro[1][0] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		case "5":

			if ((tabuleiro[1][1] != "X" && tabuleiro[1][1] != "O")) {
				tabuleiro[1][1] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		case "6":

			if ((tabuleiro[1][2] != "X" && tabuleiro[1][2] != "O")) {
				tabuleiro[1][2] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		case "7":

			if ((tabuleiro[2][0] != "X" && tabuleiro[2][0] != "O")) {
				tabuleiro[2][0] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		case "8":

			if ((tabuleiro[2][1] != "X" && tabuleiro[2][1] != "O")) {
				tabuleiro[2][1] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		case "9":

			if ((tabuleiro[2][2] != "X" && tabuleiro[2][2] != "O")) {
				tabuleiro[2][2] = jogador;
				erro = false;
			} else {
				erro = true;
			}
			break;

		default:
			erro = true;
			JOptionPane.showMessageDialog(null, "Posição não encontrada ", "Jogada inválida",
					JOptionPane.ERROR_MESSAGE);
		}

		return erro;
	}

	public static boolean validarVitoria(String[][] tabuleiro, String jogador) {
		boolean resultado = false;

		// DIAGONAL
		if ((tabuleiro[0][0] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][2] == jogador)) {
			resultado = true;

		} else if ((tabuleiro[0][2] == jogador && tabuleiro[1][1] == jogador && tabuleiro[2][0] == jogador)) {
			resultado = true;
		}
       // VERTICAL E HORIZONTAL
		for (int i = 0; i <= 2; i++) {

			if (tabuleiro[i][0] == jogador && tabuleiro[i][1] == jogador && tabuleiro[i][2] == jogador) {

				resultado = true;

			} else if (tabuleiro[0][i] == jogador && tabuleiro[1][i] == jogador && tabuleiro[2][i] == jogador) {
				resultado = true;
			}

		}

		return resultado;

	}

	public static void mostrarResultado(boolean resultado, String[][] tabuleiro, String jogador) {
		String mostrar = "";
		mostrar = mostrarTabuleiro(tabuleiro);
		if (resultado == true) {

			JOptionPane.showMessageDialog(null, mostrar + "\n Jogador " + jogador + " venceu", "Vitória",
					JOptionPane.PLAIN_MESSAGE);

		} else if (resultado == false) {

			JOptionPane.showMessageDialog(null, mostrar + "\n Pow deu velha... ", "Empate", JOptionPane.PLAIN_MESSAGE);

		}

	}

}
