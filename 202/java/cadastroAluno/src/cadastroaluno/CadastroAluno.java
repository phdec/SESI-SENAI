/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package cadastroaluno;

import java.util.Scanner;

/**
 *
 * @author pedro_hl_andrade
 */
public class CadastroAluno {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner scnr = new Scanner(System.in);
        
        System.out.println("Nome: ");
        String nome = scnr.nextLine();
        System.out.println("Idade: ");
        String idade = scnr.nextLine();
        System.out.println("Nota 1: ");
        String nota1txt = scnr.nextLine();
        System.out.println("Nota 2: ");
        String nota2txt = scnr.nextLine();
        System.out.println("Nota 3");
        String nota3txt = scnr.nextLine();
        
        double nota1 = Double.parseDouble(nota1txt);
        double nota2 = Double.parseDouble(nota2txt);
        double nota3 = Double.parseDouble(nota3txt);
        
        double soma = nota1 + nota2 + nota3;
        double media = soma / 3;
        
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
        System.out.println("Media" + media);
    }
    
}
