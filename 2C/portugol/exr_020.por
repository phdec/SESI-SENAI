programa
{
	
	funcao inicio()
	{
		real preco = 300.0, valorF = 0.0
		inteiro parcela = 0, desconto = 0, juros = 0
		cadeia pagamento = ""


		escreva(" Você gastou R$", preco, " na loja\n")
		escreva(" Você quer pagar à vista ou parcelar(máxima 3)?\n\n")
		escreva(" À vista = '1' / Parcelado = '2' ou '3': ")
		leia(parcela)
		
		se( parcela == 1 ){
			escreva("\n Qual será seu método de pagamento?\n")
			escreva(" 'dinheiro' ou 'débito'\n")
			escreva(" Digite aqui: ")
			leia(pagamento)
			se(pagamento == "Dinheiro" ou pagamento == "dinheiro"){
				desconto = 5
				escreva("\n Pagando em ", pagamento, " à vista você recebe um desconto de ", desconto, "%. ")
				valorF = preco - (preco * (desconto/100.0) )
				escreva("\n Com o desconto, sua compra fica: R$", valorF)
			}
			senao se( pagamento == "Débito" ou pagamento == "débito" ou pagamento == "debito"){
				desconto = 2
				escreva("\n Pagando em ", pagamento, " à vista você recebe um desconto de ", desconto, "%. ")
				valorF = preco - (preco * (desconto/100.0) )
				escreva("\n Com o desconto, sua compra fica: R$", valorF)
			}
			senao{
					escreva("  \n")
				}
		}
		senao se( parcela == 2 ){
			escreva("\n Qual será seu método de pagamento?\n")
			escreva(" 'crédito' ou 'boleto'\n")
			escreva(" Digite aqui: ")
			leia(pagamento)
			se( pagamento == "Crédito" ou pagamento == "crédito" ou pagamento == "credito"){
				juros = 3
				escreva("\n Pagando em ", pagamento, " parcelado em ", parcela, " vezes, você paga juros de ", juros, "%. ")
				valorF = preco + (preco * (juros/100.0) )
				escreva("\n Com os juros, sua compra fica: R$", valorF)
			}
			senao se( pagamento == "Boleto" ou pagamento == "boleto"){
				juros = 5
				escreva("\n Pagando em ", pagamento, " parcelado em ", parcela, " vezes, você paga juros de ", juros, "%. ")
				valorF = preco + (preco * (juros/100.0) )
				escreva("\n Com os juros, sua compra fica: R$", valorF)
			}
		}
		senao se( parcela == 3 ){
			escreva("\n Qual será seu método de pagamento?\n")
			escreva(" 'crédito' ou 'boleto'\n")
			escreva(" Digite aqui: ")
			leia(pagamento)
			se( pagamento == "Crédito" ou pagamento == "crédito" ou pagamento == "credito"){
				juros = 7
				escreva("\n Pagando em ", pagamento, " parcelado em ", parcela, " vezes, você paga juros de ", juros, "%. ")
				valorF = preco + (preco * (juros/100.0) )
				escreva("\n Com os juros, sua compra fica: R$", valorF)
			}
			senao se( pagamento == "Boleto" ou pagamento == "boleto"){
				juros = 9
				escreva("\n Pagando em ", pagamento, " parcelado em ", parcela, " vezes, você paga juros de ", juros, "%. ")
				valorF = preco + (preco * (juros/100.0) )
				escreva("\n Com os juros, sua compra fica: R$", valorF)
			}
		}
		senao{
			escreva("\n Quantidade de parcelas inválidas.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {preco, 6, 7, 5}-{parcela, 7, 10, 7}-{pagamento, 8, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */