programa
{
	// função para converter para dólar
	funcao real convDolar(real reais, real cotacaoDolar){
		real resultado
		resultado = reais / cotacaoDolar
		retorne resultado
	}

	// função para converter para euro
	funcao real convEuro(real reais, real cotacaoEuro){
		real resultado
		resultado = reais / cotacaoEuro
		retorne resultado
	}

	funcao inicio()
	{
		inteiro op
		real reais, dolar, euro
		real cotacaoDolar = 5.18
		real cotacaoEuro = 5.99

		faca{
			escreva("\n===== CONVERSOR DE MOEDAS =====\n")
			escreva("1 - Converter para Dólar\n")
			escreva("2 - Converter para Euro\n")
			escreva("0 - Sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva("Digite o valor em reais: ")
					leia(reais)

					dolar = convDolar(reais, cotacaoDolar)

					escreva("Valor em dólar: ", dolar, "\n")
				pare

				caso 2:
					escreva("Digite o valor em reais: ")
					leia(reais)

					euro = convEuro(reais, cotacaoEuro)

					escreva("Valor em euro: ", euro, "\n")
				pare

				caso 0:
				pare

				caso contrario:
					escreva("Opção inválida!\n")
				pare
			}

		} enquanto(op != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */