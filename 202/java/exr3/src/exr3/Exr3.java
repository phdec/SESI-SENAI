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
    }
    
}
