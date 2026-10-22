/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Classe;
import javax.swing.JOptionPane;

/**
 *
 * @author pedro_hl_andrade
 */
public class Classe1 {
    private String nome;
    private int idade;
    private String cpf;
    private float peso;
    private float altura;

    public Classe1(String nome, int idade, String cpf, float peso, float altura) {
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
        this.peso = peso;
        this.altura = altura;
    }

    public void exibirDados(){
        String mensagem = 
        " --- DADOS DO USUÁRIO ---\n" + 
        "\nNome: " + nome +
        "\nIdade: " + idade +
        "\nCPF: " + cpf +
        "\nPeso: " + peso +
        "\nAltura: " + altura;

        JOptionPane.showMessageDialog(null, mensagem, "Dados da pessoa", JOptionPane.INFORMATION_MESSAGE);
    }
    
    public static void main(String[] args){
        Classe1 classe1 = new Classe1("Pedro", 17, "031.520.123-12", 53.0f, 1.75f);
        classe1.exibirDados();
    }
}