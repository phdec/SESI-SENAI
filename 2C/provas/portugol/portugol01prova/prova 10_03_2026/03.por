programa
{
	
	funcao inicio()
	{
		real corrida = 134.72, orto = 247.29, casual = 126.85, valorTotal = 0.0, desconto = 0.9, valorFinal = 0.0
		inteiro qtCorrida = 0, qtOrto = 0, qtCasual = 0
	
		escreva(" Loja Esportiva\n")
		escreva("================\n\n")
		escreva(" Digite a quantidade de itens que você deseja:\n\n")
		escreva("R$", corrida, " Tênis de Corrida: ")
		leia(qtCorrida)
		escreva("R$", orto, " Tênis Ortopédico: ")
		leia(qtOrto)
		escreva("R$", casual, " Tênis Casual: ")
		leia(qtCasual)

		valorTotal = corrida * qtCorrida + orto * qtOrto + casual * qtCasual

		se(valorTotal > 420.0){ // caso o valor total seja acima de 420, o valor final será igual o valor total multiplicado pelo desconto de 9%
			valorFinal = valorTotal * desconto
			escreva("\n Você recebeu um desconto de 9%! O novo valor da sua compra é de: R$", valorFinal, "\n O anterior era: R$", valorTotal)
		}
		senao{
			escreva(" O valor final da sua compra é: R$", valorTotal)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 262; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorTotal, 6, 57, 10}-{valorFinal, 6, 91, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */