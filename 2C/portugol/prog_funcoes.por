programa
{
	
	funcao real CalcularVolumeCilindro(real raio, real altura){
		real pi = 3.14
		retorne pi * (raio * raio) * altura
	}

	funcao real CalcularVolumeCone(real raio, real altura){
		real pi = 3.14
		retorne (1.0/3.0) * pi * (raio * raio) * altura
	}
	
	funcao inicio()
	{ // programa para calcular volume do cilindro e do cone
		
		real raio = 0.0, altura = 0.0, volume = 0.0
		inteiro opcao = 0

		faca{
			escreva(" -- Programa para calcular volume do cilindro e do cone --\n")
			escreva(" Escolha qual deseja calcular;\n")
			escreva(" 1 = Cilindro\n 2 = Cone\n 0 = Sair\n Digite: ")
			leia(opcao)
			
			
			se(opcao == 1){
				escreva("\n Digite o valor do raio: ")
				leia(raio)
				escreva(" Digite o valor da altura: ")
				leia(altura)
				volume = CalcularVolumeCilindro(raio, altura)
				escreva("\n O volume do Cilindro é : ", volume, "\n\n")
			}
			senao se(opcao == 2){	
				escreva("\n Digite o valor do raio: ")
				leia(raio)
				escreva(" Digite o valor da altura: ")
				leia(altura)
				CalcularVolumeCone(raio, altura)
				escreva("\n O volume do Cone é : ", volume, "\n\n")
			}
			senao se(opcao != 0){
				escreva("\n Opção inválida. Digite novamente.\n\n")
			}
		}enquanto(opcao != 0)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1198; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */