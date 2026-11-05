/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package poo_ex002;

import javax.swing.JOptionPane;

/**
 *
 * @author pedro_hl_andrade
 */
public class Aluno extends Pessoa {
    private String curso;

    public Aluno(String nome, int idade, String curso) {
        // Chama construtor da classe pai
        super(nome, idade);
        this.curso = curso;
    }

    @Override
    public void exibirDados() {
        // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody;
        JOptionPane.showMessageDialog(null, "DADOS DO ALUNO\n\n" +
                "Nome: " + getNome() +
                "\nIdade: " + getIdade() +
                "\nCurso: " + curso);
    }
    
    public String getCurso(){
        return curso;
    }
    
    public void setCurso(String curso){
        this.curso = curso;
    }
}