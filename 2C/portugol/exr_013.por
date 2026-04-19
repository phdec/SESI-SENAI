programa
{
	
	funcao inicio()
	{
		real salariof = 1800.0, comissao = 0.0, vv = 0.0, salariot = 0.0
	
		escreva("  O salário fixo do funcionário é: R$", salariof, ".\n")
		escreva(" Mas ele ganha uma comissão por vendas, que varia\n de acordo com o valor vendido. Quanto ele vendeu este mês?\n")
		escreva(" Digite o valor vendido por ele: ")
		leia(vv)

		se( vv >=0 ){
			se( vv >=0 e vv <= 10000.0 ){
				comissao = vv * 0.03
				salariot = salariof + comissao
				escreva(" Pelas vendas, o salário total dele este mês é de: R$", salariot)
			}
			senao se( vv > 10000.0 e vv <= 30000.0 ){
				comissao = vv * 0.05
				salariot = salariof + comissao
				escreva(" Pelas vendas, o salário total dele este mês é de: R$", salariot)
			}
			senao{
				comissao = vv * 0.08
				salariot = salariof + comissao
				escreva(" Pelas vendas, o salário total dele este mês é de: R$", salariot)
			}
		}
		senao{
			escreva(" O valor digitado é inválido.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 268; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */