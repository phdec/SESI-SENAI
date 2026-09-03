/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package exr05;
import javax.swing.JOptionPane;

/**
 *
 * @author pedro_hl_andrade
 */
public class Exr05 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        String nome = JOptionPane.showInputDialog("Digite o nome do motorista: ");
        String placa = JOptionPane.showInputDialog("Digite a placa do veículo: ");
        double velocidade = Double.parseDouble(JOptionPane.showInputDialog("Digite a velocidade registrada: "));
        boolean multa;
        
        if(velocidade > 60){
            JOptionPane.showMessageDialog(null, "O motorista foi multado!");
            multa = true;
        } else {
            JOptionPane.showMessageDialog(null, "O motorista NÃO foi multado!");
            multa = false;
        }
        
        JOptionPane.showMessageDialog(null, "Nome do motorista: " + nome
        + "\nPlaca do carro: " + placa
        + "\nVelocidade registrada: " + velocidade
        + "\nMultado: " + multa);
    }
    
}
