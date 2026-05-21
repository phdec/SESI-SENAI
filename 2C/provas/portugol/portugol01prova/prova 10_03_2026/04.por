programa
{
	
	funcao inicio()
	{
		inteiro qtParafusos
	
		escreva(" Programa que calcula se a quantidade de parafusos é divisível por 5\n")
		escreva("=====================================================================\n")
		
		faca{
				escreva(" (Digite -1 para encerrar o programa.)\n")
				escreva(" Somente números entre o intervalo de 0 a 50 são aceitos.\n")
				escreva("\n Digite a quantidade de parafusos que contém na caixa: ")
				leia(qtParafusos)

				se(qtParafusos >= 0 e qtParafusos <= 50){ // Define o intervalo de números aceitos
	
					se( qtParafusos % 5 == 0){
						escreva(" O número ", qtParafusos, " é divisível por 5!\n\n")
					}
					senao{
						escreva(" O número não é divisível por 5!\n\n")
					}
				}
				senao se(qtParafusos != -1){ // caso não esteja entre esse intervalo, aparecerá essa mensagem. Exceto se o número for -1
					escreva(" O valor digitado é inválido!\n\n")
				}
		}enquanto(qtParafusos != -1) // o programa funciona enquanto o número digitado for diferente de -1
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1026; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */