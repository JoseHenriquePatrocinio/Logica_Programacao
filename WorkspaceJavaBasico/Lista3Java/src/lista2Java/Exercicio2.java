package lista2Java;

import java.text.DecimalFormat;

import javax.swing.JOptionPane;

/*
 *  Fa�a um programa que receba as tr�s notas de um aluno e pergunte ao professor
 *  qual m�dia ele deseja calcular: aritm�tica ou ponderada. Se for a m�dia ponderada, os pesos de cada nota devem ser informados.
 *  
 * 			Cada m�dia dever� ser calculada por um m�todo;
 * 			Os dois m�todos devem receber como par�metros as notas;
 * 			No caso do m�todo da m�dia ponderada, al�m das notas, 
 * 			o m�todo dever� receber tamb�m os pesos, que devem ser previamente solicitados ao usu�rio;
 * 			Os dois m�todos devem retornar a m�dia;
 * 			Um m�todo deve ser criado para receber a m�dia final e mostrar se o aluno 
 * 			est� aprovado ou reprovado, considerando que a m�dia m�nima para aprova��o � 7.
 */

public class Exercicio2 {

	public static void main(String[] args) {

		double[] vetorNota = new double[3];
		int i = 0;

		for (i = 0; i < vetorNota.length; i++) {

			vetorNota[i] = Double.parseDouble(JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota"));

			while (vetorNota[i] < 0 || vetorNota[i] > 10) {
				mostraErroNota();
				vetorNota[i] = Double.parseDouble(JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota"));
			}

		}

		boolean loop = true;
		do {
			int escolha = Integer.parseInt(JOptionPane.showInputDialog(
					"Qual m�dia voc� deseja calcular?" + "\n 1. Ponderada" + "\n 2. Aritm�tica" + "\n 3. Sair"));

			switch (escolha) {
			case 1:
				double ponderada = 0;
				double[] vetorPeso = new double[3];
				double somaPeso = 0;

				for (i = 0; i < vetorPeso.length; i++) {

					vetorPeso[i] = Double
							.parseDouble(JOptionPane.showInputDialog("Digite o peso da " + (i + 1) + "� nota"));

					while (vetorPeso[i] <= 0 || vetorPeso[i] > 10) {
						mostraErroNota();
						vetorPeso[i] = Double
								.parseDouble(JOptionPane.showInputDialog("Digite a " + (i + 1) + "� nota"));

						somaPeso = somaPeso + vetorPeso[i];

					}

				}
				ponderada = calculaPonderada(vetorNota, vetorPeso);
				mostraMediaFinal(ponderada);

				break;

			case 2:
				double aritmetica = 0;

				aritmetica = calculaAritmetica(vetorNota);

				mostraMediaFinal(aritmetica);

				break;

			case 3:
				JOptionPane.showMessageDialog(null, "Saindo do programa...", "Sair", JOptionPane.INFORMATION_MESSAGE);
				System.exit(0);
				break;

			default:

				JOptionPane.showMessageDialog(null, "Selecione uma op��o v�lida", "Erro", JOptionPane.WARNING_MESSAGE);

				break;
			}
		} while (loop == true);
	}

//LIMITE DO MAIN

	public static double calculaPonderada(double[] nota, double[] peso) {
		double multiplicar = 0;
		double ponderada = 0;
		double resultado = 0;
		double somaPeso = 0;

		for (int i = 0; i < 3; i++) {

			multiplicar = nota[i] * peso[i];
			resultado = resultado + multiplicar;
			somaPeso = somaPeso + peso[i];

		}
		ponderada = resultado / somaPeso;

		return ponderada;

	}

	public static double calculaAritmetica(double[] nota) {
		double somaNota = 0;
		double aritmetica = 0;
		for (int i = 0; i < 3; i++) {
			somaNota = somaNota + nota[i];
		}
		aritmetica = somaNota / 3;
		return aritmetica;
	}

	public static void mostraMediaFinal(double mediaFinal) {
		DecimalFormat df = new DecimalFormat("#.00");

		if (mediaFinal >= 7) {
			JOptionPane.showMessageDialog(null, "Aprovado com m�dia " + df.format(mediaFinal), "Resultado",
					JOptionPane.INFORMATION_MESSAGE);
		} else {
			JOptionPane.showMessageDialog(null, "Reprovado com m�dia " + df.format(mediaFinal), "Resultado",
					JOptionPane.INFORMATION_MESSAGE);
		}

	}

	public static void mostraErroNota() {
		JOptionPane.showMessageDialog(null, "Digite um valor v�lido", "Aviso", JOptionPane.INFORMATION_MESSAGE);

	}
}
