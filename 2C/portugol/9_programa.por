programa
{	// programa da estrutura para faça. Nome teórico
	
	funcao inicio()
	{
		inteiro num = 0, soma = 0, somador = 0

		escreva(" Programa simulador de soma\n")
		escreva(" Digite um número: ")
		leia(num)
		escreva(" Digite a quantidade de vezes somadas: ")
		leia(somador)

		para(inteiro i = 0; i < somador; i++){
			soma = soma + num
			escreva(soma, "\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */