programa
{
	
	funcao inicio()
	{
		real x = 0.0, resultado = 0.0
		escreva(" Vamos resolver essa equação: f(x) = ( 5x + 4 ) / ( 2x + 1).\n")
		escreva(" Digite um número de 0 a 10: ")
		leia(x)
		escreva("\n")
		resultado = ( 5 * x + 4 ) / ( 2 * x + 1)
		se( x >=0 e x <=10){
			escreva(" O valor de f(x) é: ", resultado)
		}
		senao{
			escreva(" Valor fora da faixa de cálculo permitida.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 69; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */