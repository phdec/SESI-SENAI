programa
{
	
	funcao inicio()
	{
		inteiro dia = 0

		escreva(" Programa para identificar o dia da semana\n")
		escreva("-------------------------------------------\n")
		escreva(" Digite um número de 1 a 7 para ver o dia da semana: ")
		leia(dia)

		se (dia == 1) {
			escreva("O dia da semana é Domingo\n")
		}
		senao se (dia == 2) {
			escreva("O dia da semana é Segunda\n")
		}
		senao se (dia == 3) {
			escreva("O dia da semana é Terça\n")
		}
		senao se (dia == 4) {
			escreva("O dia da semana é Quarta\n")
		}
		senao se (dia == 5) {
			escreva("O dia da semana é Quinta\n")
		}
		senao se (dia == 6) {
			escreva("O dia da semana é Sexta\n")
		}
		senao se (dia == 7) {
			escreva("O dia da semana é Sábado\n")
		}
		senao {
			escreva("Valor inválido!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 771; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */