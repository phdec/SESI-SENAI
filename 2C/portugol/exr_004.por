programa
{

    funcao inicio()
    {
        real volei = 247.58, futebol = 179.57, basquete = 260.89, vt, desconto

        escreva("Loja Esportiva\n")
        escreva("==============================================\n")
        escreva(" 8% de desconto em compras acima de R$550.00!\n\n")
        escreva("Tênis de Vôlei: R$247.58\n")
        escreva("Digite a quantidade que deseja: ")
        leia(volei)
        volei = volei * 247.58
        escreva("Tênis de Futebol: R$179.57\n")
        escreva("Digite a quantidade que deseja: ")
        leia(futebol)
        futebol = futebol * 179.57
        escreva("Tênis de Basquete: R$260.89\n")
        escreva("Digite a quantidade que deseja: ")
        leia(basquete)
        basquete = basquete * 260.89
        vt = volei + futebol + basquete
        desconto = vt * (8.0/100.0)
        se(vt > 0.0 e vt > 550.0){
            escreva("O valor da sua compra é de: R$", vt, ", mas você ganhou um desconto de 8%, o novo valor da sua compra é de: R$",vt - desconto)
        }
        senao se( vt > 0.0 e vt <= 550.0){
            escreva("O valor total da compra é: R$", vt)
        }
        senao{
            escreva("Desculpe, houve um erro com sua compra")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */