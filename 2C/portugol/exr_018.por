programa
{
	
	funcao inicio()
	{
			inteiro dian = 0
			cadeia dia = ""
	
		escreva(" Dias da semana\n")
		escreva(" Digite um número, e se dará o dia correspondente da semana\n")
		escreva(" Digite um número inteiro de 1 a 7: ")
		leia(dian)

		se( dian > 0 e dian < 8 ){
			se( dian == 1 ){
				dia = "Domingo"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			}
			senao se( dian == 2 ){
				dia = "Segunda-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			}
			senao se ( dian == 3 ){
				dia = "Terça-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			}
			senao se ( dian == 4 ){
				dia = "Quarta-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			}
			senao se ( dian == 5 ){
				dia = "Quinta-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			}
			senao se ( dian == 6 ){
				dia = "Sexta-Feira"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			}
			senao{
				dia = "Sábado"
				escreva("\n O dia da semana ", dian, " é: ", dia)
			}
		}
		senao{
			escreva("\n DIA DA SEMANA INVÁLIDO.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 366; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */