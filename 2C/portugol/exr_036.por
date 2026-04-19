programa
{
	
	funcao real calcImc(real peso, real altura){
		real imc
		imc = peso / (altura * altura)
		retorne imc
	}

	funcao tabela(real imc){
		se(imc > 0 e imc < 18.5){
			escreva(" você está abaixo do peso.")
		}

		senao se(imc >= 18.5 e imc <= 24.9){
			escreva(" você está com um peso normal.")
		}

		senao se(imc >= 25 e imc <= 29.9){
			escreva(" você está com sobrepeso.")
		}

		senao se(imc >= 30 e imc <= 34.9){
			escreva(" você está com obesidade grau I.")
		}

		senao se(imc >= 35 e imc <= 39.9){
			escreva(" você está com obesidade grau II.")
		}

		senao se (imc >= 40){
			escreva(" você está com obesidade grau III.")
		}

		senao{
			escreva(" Calcule seu IMC para ver sua classifação na tabela!")
		}
		
	}
	
	funcao inicio()
	{
		inteiro op // opção do sistema
		real peso, altura, imc = 0.0

		
		faca{
			escreva("\n\n Digite sua opção: ")
			leia(op)
			escreva(" Monitoramento da saúde física através do Índice de Massa Corporal.")
			escreva("\n 1- Calcular IMC\n 2 - Classificação\n 0 - Sair")
		
			escolha(op){
				caso 1: 
					escreva("\n Digite seu peso: ")
					leia(peso)
					escreva(" Digite sua altura: ")
					leia(altura)
					imc = calcImc(peso, altura)
					escreva("\n O seu imc é: ", imc, "\n")
				pare
				caso 2: tabela(imc)
				pare
				caso 0:
				pare
				caso contrario:
				pare
			}
		}enquanto(op != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 757; 
 * @DOBRAMENTO-CODIGO = [3, 9, 40];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */