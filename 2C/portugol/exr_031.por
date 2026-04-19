programa
{
	
	funcao inteiro verificar_meta(inteiro soma_atual){
		retorne soma_atual
	}
	
	funcao inicio()
	{
		inteiro num, soma_atual = 0, qtd = 0

		
		escreva(" Iremos sortear números e calcular a soma deles até alcançar ou ultrapassar 50.\n")
		escreva("--------------------------------------------------------------------------------\n\n")
		
		faca{
			num = sorteia(1,10)
			soma_atual += num
			qtd++
			escreva(" O ", qtd, "º número sorteado foi: ", num, "\n")
			escreva(" A soma atual está em: ", soma_atual, "\n\n")
		}enquanto(verificar_meta(soma_atual) <= 50)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 345; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {soma_atual, 4, 39, 10}-{num, 10, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */