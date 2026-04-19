programa
{
	// função para calcular área da parede
	funcao real calcArea(real largura, real altura){
		real area
		area = largura * altura
		retorne area
	}

	// função para calcular litros necessários
	funcao real calcLitros(real area, real rendimento){
		real litros
		litros = area / rendimento
		retorne litros
	}

	// função para calcular total de latas
	funcao real calcLatas(real litros, real capacidade){
		real latas

		latas = litros / capacidade

		retorne latas
	}

	funcao inicio()
	{
		inteiro op
		real largura, altura, area
		real litros = 0.0
		real latas = 0.0

		real rendimento = 3.5   // m² por litro
		real capacidade = 18.0    // litros por lata

		faca{
			escreva("\n===== SISTEMA DE PINTURA =====\n")
			escreva("1 - Calcular Litros Necessários\n")
			escreva("2 - Total de Latas\n")
			escreva("0 - Sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva("Digite a largura da parede (m): ")
					leia(largura)

					escreva("Digite a altura da parede (m): ")
					leia(altura)

					area = calcArea(largura, altura)

					litros = calcLitros(area, rendimento)

					escreva("Área da parede: ", area, " m²\n")
					escreva("Litros necessários: ", litros, "\n")
				pare

				caso 2:
					se (litros <= 0){
						escreva("Calcule os litros primeiro!\n")
					}
					senao{
						latas = calcLatas(litros, capacidade)

						escreva("Total de latas necessárias: ", latas, "\n")
					}
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
 * @POSICAO-CURSOR = 1268; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */