programa
{
	
	funcao inicio()
	{
		inteiro num1 = 0, num2 = 0, maior = 0, menor = 0, contador = 0
		
		escreva("Digite três números diferentes, e vamos ver qual é o maior e o menor deles.\n")

		faca{
			escreva("1: ")
			leia(num1)
			escreva("2: ")
			leia(num2)
			se ( num1 > num2 ){
				menor = num2
				maior = num1
			}senao{
				maior = num2
				menor = num1
			}
			escreva("3: ")
			leia(num1)
			se( num1 > maior ){
				maior = num1
			}senao se ( num1 < menor ){
				menor = num1
			}senao {
				num1 = num1
			}
			contador = contador + 1
		}enquanto(contador < 1)

		escreva(" O maior número é o: ", maior, ",")
		escreva(" e o menor: ", menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 664; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num1, 6, 10, 4}-{num2, 6, 20, 4}-{maior, 6, 30, 5}-{menor, 6, 41, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */