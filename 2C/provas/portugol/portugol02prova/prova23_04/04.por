programa
{
	
	funcao real Euro(real brl){
		real euro = 5.96
		retorne brl / euro
	}

	funcao real Dolar(real brl){
		real dolar = 5.11
		retorne brl / dolar
	}

	 funcao real LibraEsterlina(real brl){
		real  libraEsterlina = 6.84
		retorne brl / libraEsterlina
	}
	
	funcao inicio()
	{
		real brl, dolar, euro, le // Libra Esterlina
		inteiro op // opção do sistema

		escreva(" --- Conversor de Moedas ---\n")

		faca{
			escreva("\n Digite o valor: R$")
			leia(brl)
			
			escreva("\n Considere:\n 1 - euro\n 2 - dólar\n 3 - libra esterlina\n 0 - sair\n")
			escreva("Digite sua opção: ")
			leia(op)
			
			escolha(op){
				caso 1:
					euro = Euro(brl)
					escreva(" O valor convertido é: ", euro)
				pare
				caso 2:
					dolar = Dolar(brl)
					escreva(" O valor convertido é: ", dolar)
				pare
				caso 3:
					le = LibraEsterlina(brl)
					escreva(" O valor convertido é: ", le)
				pare
				caso 0:
				pare
				caso contrario: escreva(" Valor inválido! Digite novamente.")
			
			}
		}enquanto(op != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 441; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */