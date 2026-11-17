package POO_exr002;

import javax.swing.JOptionPane;

public class Main {
    public static void main(String[] args){
        Carro carro1 = new Carro("Peugeot", 2009, "Peugeot 207", 2);
        carro1.exibirDados();
        
        Carro carro2 = new Carro("Fiat", 2015, "Fiat Uno", 4);
        carro2.exibirDados();

        String marca = JOptionPane.showInputDialog("Digite a marca da motocicleta:");
        int ano = Integer.parseInt(JOptionPane.showInputDialog("Digite o ano da motocicleta:"));
        int cilindradas = Integer.parseInt(JOptionPane.showInputDialog("Digite a cilindradas da motocicleta:"));
        boolean partidaEletrica = JOptionPane.showConfirmDialog(null, "A motocicleta possui partida elétrica?", "Partida Elétrica", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION;

        Motocicleta moto1 = new Motocicleta(marca, ano, cilindradas, partidaEletrica);
        moto1.exibirDados();



        Carro carro3 = new Carro(JOptionPane.showInputDialog("Digite a marca do carro:"),
        Integer.parseInt(JOptionPane.showInputDialog("Digite o ano do carro:")),
        JOptionPane.showInputDialog("Digite o modelo do carro:"),
        Integer.parseInt(JOptionPane.showInputDialog("Digite a quantidade de portas do carro:")));
        carro3.exibirDados();
    }
}
