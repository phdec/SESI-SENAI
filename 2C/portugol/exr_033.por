programa
{
	inclua biblioteca Matematica --> mat

	funcao real calcAreaTotalCilindro(real raio, real altura){
		retorne ( ( 2.0 * 3.1415 * raio) + ( raio + altura) )
	}

	funcao real calcVolumeCilindro(real raio, real altura){
		retorne 3.1415 * raio * raio * altura
	}

	funcao real calcAreaTotalCubo(real aresta){
		retorne mat.potencia(aresta, 3.0)
	}
	
	funcao real calcVolumeCubo(real aresta){
		real resposta = 6 * (mat.potencia(aresta, 2.0))
		retorne resposta

	}
	
	funcao inicio()
	{
		real raio = 0.0, altura = 0.0, volume = 0.0, area = 0.0, aresta = 0.0, areaTotalCubo = 0.0
		inteiro op = 0 // opcao do programa


				escreva("========================================\n")
				escreva(" Programa de cálculo do cilindro e cubo\n")
				escreva("========================================\n\n")
			
			faca{

				
				escreva(" 1 - Cálculo da área total(cilindro).\n 2 - Cálculo do volume(cilindro).\n 3 - Cálculo de área total(cubo).\n 4 - Cálculo do volume(cubo).\n 0 - Encerrar programa.\n")
				escreva(" Digite a sua opção: ")
				leia(op)

				escolha(op){
					caso 1: 
						escreva(" Digite o raio: ")
						leia(raio)
						escreva(" Digite o altura: ")
						leia(altura)
						real resposta = calcAreaTotalCilindro(raio, altura)
						escreva("\n A área total do cilindro é: ", resposta, "cm². \n\n")
					pare
					caso 2: 
						escreva(" Digite o raio: ")
						leia(raio)
						escreva(" Digite o altura: ")
						leia(altura)
						escreva("\n A área do volume do cilindro é: ", calcVolumeCilindro(raio, altura), "cm². \n\n")
					pare
					caso 3:
						escreva(" Digite a aresta: ")
						leia(aresta)
						areaTotalCubo = calcAreaTotalCubo(aresta)
						escreva("\n A área total do cubo é: ", areaTotalCubo, "cm². \n\n")
					pare
					caso 4:
						escreva(" Digite a aresta: ")
						leia(aresta)
						escreva("\n O volume do cubo é: ", calcVolumeCubo(aresta), "cm². \n\n")
					pare
					caso 0:
						escreva(" Fim do programa.")
					pare
					caso contrario: escreva("\n Opção inválida! Digite novamente.\n\n")
				}
				
			}enquanto(op != 0)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 795; 
 * @DOBRAMENTO-CODIGO = [4, 8, 12, 16];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */