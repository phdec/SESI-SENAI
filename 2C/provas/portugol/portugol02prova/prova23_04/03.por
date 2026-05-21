programa
{
	
	funcao inteiro somar(inteiro num, inteiro soma){
		retorne num + soma
	}

	funcao inteiro calcMedia(inteiro qt /* quantidade*/, inteiro soma){
		retorne soma / qt
	}

	funcao inteiro somarBaixo(inteiro num, inteiro soma){
		inteiro media = 0, qt = 0
		para(inteiro i = 0; i < 20; i++){
					num = sorteia(10, 100)
		
					se(num >= 15 e num <= 25){
						escreva("\n Valor certo: ", num, "kg")
						soma = somar(num, soma)
						qt++
					}
		}
		se(qt > 0){
			media = calcMedia(qt, soma)
			escreva("\n\n Média dos certos: ", media, "kg")
		}
		senao{
			escreva("\n Não há nenhum baixo.")
		}
		retorne soma
	}
	
		funcao inteiro somarMedio(inteiro num, inteiro soma){
		inteiro media = 0, qt = 0
		para(inteiro i = 0; i < 20; i++){
					num = sorteia(10, 100)
		
					se(num >= 40 e num <= 60){
						escreva("\n Valor certo: ", num, "kg")
						soma = somar(num, soma)
						qt++
					}
		}
		se(qt > 0){
			media = calcMedia(qt, soma)
			escreva("\n\n Média dos certos: ", media, "kg")
		}
		senao{
			escreva("\n Não há nenhum médio.")
		}
		retorne soma
	}

		funcao inteiro somarAlto(inteiro num, inteiro soma){
		inteiro media = 0, qt = 0
		para(inteiro i = 0; i < 20; i++){
					num = sorteia(10, 100)
		
					se(num >= 80 e num <= 90){
						escreva("\n Valor certo: ", num, "kg")
						soma = somar(num, soma)
						qt++
					}
		}
		se(qt > 0){
			media = calcMedia(qt, soma)
			escreva("\n\n Média dos certos: ", media, "kg")
		}
		senao{
			escreva("\n Não há nenhum alto.")
		}
		retorne soma
	}
	
	
	funcao inicio()
	{
		inteiro num = 0, soma = 0, media = 0, op // opção do sistema

		escreva(" ---  Calcular peso de peças ---")

		faca{
			escreva("\n\n Considere:\n 1 - baixo\n 2 - médio\n 3 - alto\n 0 - sair\n")
			escreva("Digite sua opção: ")
			leia(op)

			escolha(op){
				caso 1:
					soma = somarBaixo(num, soma)
				escreva("\n\n Soma dos certos: ", soma, "kg\n")
				pare
				caso 2:
					soma = somarMedio(num, soma)
				escreva("\n\n Soma dos certos: ", soma, "kg\n")
				pare
				caso 3:
					soma = somarAlto(num, soma)
				escreva("\n\n Soma dos certos: ", soma, "kg\n")
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
 * @POSICAO-CURSOR = 1874; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {soma, 12, 48, 4}-{qt, 13, 21, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */