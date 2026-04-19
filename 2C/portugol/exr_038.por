programa
{
	// função para calcular consumo (km/l)
	funcao real calcConsumo(real distancia, real litros){
		real consumo
		consumo = distancia / litros
		retorne consumo
	}

	// função para calcular custo da viagem
	funcao real calcCusto(real litros, real preco){
		real custo
		custo = litros * preco
		retorne custo
	}

	funcao inicio()
	{
		inteiro op
		real distancia, litros
		real consumo = 0.0, preco = 5.96
		real custo = 0.0

		faca{
			escreva("\n===== SISTEMA DE VIAGEM =====\n")
			escreva("1 - Calcular Consumo (km/l)\n")
			escreva("2 - Calcular Custo da Viagem\n")
			escreva("0 - Sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva("Digite a distância percorrida (km): ")
					leia(distancia)

					escreva("Digite a quantidade de litros: ")
					leia(litros)

					consumo = calcConsumo(distancia, litros)

					escreva("Consumo do veículo: ", consumo, " km/l\n")
				pare

				caso 2:
					escreva("Digite a quantidade de litros: ")
					leia(litros)
					escreva("O preço do combustível é R$5,96\n")

					custo = calcCusto(litros, preco)

					escreva("Custo da viagem: R$ ", custo, "\n")
				pare

				caso 0:
					escreva("Encerrando o programa...\n")
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
 * @POSICAO-CURSOR = 1060; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */