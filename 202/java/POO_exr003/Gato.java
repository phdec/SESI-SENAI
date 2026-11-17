public class Gato extends Animal {
    private String corPelagem;
    private boolean viveEmAmbienteInterno;

    public Gato(){

    }

    public Gato(String nome, int idade, double peso, String corPelagem, boolean viveEmAmbienteInterno){
        super(nome, idade, peso);
        this.corPelagem = corPelagem;
        this.viveEmAmbienteInterno = viveEmAmbienteInterno;
    }

    public String getCorPelagem(){
        return corPelagem;
    }

    public void setCorPelagem(String corPelagem){
        this.corPelagem = corPelagem;
    }

    public boolean isViveEmAmbienteInterno(){
        return viveEmAmbienteInterno;
    }

    public void setViveEmAmbienteInterno(boolean viveEmAmbienteInterno){
        this.viveEmAmbienteInterno = viveEmAmbienteInterno;
    }

        @Override
    public void cadastrar(String nome, int idade, double peso){
        setNome(nome);
        setIdade(idade);
        setPeso(peso);
    }

    public void cadastrar(String nome, int idade, double peso, String corPelagem, boolean viveEmAmbienteInterno){
        cadastrar(nome, idade, peso);
        setCorPelagem(corPelagem);
        setViveEmAmbienteInterno(viveEmAmbienteInterno);
    }

    @Override
    public void exibirDados(){
        System.out.println("""
        EXIBIR DADOS

        Nome: %s
        Idade: %d
        Peso: %.2f
        Cor da Pelagem: %s
        Vive em Ambiente Interno: %s
        """.formatted(getNome(), getIdade(), getPeso(), this.corPelagem, viveEmAmbienteInterno ? "Sim" : "Não"));
    }

    public String miar(){
        return "Miauu!";
    }

    public void vacinar(){
        System.out.println("""
        Vacinado!
        """);
    }
}