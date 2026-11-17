package POO_exr002;

import javax.swing.JOptionPane;

public class Motocicleta extends Veiculo {
    private int cilindradas;
    private boolean partidaEletrica;

    public Motocicleta(String marca, int ano, int cilindradas, boolean partidaEletrica){
        super(marca, ano);
        this.cilindradas = cilindradas;
        this.partidaEletrica = partidaEletrica;
    }

    @Override
    public void exibirDados(){
        String partida = partidaEletrica ? "Sim" : "Não";
        JOptionPane.showMessageDialog(null, """
            DADOS DA MOTOCICLETA
            Marca: %s
            Ano: %d
            Cilindradas: %s
            Partida Elétrica: %s
            """.formatted(getMarca(), getAno(), this.cilindradas, partida)
        );
    }

    public int getCilindradas() {
        return cilindradas;
    }

    public void setCilindradas(int cilindradas) {
        this.cilindradas = cilindradas;
    }

    public boolean isPartidaEletrica() {
        return partidaEletrica;
    }

    public void setPartidaEletrica(boolean partidaEletrica) {
        this.partidaEletrica = partidaEletrica;
    }
}
