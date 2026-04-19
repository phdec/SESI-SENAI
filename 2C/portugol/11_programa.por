programa
{

	funcao inteiro somarNum(inteiro num, inteiro soma){
		retorne soma + num
	}
	
	funcao inicio()
	{
		inteiro num = 0, soma = 0

		para(inteiro i = 0; i < 3; i++){
			num = sorteia(1,30)
			escreva(" O número do sorteio foi: ", num, "\n")

			soma = somarNum(num, soma)
		}

		escreva(" A soma dos números sorteados foi: ", soma, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 90; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */