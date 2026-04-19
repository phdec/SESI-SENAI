programa
{
	
	funcao inicio()
	{
		inteiro num[8], pares[8], impares[8], i = 1, resultado = 0

		escreva(" Digite 7 números inteiros maiores do que 0,\n e vamos ver quais os pares e quais os ímpares.")
		
		faca{
			escreva("\n Digite o ", i, "°: ")
			leia(num[i])
			se ( num[i] > 0 ){
				resultado = num[i] % 2
				se ( resultado == 0 ){
					pares[i] = num[i]
				}
				senao{
					impares[i] = num[i]
				}
				i++
			}
			senao {
				escreva("\n O número precisa ser do tipo inteiro e positivo.\n")
		}
		}enquanto( i < 8 )

		para( i = 1; i < 8; i++){
			se( pares[i] != 0){
				escreva("\n O número: ", pares[i], " é par ")
			}
			se( impares[i] != 0 ){
				escreva("\n O número: ", impares[i], " é ímpar ")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 608; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pares, 6, 18, 5}-{impares, 6, 28, 7}-{i, 6, 40, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */