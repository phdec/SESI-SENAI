programa
{
	
	funcao inicio()
	{
		real pi = 3.14, raio = 0.0, altura = 0.0, vol = 0.0
	
		escreva(" Calculadora do volume de um cone\n")
		escreva("==================================\n")

		escreva("\n Digite o valor do raio: ") //entrada do valor do raio
		leia(raio)
		escreva(" Digite o valor da altura: ") // entrada do valor da altura
		leia(altura)

		vol = (1.0/3.0) * pi * raio * raio * altura
		/*
		 fórmula do cálculo do volume substituindo os valores, e calculando raio * raio porque o raio é ao quadrado
		  */

		escreva(" O volume do cone é: ", vol)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 523; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */