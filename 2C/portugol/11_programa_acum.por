programa
{

	funcao inteiro somarNum(inteiro num, inteiro acumulador){
		retorne acumulador + num
	}
	
	funcao inicio()
	{
		inteiro num = 0, somaTotal = 0, acumulador = 0

		para(inteiro i = 0; i < 3; i++){
			num = sorteia(1,10)
			escreva(" O número do sorteio foi: ", num, "\n")

			somaTotal = somarNum(num, acumulador)
			acumulador = somaTotal
		}

		escreva(" A soma dos números sorteados foi: ", somaTotal, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 91; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */