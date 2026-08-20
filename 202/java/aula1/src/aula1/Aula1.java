/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package aula1;

/**
 *
 * @author pedro_hl_andrade
 */
public class Aula1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        // Números inteiros
        byte idade = 20;
        short ano = 2026;
        int populacao = 215000000;
        long distancia = 384400000L;
        
        // Números decimais
        float altura = 1.75f;
        double salario = 2500.50;
        
         // Caractere
         char inicial = 'P';
         
         // Verdadeiro ou falso
         boolean estudante = true;
         
         // Texto
         String nome = "Pedro";
         
         // Saída dos dados
         System.out.println("===== DADOS DA PESSOA =====");
         System.out.println("Nome: " + nome);
         System.out.println("Inicial: " + inicial);
         System.out.println("Idade (byte): " + idade);
         System.out.println("Ano (short): " + ano);
         System.out.println("População (int): " + populacao);
         System.out.println("Distância (long): " + distancia);
         System.out.println("Altura (float): " + altura);
         System.out.println("Salario (double): " + salario);
         System.out.println("É estudante? " + estudante);
    }
    
}
