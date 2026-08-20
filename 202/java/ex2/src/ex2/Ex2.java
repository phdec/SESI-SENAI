/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ex2;

import java.util.Scanner;

/**
 *
 * @author pedro_hl_andrade
 */
public class Ex2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner entrada = new Scanner(System.in);
        // Solicita o nome
        System.out.println("Nome: ");
        String nome = entrada.nextLine();
        // Solicita a idade
        System.out.println("Idade: ");
        String idade = entrada.nextInt();
    }
    
}
