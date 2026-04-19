programa
{
	
	funcao inicio()
	{
		real Ga = 6.3, Al = 5.3, qtdLitro = 0.0, desconto = 0.0, precof = 0.0
		caracter combustivel
	
		escreva(" Gasolina: R$", Ga, " //")
		escreva(" Álcool: R$", Al, "\n")
		escreva("\n PROMOÇÃO:\n● até 20 litros para a gasolina, desconto de 3%, acima disto, o desconto é de 5%.\n● até 20 litros para álcool, desconto de 2%, acima disto, o desconto é de 4%.\n")

		escreva("\n Gasolina = G, Álcool = A.\n")
		escreva(" Você quer Gasolina ou Álcool?: ")
		leia(combustivel)

		se( combustivel == 'G' ou combustivel == 'g'){
			escreva(" Quantos litros de gasolina?: ")
			leia(qtdLitro)
			se( qtdLitro >=0.0 e qtdLitro <=20.0 ){
				desconto = qtdLitro * 0.03
				precof = Ga * qtdLitro - desconto
				escreva(" Ótimo. Já que você comprou ", qtdLitro, " litros de ", combustivel, ", com o desconto, fica: R$", precof)
			}
			senao se(qtdLitro >=0.0 ){
				desconto = qtdLitro * 0.05
				precof = Ga * qtdLitro - desconto
				escreva(" Ótimo. Já que você comprou ", qtdLitro, " litros de ", combustivel, ", com o desconto, fica: R$", precof)
			}
			senao {
				escreva("Valor de combustível inválido.")
			}
		}
		
		senao se ( combustivel == 'A' ou combustivel == 'a'){
			escreva(" Quantos litros de álcool?: ")
			leia(qtdLitro)
			se( qtdLitro >=0.0 e qtdLitro <=20.0 ){
				desconto = qtdLitro * 0.02
				precof = Al * qtdLitro - desconto
				escreva(" Ótimo. Já que você comprou ", qtdLitro, " litros de ", combustivel, ", com o desconto, fica: R$", precof)
			}
			senao se(qtdLitro >=0.0){
				desconto = qtdLitro * 0.04
				precof = Ga * qtdLitro - desconto
				escreva(" Ótimo. Já que você comprou ", qtdLitro, " litros de ", combustivel, ", com o desconto, fica: R$", precof)
			}
			senao {
				escreva("Valor de combustível inválido.")
			}
		}
		senao {
			escreva(" Digite 'G' para gasolina ou 'A' para álcool.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 820; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */