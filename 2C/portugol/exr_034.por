programa
{

	inclua biblioteca Matematica --> mat

	funcao real calcAreaTotalCone(real raio, real geratriz){
		const real pi = 3.1415
		retorne pi * raio * (raio + geratriz)
	}

	funcao real calcVolumeCone(real raio, real altura){
		const real pi = 3.1415
		retorne (1.0/3.0) * pi * raio * raio * altura
	}

	funcao real calcAreaTotalEsfera(real raio){
		const real pi = 3.1415
		retorne 4.0 * pi * mat.potencia(raio, 2.0)
	}
	
	funcao real calcVolumeEsfera(real raio){
		const real pi = 3.1415
		real resposta = (4.0/3.0) * pi * mat.potencia(raio, 3.0)
		retorne resposta

	}
	
	funcao inicio()
	{
		real raio = 0.0, altura = 0.0, volume = 0.0, area = 0.0, geratriz = 0.0, areaTotalEsfera = 0.0
		inteiro op = 0 // opcao do programa


				escreva("======================================\n")
				escreva(" Programa de cálculo do cone e esfera\n")
				escreva("======================================\n\n")
			
			faca{

				
				escreva(" 1 - Cálculo da área total(cone).\n 2 - Cálculo do volume(cone).\n 3 - Cálculo de área total(esfera).\n 4 - Cálculo do volume(esfera).\n 0 - Encerrar programa.\n")
				escreva(" Digite a sua opção: ")
				leia(op)

				escolha(op){
					caso 1: 
						escreva(" Digite o raio: ")
						leia(raio)
						escreva(" Digite a geratriz: ")
						leia(geratriz)
						real resposta = calcAreaTotalCone(raio, geratriz)
						escreva("\n A área total do cone é: ", resposta, "cm². \n\n")
					pare
					caso 2: 
						escreva(" Digite o raio: ")
						leia(raio)
						escreva(" Digite o altura: ")
						leia(altura)
						escreva("\n A área do volume do cone é: ", calcVolumeCone(raio, altura), "cm². \n\n")
					pare
					caso 3:
						escreva(" Digite o raio: ")
						leia(raio)
						areaTotalEsfera = calcAreaTotalEsfera(raio)
						escreva("\n A área total da esfera é: ", areaTotalEsfera, "cm². \n\n")
					pare
					caso 4:
						escreva(" Digite o raio: ")
						leia(raio)
						escreva("\n O volume da esfera é: ", calcVolumeEsfera(raio), "cm². \n\n")
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
 * @POSICAO-CURSOR = 2174; 
 * @DOBRAMENTO-CODIGO = [5, 10, 15, 20, 27];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */