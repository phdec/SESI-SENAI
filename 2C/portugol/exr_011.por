programa
{
	
	funcao inicio()
	{
		real cobranca = 0.0, taxa = 0.0, valorfixo = 5.0
		inteiro msg = 0, msgadd = 0
	
		escreva(" Plano Básico: R$", valorfixo, ".\n")
		escreva(" Deseja enviar quantas mensagens? \n\r")
		leia(msg)
		escreva("\n")
		
		se( msg <= 75){
			escreva(" O valor fixo do plano é: R$", valorfixo)
		}
		senao se( msg > 75 e msg < 240){
			msgadd = msg - 75
			taxa = 0.05
			cobranca = valorfixo + (taxa * msgadd)
			escreva(" Além do valor fixo, é cobrado uma taxa de R$", taxa, " por mensagem enviada.\n O valor do seu plano é de R$", cobranca, ".\n")
		}
		senao{
			msgadd = msg - 75
			taxa = 0.10
			cobranca = valorfixo + (taxa * msgadd)
			escreva(" Além do valor fixo, é cobrado uma taxa de R$", taxa, " por mensagem enviada.\n O valor do seu plano é de R$", cobranca, ".\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 67; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */