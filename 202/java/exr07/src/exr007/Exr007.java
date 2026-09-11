/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package exr007;
import javax.swing.JOptionPane;

/**
 *
 * @author Aluno
 */
public class Exr007 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int qtdeVendas = Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade de vendas: "));
        int vendasAltas = 0;
        int vendasBaixas = 0;
        double total = 0;
        
        for(int i = 0; i < qtdeVendas; i++){
            String produto = JOptionPane.showInputDialog("Digite o nome do " + (i+1) + "° produto: ");
            double valor = Double.parseDouble(JOptionPane.showInputDialog("Digite o valor do " + (i+1) + "° produto: "));
            String resultado = "";
            if(valor >= 100){
                resultado = "Venda alta";
                vendasAltas++;
            }else{
                resultado = "Venda baixa";
                vendasBaixas++;
            }
            
            total += valor;
            
            JOptionPane.showMessageDialog(null, "Produto: " + produto
            + "\nValor: R$" + valor
            + "\nResultado: " + resultado);
        }
        
        JOptionPane.showMessageDialog(null, "--- Resumo das vendas ---\n"
                + "\nQuantidade de vendas: " + qtdeVendas
        + "\nQuantidade de vendas altas: " + vendasAltas
        + "\nQuantidade de vendas baixas: " + vendasBaixas
        + "\nTotal: R$" + total);
        
    }
    
}