package produto;

public class Produto {
    String nome;
    float preco;
    int quantidade;

    public Produto(String nome, float preco, int quantidade){
        this.nome = nome;
        this.preco = preco;
        this.quantidade = quantidade;
    }

    public void exibirDados(){
        System.out.println("Nome: " + this.nome);
        System.out.println("Preço: " + this.preco);
        System.out.println("Quantidade: " + this.quantidade);

    }

    public void adicionarEstoque(int quantidade){
        if(quantidade <= 0){
            System.out.println("Quantidade inválida. Digite um valor maior que 0!");
            return;
        }
        this.quantidade += quantidade;
    }

    public void removerEstoque(int quantidade){
        if(quantidade <= 0){
            System.out.println("Quantidade inválida. Digite um valor maior que 0!");
            return;
        }else if(quantidade > this.quantidade) {
            System.out.println("Estoque insuficiente. Digite um valor menor ou igual a " + this.quantidade + "!");
            return;
        }
        this.quantidade -= quantidade;
    }
}
