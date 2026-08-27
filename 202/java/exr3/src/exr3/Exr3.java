/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package exr3;

import java.util.Scanner;

/**
 *
 * @author pedro_hl_andrade
 */
public class Exr3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner teclado = new Scanner(System.in);
        
        System.out.println("Nome: ");
        String nome = teclado.nextLine();
        
        System.out.println("Idade: ");
        int idade = teclado.nextInt();
        
        System.out.println("Altura: ");
        float altura = teclado.nextFloat();
        
        System.out.println("Matriculado (true/false): ");
        boolean matriculado = teclado.nextBoolean();
        
        System.out.println(" --- DADOS INFORMADOS --- ");
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
        System.out.println("Altura: " + altura);
        System.out.println("Matriculado: " + matriculado);
        
        teclado.close();
        
        System.out.println("\n --- Conversões --- ");
        
        // String para int
        String textoIdade = "18";
        int idade1 = Integer.parseInt(textoIdade);
        System.out.println("Idade: " + idade1);
        
        // String para double
        
        String textoNota = "8.5";
        double nota = Double.parseDouble(textoNota);
        System.out.println("Nota: " + nota);
        
        String textoSalario = "1500,50";
        float salario = Float.parseFloat(textoSalario);
        System.out.println("Salario: " + salario);
        
        // Int para String
        
        int numero = 100;
        String textoNumero = String.valueOf(numero);
        System.out.println("Numero: " + textoNumero);
    }
    
}
