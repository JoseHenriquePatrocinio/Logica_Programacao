package lista2Java;

import java.text.DecimalFormat;

import javax.swing.JOptionPane;

/*
 *  Faça um programa que receba as três notas de um aluno e pergunte ao professor
 *  qual média ele deseja calcular: aritmética ou ponderada. Se for a média ponderada, os pesos de cada nota devem ser informados.
 *  
 * 			Cada média deverá ser calculada por um método;
 * 			Os dois métodos devem receber como parâmetros as notas;
 * 			No caso do método da média ponderada, além das notas, 
 * 			o método deverá receber também os pesos, que devem ser previamente solicitados ao usuário;
 * 			Os dois métodos devem retornar a média;
 * 			Um método deve ser criado para receber a média final e mostrar se o aluno 
 * 			está aprovado ou reprovado, considerando que a média mínima para aprovação é 7.
 */

public class Exercicio2 {

	public static void main(String[] args) {

		double[] vetorNota = new double[3];
		int i = 0;

		for (i = 0; i < vetorNota.length; i++) {

			vetorNota[i] = Double.parseDouble(JOptionPane.showInputDialog("Digite a " + (i + 1) + "ª nota"));

			while (vetorNota[i] < 0 || vetorNota[i] > 10) {
				mostraErroNota();
				vetorNota[i] = Double.parseDouble(JOptionPane.showInputDialog("Digite a " + (i + 1) + "ª nota"));
			}

		}

		boolean loop = true;
		do {
			int escolha = Integer.parseInt(JOptionPane.showInputDialog(
					"Qual média você deseja calcular?" + "\n 1. Ponderada" + "\n 2. Aritmética" + "\n 3. Sair"));

			switch (escolha) {
			case 1:
				double ponderada = 0;
				double[] vetorPeso = new double[3];
				double somaPeso = 0;

				for (i = 0; i < vetorPeso.length; i++) {

					vetorPeso[i] = Double
							.parseDouble(JOptionPane.showInputDialog("Digite o peso da " + (i + 1) + "ª nota"));

					while (vetorPeso[i] <= 0 || vetorPeso[i] > 10) {
						mostraErroNota();
						vetorPeso[i] = Double
								.parseDouble(JOptionPane.showInputDialog("Digite a " + (i + 1) + "ª nota"));

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

				JOptionPane.showMessageDialog(null, "Selecione uma opção válida", "Erro", JOptionPane.WARNING_MESSAGE);

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
			JOptionPane.showMessageDialog(null, "Aprovado com média " + df.format(mediaFinal), "Resultado",
					JOptionPane.INFORMATION_MESSAGE);
		} else {
			JOptionPane.showMessageDialog(null, "Reprovado com média " + df.format(mediaFinal), "Resultado",
					JOptionPane.INFORMATION_MESSAGE);
		}

	}

	public static void mostraErroNota() {
		JOptionPane.showMessageDialog(null, "Digite um valor válido", "Aviso", JOptionPane.INFORMATION_MESSAGE);

	}
}
