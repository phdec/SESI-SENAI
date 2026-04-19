programa
{
	inclua biblioteca Util --> u

	funcao imprimir_tabuada(inteiro numero){
		escreva("----------------")
		escreva("\n Tabuada do ", numero, "\n\n")
		
		para(inteiro i = 1; i <= 10; i++){
			escreva(" ", i, " X ", numero, " = ", numero * i, "\n")
		}
	}
	
	funcao inicio()
	{
		inteiro numero = 0, sorteados[3], qtd = 0, r = 0
		logico repetido

		para(qtd = 0; qtd < 3; qtd++){
			faca{
				repetido = falso
				numero = u.sorteia(1, 10)
				para(r = 0; r < qtd; r++){
					se(numero == sorteados[r]){
						repetido = verdadeiro
						pare
					}
				}
			}enquanto(repetido == verdadeiro)
			sorteados[qtd] = numero
			imprimir_tabuada(sorteados[qtd])
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 111; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */