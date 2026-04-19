programa
{
	
	funcao inteiro obter_valor_impar(inteiro n) {
		inteiro impar
		se ( n % 2 == 1 ) {
			impar = n
		}senao{
			impar = 0
		}
		retorne impar
	}
	
	funcao inicio()
	{
		inteiro n, imparOuZero, soma = 0
	
		para(inteiro i = 1; i <= 6; i++) {
			n = sorteia(1, 10)
			imparOuZero = obter_valor_impar(n)
			soma += imparOuZero

			escreva(" O ", i, "º retorno foi: ", imparOuZero, "\n")
		}

		escreva("\n A soma total dos ímpares foi de: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 4, 42, 1}-{impar, 5, 10, 5}-{n, 16, 10, 1}-{imparOuZero, 16, 13, 11}-{soma, 16, 26, 4}-{i, 18, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */