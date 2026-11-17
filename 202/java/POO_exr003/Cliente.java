public class Cliente extends Pessoa {
    private String codigoCliente;
    private String endereco;

    public Cliente(){

    }

    public Cliente(String nome, int idade, String cpf, String telefone, String codigoCliente, String endereco){
        super(nome, idade, cpf, telefone);
        this.codigoCliente = codigoCliente;
        this.endereco = endereco;
    }

    public String getCodigoCliente(){
        return codigoCliente;
    }

    public void setCodigoCliente(String codigoCliente){
        this.codigoCliente = codigoCliente;
    }

    public String getEndereco(){
        return codigoCliente;
    }

    public void setEndereco(String endereco){
        this.endereco = endereco;
    }

        @Override
    public void cadastrar(String nome, int idade, String telefone){
        setNome(nome);
        setIdade(idade);
        setTelefone(telefone);
    }

    public void cadastrar(String nome, int idade, String cpf, String telefone, String codigoCliente, String endereco){
        setNome(nome);
        setIdade(idade);
        setCpf(cpf);
        setTelefone(telefone);
        setCodigoCliente(codigoCliente);
        setEndereco(endereco);
    }


    @Override
    public void exibirDados(){
        System.out.println("""
        EXIBIR DADOS

        Nome: %s
        Idade: %d
        Cpf: %s
        Telefone: %s
        Código do Cliente: %s
        Endereço: %s
        """.formatted(getNome(), getIdade(), getCpf(), getTelefone(), this.codigoCliente, this.endereco));
    }
}