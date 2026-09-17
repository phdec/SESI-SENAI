/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package exr08;
import javax.swing.JOptionPane;

/**
 *
 * @author pedro_hl_andrade
 */
public class Exr08 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int qtdeFilmes = Integer.parseInt(JOptionPane.showInputDialog("Quantos filmes deseja avaliar? "));
        
        int qtdeExcelente = 0;
        int qtdeBom = 0;
        int qtdePrecisaMelhorar = 0;
        for(int i = 0; i < qtdeFilmes; i++){
            String nomeFilme = JOptionPane.showInputDialog(null, "Digite o nome do " + (i+1)+ "° filme: ");
            int ano = Integer.parseInt(JOptionPane.showInputDialog("Qual o ano de lançamento? "));
            double nota = Double.parseDouble(JOptionPane.showInputDialog("Digite uma nota para o filme? "));
            String classif;
            
            
            if(nota > 8){
                classif = "Excelente";
                qtdeExcelente++;
            }else if(nota >= 6){
                 classif = "Bom";
                 qtdeBom++;
            }else{
                classif = "Precisa melhorar";
                qtdePrecisaMelhorar++;
            }
            
            JOptionPane.showMessageDialog(null, "Nome do filme: " + nomeFilme
            + "\nAno de lançamento: " + ano
            + "\nNota do filme: " + nota
            + "\nClassificação: " + classif);
        }
        
        JOptionPane.showMessageDialog(null, "RESULTADO FINAL"
        + "\n\nTotal de filmes avaliados: " + qtdeFilmes
        + "\n\nFilmes excelentes: " + qtdeExcelente
        + "\nFilmes bons: " + qtdeBom
        + "\nFilmes que precisam melhorar: " + qtdePrecisaMelhorar);
    }
    
}
