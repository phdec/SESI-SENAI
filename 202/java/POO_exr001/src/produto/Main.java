package produto;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o nome do produto: ");
        String nome = scanner.nextLine();
        System.out.print("Digite o preço do produto: ");
        float preco = scanner.nextFloat();
        int quantidade;
        do{
            System.out.print("Digite a quantidade do produto: ");
            quantidade = scanner.nextInt();
            if(quantidade >= 0){
                break;
            }
            System.out.println("Quantidade inválida. Digite um valor maior ou igual a 0!");
        }while(true);
        Produto produto1 = new Produto(nome, preco, quantidade);
        produto1.exibirDados();

        int opcao;
        do{
            System.out.print("O que deseja fazer agora?\n(1 - Adicionar estoque, 2 - Remover estoque, 0 - Sair)\n"
                + "Digite sua opção: "
            );
            opcao = scanner.nextInt();

            switch(opcao){
                case 1:
                    System.out.print("Digite a quantidade de estoque a ser adicionada: ");
                    int estoqueAdicionado = scanner.nextInt();
                    produto1.adicionarEstoque(estoqueAdicionado);
                    produto1.exibirDados();
                break;
                case 2:
                    System.out.print("Digite a quantidade de estoque a ser removida: ");
                    int estoqueRemovido = scanner.nextInt();
                    produto1.removerEstoque(estoqueRemovido);
                    produto1.exibirDados();
                break;
                case 0:
                    System.out.println("Saindo...");
                break;
                default:
                    System.out.println("Opção inválida.");
            }
        }while(opcao != 0);
        scanner.close();
    }
}