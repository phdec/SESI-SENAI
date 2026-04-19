programa
{
	
	funcao inicio()
	{
		inteiro dian = 0
		cadeia dia = ""
	
		escreva(" Dias da semana\n")
		escreva(" Digite um número, e se dará o dia correspondente da semana\n")
		escreva(" Digite um número inteiro de 1 a 7: ")
		leia(dian)

		escolha (dian)
		{
			caso 1:
				dia = "Domingo"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			pare

			caso 2:
				dia = "Segunda-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			pare

			caso 3:
				dia = "Terça-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			pare

			caso 4:
				dia = "Quarta-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			pare

			caso 5:
				dia = "Quinta-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			pare

			caso 6:
				dia = "Sexta-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			pare

			caso 7:
				dia = "Sábado"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			pare

			caso contrario:
				escreva("\n DIA DA SEMANA INVÁLIDO.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 938; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */