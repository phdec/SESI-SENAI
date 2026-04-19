programa
{

	funcao real calcAreaBase(real raio){
		const real PI = 3.1415
		retorne PI * raio * raio
	}
	
	funcao real calcAreaLateral(real raio, real altura){
		const real PI = 3.1415
		real resposta = 2.0 * PI * raio * altura
		retorne resposta
	}

	funcao real calcAreaTotal(real raio, real altura){
		retorne ( ( 2.0 * 3.1415 * raio * raio) + ( 2.0 * 3.1415 * raio * altura) )
	}

	funcao real calcVolume(real raio, real altura){
		retorne 3.1415 * raio * raio * altura
	}
	
	funcao inicio()
	{
		real raio = 0.0, altura = 0.0, volume = 0.0, area = 0.0, areaBase = 0.0
		inteiro op = 0 // opcao do programa


				escreva("=================================\n")
				escreva(" Programa de cálculo do cilindro\n")
				escreva("=================================\n\n")
			
			faca{

				
				escreva(" 1 - Cálculo da área.\n 2 - Cálculo do volume.\n 3 - Cálculo de área da base.\n 4 - Cálculo da área lateral.\n 0 - Encerrar programa.\n")
				escreva(" Digite a sua opção: ")
				leia(op)

				escolha(op){
					caso 1: 
						escreva(" Digite o raio: ")
						leia(raio)
						escreva(" Digite o altura: ")
						leia(altura)
						real resposta = calcAreaTotal(raio, altura)
						escreva("\n A área total do cilindro é: ", resposta, "cm². \n\n")
					pare
					caso 2: 
						escreva(" Digite o raio: ")
						leia(raio)
						escreva(" Digite o altura: ")
						leia(altura)
						escreva("\n A área do volume do cilindro é: ", calcVolume(raio, altura), "cm². \n\n")
					pare
					caso 3:
						escreva(" Digite o raio: ")
						leia(raio)
						areaBase = calcAreaBase(raio)
						escreva("\n A área da base do cilindro é: ", areaBase, "cm². \n\n")
					pare
					caso 4:
						escreva(" Digite o raio: ")
						leia(raio)
						escreva(" Digite o altura: ")
						leia(altura)
						escreva("\n A área lateral do cilindro é: ", calcAreaLateral(raio, altura), "cm². \n\n")
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
 * @POSICAO-CURSOR = 1854; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */