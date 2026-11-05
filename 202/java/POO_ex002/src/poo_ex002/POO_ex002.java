/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package poo_ex002;
import javax.swing.JOptionPane;

/**
 *
 * @author pedro_hl_andrade
 */
public class POO_ex002 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        // Criando Objetos
        // Primeiro Objeto
        Aluno aluno1 = new Aluno("peaga", 17, "Desenvolvimento de Sistemas");

        // Segundo Objeto
        Aluno aluno2 = new Aluno("Maria", 16, "Mecânica");
        
        aluno1.exibirDados();
        aluno2.exibirDados();

        // peaga.exibirDados();
        
        String nome = JOptionPane.showInputDialog(null, "Digite o nome do aluno: ");
        int idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a idade do aluno: "));
        String curso = JOptionPane.showInputDialog(null, "Digite o curso do aluno: ");
        
        Aluno aluno3 = new Aluno(nome, idade, curso);
        aluno3.exibirDados();
    }
    
}