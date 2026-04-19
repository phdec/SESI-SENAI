programa
{
	
	funcao inicio()
	{
		inteiro num = 0, resp = 0, contador = 1
		cadeia pares = "", impares = ""

		escreva(" Vamos ver 7 números, se são par ou ímpar\n")
		
		escreva(" \nDigite apenas números inteiros e positivos e maiores que 0.\n\n")
		
		faca{
			escreva("Digite o ", contador, "º número: ")
			leia(num)
			escreva("\n")
			resp = num % 2

			se( num > 0 e num != 0.0){
				se(resp == 0){
					pares = pares + num + ", "
				}
				senao se(resp == 1){
					impares = impares + num + ", "
				}
				contador = contador + 1
			}
			senao{
				escreva("O número precisa ser do tipo inteiro e positivo.\n\n")

			}
		}
		enquanto(contador <=7)
		
		se( pares != "" ){
		escreva("Os números digitados: ", pares, " são pares.\n")
		}
		
		se( impares != "" ){
		escreva("Os números digitados: ", impares, " são ímpares.\n")
		}
		
		escreva("==============================================\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 511; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */