programa
{
	// função para calcular consumo em kWh
	funcao real calcConsumo(real potencia, real horas){
		real consumo
		consumo = (potencia * horas) / 1000
		retorne consumo
	}

	// função para calcular custo total
	funcao real calcCusto(real consumo, real preco){
		real custo
		custo = consumo * preco
		retorne custo
	}

	funcao inicio()
	{
		inteiro op
		real potencia, horas, preco
		real consumo = 0.0
		real custo = 0.0

		faca{
			escreva("\n===== SISTEMA DE CONSUMO ELÉTRICO =====\n")
			escreva("1 - Calcular Consumo (kWh)\n")
			escreva("2 - Calcular Custo Estimado (R$)\n")
			escreva("0 - Sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva("Digite a potência do aparelho (W): ")
					leia(potencia)

					escreva("Digite o tempo de uso (horas): ")
					leia(horas)

					consumo = calcConsumo(potencia, horas)

					escreva("Consumo: ", consumo, " kWh\n")
				pare

				caso 2:
						escreva("Digite o preço do kWh: ")
						leia(preco)

						custo = calcCusto(consumo, preco)

						escreva("Custo estimado: R$ ", custo, "\n")
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
 * @POSICAO-CURSOR = 1109; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */