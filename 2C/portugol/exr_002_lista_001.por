programa
{
	
	funcao inicio()
	{

		// programa para converter celsius em farenheit
		
		real celsius = 0.0, faren = 0.0
		
		escreva("====================================================\n")
		escreva(" Programa para converter graus Celsius em Farenheit\n")
		escreva("====================================================\n")
		escreva(" Ecreva um valor de temperatura em graus Celsius: ")
		leia(celsius)
		escreva("\n")

		faren = (celsius * (9.0 / 5.0)) + 32.0

		escreva("O valor da temperatura digitada é: ", celsius, " °C \n")
		escreva("O valor da temperatura em Farenheit é: ", faren, " °F \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 470; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */