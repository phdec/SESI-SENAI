/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package exr3_joptionpane;
import javax.swing.JOptionPane;

/**
 *
 * @author pedro_hl_andrade
 */
public class Exr3_JOptionPane {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        String nome = JOptionPane.showInputDialog("Digite seu nome: ");
        int idade = Integer.parseInt(JOptionPane.showInputDialog("Digite sua idade: "));
        float nota1 = Float.parseFloat(JOptionPane.showInputDialog("Digite a nota 1: "));
        float nota2 = Float.parseFloat(JOptionPane.showInputDialog("Digite a nota 2: "));
        float nota3 = Float.parseFloat(JOptionPane.showInputDialog("Digite a nota 3: "));
        
        double soma = nota1 + nota2 + nota3;
        double media = soma / 3;
        
        int resposta = JOptionPane.showConfirmDialog(null, "Você deseja ver a saída?",
                "Confirmação",
                JOptionPane.YES_NO_OPTION);
        
        if(resposta == JOptionPane.YES_OPTION) {
            JOptionPane.showMessageDialog(null, "Nome: " + nome);
            JOptionPane.showMessageDialog(null, "Idade: " + idade);
            JOptionPane.showMessageDialog(null, "Nota 1: " + nota1);
            JOptionPane.showMessageDialog(null, "Nota 2: " + nota2);
            JOptionPane.showMessageDialog(null, "Nota 3: " + nota3);
            JOptionPane.showMessageDialog(null, "Soma: " + soma);
            JOptionPane.showMessageDialog(null, "Média: " + media);
        } else {
            JOptionPane.showMessageDialog(null, "Você escolheu não!");
        }
    }
    
}
