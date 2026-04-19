programa
{
	
	funcao inicio()
	{
		// programa da estrutura condicional escolha - caso
		inteiro dia = 0

		escreva(" Programa para identificar o dia da semana\n")
		escreva("-------------------------------------------\n")
		escreva(" Digite um número de 1 a 7 para ver o dia da semana: ")
		leia(dia)

		escolha(dia){
			caso 1: escreva("O dia da semana é Domingo \n")
			pare
			caso 2: escreva("O dia da semana é Segunda \n")
			pare
			caso 3: escreva("O dia da semana é Terça \n")
			pare
			caso 4: escreva("O dia da semana é Quarta \n")
			pare
			caso 5: escreva("O dia da semana é Quinta \n")
			pare
			caso 6: escreva("O dia da semana é Sexta \n")
			pare
			caso 7: escreva("O dia da semana é Sábado \n")
			pare
			caso contrario:
				escreva("valor inválido! \n")			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 784; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */