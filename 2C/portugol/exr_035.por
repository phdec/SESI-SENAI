programa
{

	inclua biblioteca Matematica --> mat

	funcao real calcAreaTotalPrisma(real lado, real altura){
		retorne 2.0 * ( (lado * lado * 1.732)/4) * altura + 3.0 * lado * altura
	}

	funcao real calcVolumePrisma(real lado, real altura){
		retorne ( (lado * lado * 1.732)/4) * altura
	}

	funcao real calcAreaTotalPiramide(real lado, real apotema){
		retorne lado * lado + 2.0 * lado * apotema
	}
	
	funcao real calcVolumePiramide(real lado, real altura){
		real resposta = (1.0/3.0) * mat.potencia(lado, 2.0) * altura
		retorne resposta

	}
	
	funcao inicio()
	{
		real lado = 0.0, altura = 0.0, volume = 0.0, area = 0.0, apotema = 0.0, areaTotalPiramide = 0.0
		inteiro op = 0 // opcao do programa


				escreva("======================================================================\n")
				escreva(" Programa de cálculo do prisma triângular e pirâmide de base quadrada\n")
				escreva("======================================================================\n\n")
			
			faca{

				
				escreva(" 1 - Cálculo da área total(prisma).\n 2 - Cálculo do volume(prisma).\n 3 - Cálculo de área total(pirâmide).\n 4 - Cálculo do volume(pirâmide).\n 0 - Encerrar programa.\n")
				escreva(" Digite a sua opção: ")
				leia(op)

				escolha(op){
					caso 1: 
						escreva(" Digite o lado: ")
						leia(lado)
						escreva(" Digite a altura: ")
						leia(altura)
						real resposta = calcAreaTotalPrisma(lado, altura)
						escreva("\n A área total do prisma triângular é: ", resposta, "cm². \n\n")
					pare
					caso 2: 
						escreva(" Digite o lado: ")
						leia(lado)
						escreva(" Digite o altura: ")
						leia(altura)
						escreva("\n A área do volume do prisma triângular é: ", calcVolumePrisma(lado, altura), "cm². \n\n")
					pare
					caso 3:
						escreva(" Digite o lado: ")
						leia(lado)
						escreva(" Digite o apotema: ")
						leia(apotema)
						areaTotalPiramide = calcAreaTotalPiramide(lado, apotema)
						escreva("\n A área total da pirâmide de base quadrada é: ", areaTotalPiramide, "cm². \n\n")
					pare
					caso 4:
						escreva(" Digite o lado: ")
						leia(lado)
						escreva(" Digite o altura: ")
						leia(altura)
						escreva("\n O volume da pirâmide de base quadrada é: ", calcVolumePiramide(lado, altura), "cm². \n\n")
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
 * @POSICAO-CURSOR = 459; 
 * @DOBRAMENTO-CODIGO = [23];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */