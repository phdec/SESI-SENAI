package POO_exr002;

import javax.swing.JOptionPane;

public class Carro extends Veiculo{
    String modelo;
    int qtdPortas;

    public Carro(String marca, int ano, String modelo, int qtdPortas){
        super(marca, ano);
        this.modelo = modelo;
        this.qtdPortas = qtdPortas;
    }

    @Override
    public void exibirDados(){
        JOptionPane.showMessageDialog(null, "DADOS DO CARRO\n\n" +
            "Marca: " + getMarca() +
            "\nAno: " + getAno() +
            "\nModelo: " + modelo +
            "\nQuantidade de Portas: " + qtdPortas
        );
    }

    public String getModelo(){
        return modelo;
    }

    public void setModelo(String modelo){
        this.modelo = modelo;
    }

    public int getQtdPortas(){
        return qtdPortas;
    }

    public void setQtdPortas(int qtdPortas){
        this.qtdPortas = qtdPortas;
    }
}
