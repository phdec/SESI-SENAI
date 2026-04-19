programa
{
	
	funcao logico verificar_paridade(inteiro numero) {
		logico verif = falso
		se(numero % 2 == 0){
			verif = verdadeiro
		}
		retorne verif
	}
	
	funcao inicio()
	{
		inteiro num = 0, quantidade = 0
		logico verif
	
		para(inteiro i = 1; i <= 8; i++) {
			num = sorteia(1, 20)
			verif = verificar_paridade(num)
			escreva("\n\n O ", i, "º número sorteado foi ", num)

			se(verif == verdadeiro){
				quantidade += 1
				escreva(". E é par pela ", quantidade, "º vez!")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 480; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */