package POO_exr002;

public abstract class Veiculo {
    private String marca;
    private int ano;
    
    public Veiculo(String marca, int ano){
        this.marca = marca;
        this.ano = ano;
    }

    public String getMarca(){
        return marca;
    }

    public void setMarca(String marca){
        this.marca = marca;
    }

    public String getAno(){
        return marca;
    }

    public void setAno(int ano){
        this.ano = ano;
    }

    public abstract void exibirDados();
}