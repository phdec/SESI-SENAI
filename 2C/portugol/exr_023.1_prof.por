programa
{
	
	funcao inteiro somar_valores(inteiro acumulado, inteiro novoNum) {
		retorne acumulado + novoNum
	}
	
	funcao inicio()
	{
		inteiro novoNum = 0, somaTotal = 0
	
		para(inteiro i = 1; i <= 5; i++) {
			novoNum = sorteia(1, 20)
			somaTotal = somar_valores(somaTotal, novoNum)
			escreva(" O acúmulo do ",i, "º número é ", somaTotal, "\n")
		}
			escreva(" A soma total é ", somaTotal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */