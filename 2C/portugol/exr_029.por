programa
{
	inclua biblioteca Util --> u

	funcao logico validar_limite(inteiro valor){
		logico maior = falso
		se(valor > 25){
			maior = verdadeiro
		}
		retorne maior
	}
	
	funcao inicio()
	{
		inteiro num, altos = 0

		para(inteiro i = 0; i < 7; i++){
			num = u.sorteia(1, 50)
			escreva(i+1, "º número sorteado: ", num, "\n")
			se(validar_limite(num) == verdadeiro){
				altos += 1
			}
		}

		escreva("\n A quantidade de números maiores que 25 foi ", altos)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */