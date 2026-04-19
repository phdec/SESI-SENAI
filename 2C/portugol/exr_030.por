programa
{
	
	funcao logico verificarPar(inteiro n){
		logico par = falso
		se(n % 2 == 0){
			par = verdadeiro
		}
		retorne par
	}
	
	funcao inicio()
	{
		inteiro num, somaPares = 0, somaImpares = 0

		para(inteiro i = 0; i < 10; i++){
			num = sorteia(1, 10)
			se(verificarPar(num) == verdadeiro){
				somaPares += num
			}
			senao{
				somaImpares +=num
			}
		}

		escreva(" A soma dos pares é: ", somaPares)
		escreva("\n A soma dos ímpares é: ", somaImpares)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 472; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */