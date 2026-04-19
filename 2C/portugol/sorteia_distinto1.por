programa
{
	
	funcao inicio()
	{
		inteiro num = 0, sorteados[3], qtd = 0, r = 0
		logico repetido = falso

		para(qtd = 0; qtd < 3; qtd++){
			faca{
			num = sorteia(1, 3)
			para(r = 0; r < qtd; r++){
				se(num == sorteados[r]){
					repetido = verdadeiro
					se(repetido == verdadeiro){
						pare
					}
				}
				senao{
					repetido = falso
				}
			}
			}enquanto(repetido == verdadeiro)
			sorteados[qtd] = num
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 85; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {sorteados, 6, 19, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */