programa
{
	// função para calcular mão de obra
	funcao real calcMaoObra(real horas, real valorHora){
		real mao
		mao = horas * valorHora
		retorne mao
	}

	// função para calcular total do orçamento
	funcao real calcTotal(real mao, real pecas){
		real total
		total = mao + pecas
		retorne total
	}

	funcao inicio()
	{
		inteiro op
		real horas, valorHora, valorPecas
		real mao = 0.0
		real total = 0.0

		faca{
			escreva("\n===== SISTEMA DE OFICINA =====\n")
			escreva("1 - Calcular Mão de Obra\n")
			escreva("2 - Gerar Total com Peças\n")
			escreva("0 - Sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva("Digite as horas trabalhadas: ")
					leia(horas)

					escreva("Digite o valor por hora: ")
					leia(valorHora)

					mao = calcMaoObra(horas, valorHora)

					escreva("Valor da mão de obra: R$ ", mao, "\n")
				pare

				caso 2:
						escreva("Digite o valor das peças: ")
						leia(valorPecas)

						total = calcTotal(mao, valorPecas)

						escreva("Total do orçamento: R$ ", total, "\n")
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
 * @POSICAO-CURSOR = 1055; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */