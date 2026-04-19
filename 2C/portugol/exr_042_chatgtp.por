programa
{
	// função para calcular peso cubado
	funcao real calcPesoCubado(real comp, real alt, real larg){
		real pesoCubado
		pesoCubado = comp * alt * larg * 167
		retorne pesoCubado
	}

	// função para calcular valor do frete
	funcao real calcFrete(real peso, real precoTon){
		real frete
		frete = peso * precoTon
		retorne frete
	}

	funcao inicio()
	{
		inteiro op
		real comp, alt, larg
		real pesoCubado = 0.0
		real precoTon, frete

		faca{
			escreva("\n===== SISTEMA DE TRANSPORTE =====\n")
			escreva("1 - Calcular Peso Cubado\n")
			escreva("2 - Calcular Valor do Frete\n")
			escreva("0 - Sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva("Digite o comprimento (m): ")
					leia(comp)

					escreva("Digite a altura (m): ")
					leia(alt)

					escreva("Digite a largura (m): ")
					leia(larg)

					pesoCubado = calcPesoCubado(comp, alt, larg)

					escreva("Peso cubado: ", pesoCubado, " toneladas\n")
				pare

				caso 2:
					se (pesoCubado == 0){
						escreva("Calcule o peso cubado primeiro!\n")
					}
					senao{
						escreva("Digite o valor por tonelada (R$): ")
						leia(precoTon)

						frete = calcFrete(pesoCubado, precoTon)

						escreva("Valor do frete: R$ ", frete, "\n")
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
 * @POSICAO-CURSOR = 1434; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */