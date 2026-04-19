programa
{
	
	funcao inicio()
	{
		real valorc = 0.0, lucro = 0.0, valorv = 0.0
		
		escreva(" Brechó\n")
		escreva("===================================\n")
		escreva(" Vamos fixar o preço de venda de cada produto conforme o valor da aquisição;\n")
		escreva(" Informe o valor de aquisição aqui: ")
		leia(valorc)
		escreva("\n")

		
		se( valorc >= 0 e valorc < 50.0){
			lucro = valorc * 0.35
			valorv = valorc + lucro
			escreva(" O valor de venda desta peça fica em: ", valorv)
		}
		senao se( valorc >= 50.0 e valorc < 100.0){
			lucro = valorc * 0.25
			valorv = valorc + lucro
			escreva(" O valor de venda desta peça fica em: ", valorv)
		}
		senao {
			lucro = valorc * 0.15
			valorv = valorc + lucro
			escreva(" O valor de venda desta peça fica em: ", valorv)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 375; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */