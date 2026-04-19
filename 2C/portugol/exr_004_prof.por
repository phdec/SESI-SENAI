programa
{
	
	funcao inicio()
	{
		real volei = 247.58, futebol = 179.57, basquete = 260.89
		inteiro qtdeVolei = 0, qtdeBasquete = 0, qtdeFutebol = 0
		real preco = 0.0, desconto = 0.0, precoFinal = 0.0

		escreva("Bem-vindo à loja esportiva, escolha a quantidade de itens que você deseja.\n")
		escreva(" R$", volei, " Tênis de Vôlei: ")
		leia(qtdeVolei)
		escreva(" R$", basquete, " Tênis de Basquete: ")
		leia(qtdeFutebol)
		escreva(" R$", futebol, " Tênis de Futebol: ")
		leia(qtdeBasquete)

		preco = (volei * qtdeVolei) + (basquete * qtdeBasquete) + (futebol * qtdeFutebol)
		desconto = preco * (8.0/100.0)
		precoFinal = preco - desconto
		
		se(preco > 550.0){
			escreva(" Você ganhou um desconto de 8%, o novo valor é: R$", precoFinal)
		}
		senao{
			escreva(" O valor final da compra é: R$", preco)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 473; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */