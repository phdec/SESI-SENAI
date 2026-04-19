programa
{
	
	funcao inicio()
	{
		real saldoAntigo = 0.0, saldoAtual = 0.0, saldoFinal = 0.0, juros = 0.65, debito = 0.0, credito = 0.0
	
		escreva(" Calculadora de saldo.\n\n")
		escreva(" Digite o saldo antigo da sua conta: R$")
		leia(saldoAntigo)
		escreva(" Digite o débito: R$")
		leia(debito)
		escreva(" Digite o crédito: R$")
		leia(credito)

		saldoAtual = saldoAntigo - debito + credito
		saldoFinal = saldoAtual + ( saldoAtual * (juros/100.0) )
		
		escreva("\n Saldo antigo digitado: R$", saldoAntigo, ". \n")
		escreva("\n Seu saldo atual é: R$", saldoAtual, ". Mas você recebe juros de ", juros, "%,\n")
		escreva(" portanto, seu saldo final é de: R$", saldoFinal, ".\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {saldoAntigo, 6, 7, 11}-{saldoAtual, 6, 26, 10}-{saldoFinal, 6, 44, 10}-{juros, 6, 62, 5}-{debito, 6, 76, 6}-{credito, 6, 90, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */