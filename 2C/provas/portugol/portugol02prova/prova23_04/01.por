programa
{
	
	funcao real areaTriangulo(real base, real altura){
		retorne (base * altura) / 2.0
	}

	funcao real areaHexagono(real lado){
		retorne ( 3.0 * lado * lado * 1.732 ) / 2.0
	}

	funcao real areaRetangulo(real base, real altura){
		retorne base * altura
	}
	
	funcao inicio()
	{
		real triangulo, retangulo, hexagono, base, altura, lado
		inteiro  op // opção do sistema
	
		escreva(" --- Calcular área ---\n\n")

		faca{
			escreva("\n\n Considere:\n 1 - Triângulo\n 2 - Hexágono\n 3 - Retângulo\n 0 - sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					escreva(" Digite a base: ")
					leia(base)
					escreva(" Digite a altura: ")
					leia(altura)
					triangulo = areaTriangulo(base, altura)

					escreva("\n O resultado é: ", triangulo)
				pare
				caso 2:
					escreva(" Digite o lado: ")
					leia(lado)
					hexagono = areaHexagono(lado)

					escreva("\n O resultado é: ", hexagono)
				pare
				caso 3:
					escreva(" Digite a base: ")
					leia(base)
					escreva(" Digite a altura: ")
					leia(altura)

					retangulo = areaRetangulo(base, altura)

					escreva("\n O resultado é: ", retangulo)
				pare
				caso 0:
				pare
				caso contrario: escreva(" Valor inválido! Digite novamente.")
			}
		}enquanto(op != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 592; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */