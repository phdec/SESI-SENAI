programa
{
	
	funcao inteiro calcMediaPar(inteiro pares, inteiro somaPares){
		retorne somaPares / pares
	}

	funcao inteiro calcMediaImpar(inteiro impares, inteiro somaImpares){
		retorne somaImpares / impares
	}
	funcao inicio()
	{
		inteiro num, somaPares = 0, somaImpares = 0, mediaPares = 0, pares = 0, impares = 0, mediaImpares = 0

		para(inteiro i = 1; i <= 7; i++){
			num = sorteia(1,10)
			escreva(" O ", i, "° número sorteado foi: ", num, "\n")

			se(num % 2 == 0){
				pares++
				somaPares += num
			}
			senao{
				impares++
				somaImpares += num
			}
		}

		mediaPares = calcMediaPar(pares, somaPares)
		mediaImpares = calcMediaImpar(impares, somaImpares)
		
		se(pares > 0){
			escreva("\n A média dos pares é: ", mediaPares)
		}
		se(impares > 0){
		escreva("\n A média dos ímpares é: ", mediaImpares)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 28; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pares, 4, 37, 5}-{impares, 8, 39, 7}-{num, 13, 10, 3}-{somaPares, 13, 15, 9}-{somaImpares, 13, 30, 11}-{mediaPares, 13, 47, 10}-{mediaImpares, 13, 87, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */