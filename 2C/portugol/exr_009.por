programa
{
	
	funcao inicio()
	{
		real preco = 0.0, custof = 0.0, percentd = 0.0, imposto = 0.0, valord = 0.0

		escreva(" Digite o custo de fábrica do Automóvel: ")
		leia(custof)
		escreva(" Digite o percentual do distribuidor: ")
		leia(percentd)

		imposto = custof * 0.15
		valord = custof * (percentd/100.0)
		preco = custof + imposto + valord

		escreva(" O preço ao consumidor é: R$", preco)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 115; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {preco, 6, 7, 5}-{custof, 6, 20, 6}-{percentd, 6, 34, 8}-{imposto, 6, 50, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */