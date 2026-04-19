programa
{
	
	funcao inicio()
	{
		inteiro contador = 0
		real A = 0.0, B = 0.0, C = 0.0
		
		escreva(" Programa que classifica o tipo de um triângulo como: equilátero, isósceles ou escaleno.\n")

		faca{
			escreva("Lado A: ")
			leia(A)
			escreva("Lado B: ")
			leia(B)
			escreva("Lado C: ")
			leia(C)
			se( A >= 0 e B >= 0 e C >= 0){
			se( A + B >= C ou A + C >= B ou B + C >= A ){
				se ( A == B e A == C e B == C ){
					escreva("\n O triângulo é equilátero.\n")
				}senao se( A != B e A != C e B != C ){
					escreva("\n O triângulo é escaleno.\n")
				}senao{
					escreva("\n O triângulo é isósceles.\n")
				}
				contador = contador + 1
			}
			}
			senao {
				escreva(" Os valores que você forneceu não formam um triângulo.\n")
			}
		}enquanto(contador < 1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 663; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */