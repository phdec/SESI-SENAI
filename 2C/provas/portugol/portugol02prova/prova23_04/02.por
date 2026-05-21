programa
{
	
	funcao inteiro somar(inteiro num, inteiro soma){
		retorne num + soma
	}

	funcao inteiro tres(inteiro num, inteiro soma){
		para(inteiro i = 0; i < 20; i++){
					num = sorteia(1, 30)
		
					se(num % 3 == 0){
						escreva("\n Valor certo: ", num)
						soma = somar(num, soma)
					}
		}
		retorne soma
	}

	funcao inteiro cinco(inteiro num, inteiro soma){
		para(inteiro i = 0; i < 20; i++){
					num = sorteia(1, 30)
		
					se(num % 5 == 0){
						escreva("\n Valor certo: ", num)
						soma = somar(num, soma)
					}
		}
		retorne soma
	}

		funcao inteiro sete(inteiro num, inteiro soma){
		para(inteiro i = 0; i < 20; i++){
					num = sorteia(1, 30)
		
					se(num % 7 == 0){
						escreva("\n Valor certo: ", num)
						soma = somar(num, soma)
					}
		}
		retorne soma
	}
	
	funcao inicio()
	{
		inteiro num = 0, soma = 0, op // opção do sistema

		escreva(" ---  Números divisíveis por 3, 5 ou 7 ---")

		faca{
			escreva("\n\n Considere:\n 3 - 3(três)\n 5 - 5(cinco)\n 7 - 7(sete)\n 0 - sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 3:
					soma = tres(num, soma)
				pare
				caso 5:
					soma = cinco(num, soma)
				pare
				caso 7:
					soma = sete(num, soma)
				pare
				caso 0:
				pare
				caso contrario: escreva(" Valor inválido! Digite novamente.")
			
			}
			escreva("\n\n Soma dos certos: ", soma)
		}enquanto(op != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 566; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */