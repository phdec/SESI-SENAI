programa
{
	
	funcao logico dentro_do_intervalo(inteiro valor){
		logico dentroDoIntervalo = falso
		se( valor >= 15 e valor <= 25){
			dentroDoIntervalo = verdadeiro
		}
		retorne dentroDoIntervalo
	}
	
	funcao inicio()
	{
		inteiro num, somaIntervalo = 0

		para(inteiro i = 0; i < 10; i++){
			num = sorteia(1, 30)
			escreva(i+1, "º número sorteado: ", num, "\n")
			se(dentro_do_intervalo(num) == verdadeiro){
				somaIntervalo += num
			}
		}
		escreva("\nA soma dos números dentro do intervalo 15 e 25(inclusive) foi de: ", somaIntervalo)
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