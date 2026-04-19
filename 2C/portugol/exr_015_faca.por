programa
{
	
	funcao inicio()
	{	
		inteiro num = 0, contador = 1, resultado = 0

		escreva(" Digite 7 números inteiros maiores do que 0,\n e vamos ver quais os pares e quais os ímpares.")
			
		faca{
			escreva("\n Digite o ", contador, "°: ")
			leia(num)
			se ( num > 0 ){
				resultado = num % 2
				se ( resultado == 0 ){
					escreva(" O número", num, " é par ")
				}
				senao{
					escreva(" O número", num, " é ímpar ")
				}
				contador++
			}
			senao {
				escreva("\n O número precisa ser do tipo inteiro e positivo.\n")1
				
			}
		}enquanto ( contador < 8 )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 547; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */