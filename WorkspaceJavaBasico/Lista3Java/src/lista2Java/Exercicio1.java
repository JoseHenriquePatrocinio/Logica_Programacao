package lista2Java;

import javax.swing.JOptionPane;

/*
 * Faça um programa que solicite o ano de nascimento de um usuário e seja mostrada
 * a sua idade em 2021. Não é necessário considerar se o usuário já fez ou não aniversário.
 * Um método deve ser criado para solicitar o ano de nascimento ao usuário e retorná-lo,
 * e outro método deve ser criado para receber o ano de nascimento, calcular a idade atual e mostrá-la.
 */

public class Exercicio1 {

	public static void main(String[] args) {

		int ano = recebeAno();
		calculaIdade(ano);

	}

	public static int recebeAno() {

		int ano = Integer.parseInt(JOptionPane.showInputDialog("Digite seu ano de nascimento"));

		while (ano > 2021) {

			ano = Integer.parseInt(JOptionPane.showInputDialog("Digite seu ano de nascimento"));

		}

		return ano;
	}

	public static void calculaIdade(int ano) {

		int idade = 2021 - ano;
		JOptionPane.showMessageDialog(null, idade);

	}

	public static void erro() {
		JOptionPane.showMessageDialog(null, "Ano invalido");
	}

}
