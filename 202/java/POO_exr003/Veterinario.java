public class Veterinario extends Pessoa {
    private String crmv;
    private String especialidade;

    public Veterinario(){

    }

    public Veterinario(String nome, int idade, String cpf, String telefone, String crmv, String especialidade){
        super(nome, idade, cpf, telefone);
        this.crmv = crmv;
        this.especialidade = especialidade;
    }

    public String getCrmv(){
        return crmv;
    }

    public void setCrmv(String crmv){
        this.crmv = crmv;
    }

    public String getEndereco(){
        return crmv;
    }

    public void setEspecialidade(String especialidade){
        this.especialidade = especialidade;
    }

        @Override
    public void cadastrar(String nome, int idade, String telefone){
        setNome(nome);
        setIdade(idade);
        setTelefone(telefone);
    }

    public void cadastrar(String nome, int idade, String cpf, String telefone, String crmv, String especialidade){
        setNome(nome);
        setIdade(idade);
        setCpf(cpf);
        setTelefone(telefone);
        setCrmv(crmv);
        setEspecialidade(especialidade);
    }


    @Override
    public void exibirDados(){
        System.out.println("""
        EXIBIR DADOS

        Nome: %s
        Idade: %d
        Cpf: %s
        Telefone: %s
        CRMV: %s
        Especialidade: %s
        """.formatted(getNome(), getIdade(), getCpf(), getTelefone(), this.crmv, this.especialidade));
    }
}