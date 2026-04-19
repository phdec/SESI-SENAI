programa
{
	
	funcao inteiro somar_valores(inteiro acumulado, inteiro novoNum) {
		retorne acumulado + novoNum
	}
	
	funcao inicio()
	{
		inteiro acumulado = 0, novoNum = 0, somaTotal = 0
	
		para(inteiro i = 1; i <= 5; i++) {
			novoNum = sorteia(1, 20)
			acumulado = somar_valores(acumulado, novoNum)
			somaTotal += acumulado 

			escreva(" O acúmulo do ",i, "º número é ", acumulado, "\n")
		}
			escreva(" A soma total é ", somaTotal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 445; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */