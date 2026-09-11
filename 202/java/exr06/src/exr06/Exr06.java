/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package exr06;
import javax.swing.JOptionPane;

/**
 *
 * @author pedro_hl_andrade
 */
public class Exr06 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        String nome = JOptionPane.showInputDialog("Digite o nome de jogador: ");
        int pontuacaoGeral = 0;
        for(int i = 0; i < 3; i++){
            pontuacaoGeral += Integer.parseInt(JOptionPane.showInputDialog("Digite a pontuação da " + (i+1) + "° partida: "));
        }
        
        if(pontuacaoGeral > 100){
            JOptionPane.showMessageDialog(null, "Jogador " + nome + " passou!"
                    + "\nPontuação geral: " + pontuacaoGeral);
            
        }else {
            JOptionPane.showMessageDialog(null, "Jogador " + nome + " não passou!"
            + "\nPontuação geral: " + pontuacaoGeral);
        }
    }
    
}
