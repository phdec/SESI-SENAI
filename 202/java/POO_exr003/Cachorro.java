public class Cachorro extends Animal {
    private String raca;
    private String porte;

    public Cachorro(){

    }

    public Cachorro(String nome, int idade, double peso, String raca, String porte){
        super(nome, idade, peso);
        this.raca = raca;
        this.porte = porte;
    }

    public String getRaca(){
        return raca;
    }

    public void setRaca(String raca){
        this.raca = raca;
    }

    public String getPorte(){
        return porte;
    }

    public void setPorte(String porte){
        this.porte = porte;
    }

    @Override
    public void cadastrar(String nome, int idade, double peso){
        setNome(nome);
        setIdade(idade);
        setPeso(peso);
    }

    public void cadastrar(String nome, int idade, double peso, String raca, String porte){
        cadastrar(nome, idade, peso);
        setRaca(raca);
        setPorte(porte);
    }

    @Override
    public void exibirDados(){
        System.out.println("""
        EXIBIR DADOS

        Nome: %s
        Idade: %d
        Peso: %.2f
        Raça: %s
        Porte: %s
        """.formatted(getNome(), getIdade(), getPeso(), getRaca(), getPorte()));
    }

    public String latir(){
        return "Au Au!";
    }

    public void vacinar(){
        System.out.println("""
        Vacinado!
        """);
    }
}