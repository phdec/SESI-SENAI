programa
{
	inclua biblioteca Util --> u

	funcao inteiro identificar_maior(inteiro valor_atual, inteiro maior_anterior){
		se(valor_atual > maior_anterior){
			retorne valor_atual
		}senao {
			retorne maior_anterior
		}
	}
	
	funcao inicio()
	{
		inteiro i = 1, num, maior = 0
	
		faca{
			num = u.sorteia(1, 50)
			maior = identificar_maior(num, maior)
			escreva(i, "º número: ", num, ". O maior número é: ", maior, "\n")
			i++
		}enquanto(i <= 7)

		escreva("\n O maior número ao final foi o ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */