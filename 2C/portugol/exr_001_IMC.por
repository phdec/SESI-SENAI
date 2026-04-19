programa
{
	
	funcao inicio()
	{
		real peso = 0.0, altura = 0.0, resposta = 0.0
		cadeia nome = ""

		
		escreva("Calculadora de IMC \n=====================\n")
		escreva("Digite o seu nome: ")
		leia(nome)
		escreva("\n")
		escreva("Digite a sua altura: ")
		leia(altura)
		escreva("\n")
		escreva("Digite o seu peso: ")
		leia(peso)
		escreva("\n")

		resposta = peso / ( altura * altura)

		escreva("Seu IMC é: ", resposta, " portanto ")

		se(resposta > 0 e resposta < 18.5){
			escreva(nome, ", você está abaixo do peso.")
		}

		senao se(resposta >= 18.5 e resposta <= 24.9){
			escreva(nome, ", você está com um peso normal.")
		}

		senao se(resposta >= 25 e resposta <= 29.9){
			escreva(nome, ", você está com sobrepeso.")
		}

		senao se(resposta >= 30 e resposta <= 34.9){
			escreva(nome, ", você está com obesidade grau I.")
		}

		senao se(resposta >= 35 e resposta <= 39.9){
			escreva(nome, ", você está com obesidade grau II.")
		}

		senao se (resposta >= 40){
			escreva(nome, ", você está com obesidade grau III.")
		}

		senao{
			escreva("Inválido")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 476; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */