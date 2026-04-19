programa
{
	
	funcao inicio()
	{
		inteiro num = 0, resp = 0, contador = 0

		escreva("==============================================\n")
		escreva(" Programa para ver se o número é par ou ímpar\n")
		escreva("==============================================\n")
		faca{
			escreva("\nDigite um número: ")
			leia(num)
			escreva("\n")
			resp = num % 2
			se(resp == 0){
				escreva("O número digitado é: ", num, ". Este número é par.\n")
			}
			senao se(resp == 1){
				escreva("O número digitado é: ", num, ". Este número é ímpar.\n")
			}
			senao{
				escreva("O número digitado é inválido.")
			}
			contador = contador + 1
		}
		enquanto(contador <1)

		escreva("==============================================\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contador, 6, 29, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */