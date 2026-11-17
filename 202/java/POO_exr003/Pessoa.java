public abstract class Pessoa {
    private String nome;
    private int idade;
    private String cpf;
    private String telefone;

    public Pessoa(){
        
    }

    public Pessoa(String nome, int idade, String cpf, String telefone){
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
        this.telefone = telefone;
    }

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public int getIdade(){
        return idade;
    }

    public void setIdade(int idade){
        this.idade = idade;
    }

    public String getCpf(){
        return cpf;
    }

    public void setCpf(String cpf){
        this.cpf = cpf;
    }

    public String getTelefone(){
        return telefone;
    }

    public void setTelefone(String telefone){
        this.telefone = telefone;
    }

    public abstract void cadastrar(String nome, int idade, String telefone);
    public abstract void exibirDados();
} 