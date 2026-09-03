/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package exr04_joptionpane;
import javax.swing.JOptionPane;

/**
 *
 * @author pedro_hl_andrade
 */
public class Exr04_JOptionPane {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        JOptionPane.showMessageDialog(null, "Olá! Seja bem-vindo!");
        
        String nome = JOptionPane.showInputDialog("Digite seu nome: ");
        
        int idade = Integer.parseInt(JOptionPane.showInputDialog("Digite sua idade: ") );
        
        // abre um diálogo com opções de SIM e NÃO
        
       int resposta = JOptionPane.showConfirmDialog(
        null,
        "Você deseja continuar?", // Pergunta apresentada ao usuário
        "Confirmação", // Título da caixa de diálogo
        JOptionPane.YES_NO_OPTION // Define que serão exibidos os botões SIM e NÃO
        );
       
       if (resposta == JOptionPane.YES_OPTION) {
        JOptionPane.showMessageDialog(null, "Você escolheu SIM!");
       } else {
           JOptionPane.showMessageDialog(null, "Você escolheu não!");
       }
}
}
