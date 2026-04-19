programa
{

	funcao real calcPesoCubado(real comprimento, real altura, real largura){
		retorne comprimento * altura * largura * 167.0
	}

	
	funcao real calcFrete(real pesoTonelada, real pesoCubado){
		retorne (pesoTonelada / 167.0) * pesoCubado
	}

	funcao inicio()
	{
		inteiro op
		real comprimento, altura, largura, pesoCubado = 0.0, frete

		faca{
			escreva("\n===== SISTEMA DE FRETE =====\n")
			escreva("1 -  Calcular Peso Cubado\n")
			escreva("2 -  Calcular Valor do Frete\n")
			escreva("0 - Sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva("Digite o comprimento: ")
					leia(comprimento)

					escreva("Digite a altura: ")
					leia(altura)

					escreva("Digite a largura: ")
					leia(largura)

					pesoCubado = calcPesoCubado(comprimento, altura, largura)

					escreva("Peso Cubado é ", pesoCubado, " Toneladas\n")
				pare

				caso 2:
						frete = calcFrete(pesoCubado, pesoCubado)

						escreva("Total do frete: R$ ", frete, "\n")
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
 * @POSICAO-CURSOR = 224; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */