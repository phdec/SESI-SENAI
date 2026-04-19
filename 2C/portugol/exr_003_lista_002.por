programa
{
	
	funcao inicio()
	{

		// programa para converter celsius em farenheit
		
		real celsius = 0.0, faren = 0.0
		
		escreva("====================================================\n")
		escreva(" Programa para converter graus Farenheit em Celsius\n")
		escreva("====================================================\n")
		escreva(" Ecreva um valor de temperatura em graus Farenheit: ")
		leia(faren)
		escreva("\n")

		celsius = (faren - 32.0) * (5.0 / 9.0)

		escreva("O valor da temperatura digitada é: ", faren, " °F \n")
		escreva("O valor da temperatura em Farenheit é: ", celsius, " °C \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 531; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */