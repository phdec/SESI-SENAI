programa
{
	
	funcao inicio()
	{
		inteiro num, qtdeMenor = 0, qtdeMaior = 0, mediaMenor = 0, mediaMaior = 0, somaMenor = 0, somaMaior = 0, contador = 0
		
		escreva(" Vamos ver a média de 7 números?\n")
		escreva(" consideração: média dos números maiores ou igual a seis e média dos números menores que seis.\n")

		escreva(" Importante, só pode entrar na conta, os números que estão no intervalo entre 0 e 10, sendo estes números positivos.\n")
		escreva(" Digite os 7 números: \n")
		

		faca{
			escreva("Aqui: ")
			leia(num)
			se( num >=0 e num <=10 ){
				se( num < 6 ){
					somaMenor = somaMenor + num
					qtdeMenor = qtdeMenor + 1
				}
				senao{
					somaMaior = somaMaior + num
					qtdeMaior = qtdeMaior + 1
				}
			}
			senao{
				escreva("Número fora do valor permitido.\n")
				
			}
			contador = contador + 1
		}enquanto ( contador < 7 )

		se ( qtdeMenor > 0 ){
			mediaMenor = somaMenor / qtdeMenor
			escreva(" Média dos números menores que 6 é: ", mediaMenor, ".\n")
		}
		se ( qtdeMaior > 0 ){
			mediaMaior = somaMaior / qtdeMaior
			escreva(" Média dos números maiores ou iguais a 6 é: ", mediaMaior, ".\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1152; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 6, 10, 3}-{qtdeMenor, 6, 15, 9}-{qtdeMaior, 6, 30, 9}-{mediaMenor, 6, 45, 10}-{mediaMaior, 6, 61, 10}-{somaMenor, 6, 77, 9}-{somaMaior, 6, 92, 9}-{contador, 6, 107, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */