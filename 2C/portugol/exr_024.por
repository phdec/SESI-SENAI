programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Util --> u
	
	funcao real calcular_media(real soma, inteiro quantidade) {
		retorne soma / quantidade
	}
	
	funcao inicio()
	{
		inteiro num = 0, quantidade = 0
		real  media = 0.0, soma = 0.0
	
		para(inteiro i = 1; i <= 10; i++) {
			num = u.sorteia(1, 30)
			soma += num
			quantidade = i
			escreva(" o ", quantidade, "º número sorteado foi ", num, "\n")
			
		}

		escreva(" \nA soma dos números foi ", soma, "\n")
		media = calcular_media(soma, quantidade)
		escreva(" A média dos números é ", mat.arredondar(media, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */