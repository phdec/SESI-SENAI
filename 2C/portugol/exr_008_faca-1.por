programa
{
	
	funcao inicio()
	{
		real Tomate = 5.35, Cebola = 3.32, Aipim = 2.87, Batatainglesa = 4.43, Cenoura = 3.59, Chuchu = 1.79
		inteiro QT = 0, QC = 0, QAI = 0, QBT = 0, QCN = 0, QCH = 0, i = 0
		real Vt = 0.0
		
		escreva("==================\n")
		escreva(" Super hortfruti!\n")
		escreva("==================\n")
		
		
		// TOMATE
		faca{
			escreva("R$ ", Tomate, " Tomate: ")
			leia(QT)
			se(QT < 0){
				escreva("O valor é invalido!\n")
			}senao{
				i++
			}
		}enquanto(i < 1)
		
		
		// CEBOLA
		faca{
			escreva("R$ ", Cebola, " Cebola: ")
			leia(QC)
			se(QC < 0){
				escreva("O valor é invalido!\n")
			}senao{
				i++
			}
		}enquanto(i < 2)
		
		
		// AIPIM
		faca{
			escreva("R$ ", Aipim, " Aipim: ")
			leia(QAI)
			se(QAI < 0){
				escreva("O valor é invalido!\n")
			}senao{
				i++
			}
		}enquanto(i < 3)
		
		
		// BATATA INGLESA
		faca{
			escreva("R$ ", Batatainglesa, " Batata Inglesa: ")
			leia(QBT)
			se(QBT < 0){
				escreva("O valor é invalido!\n")
			}senao{
				i++
			}
		}enquanto(i < 4)
		
		
		// CENOURA
		faca{
			escreva("R$ ", Cenoura, " Cenoura: ")
			leia(QCN)
			se(QCN < 0){
				escreva("O valor é invalido!\n")
			}senao{
				i++
			}
		}enquanto(i < 5)
		
		
		// CHUCHU
		faca{
			escreva("R$ ", Chuchu, " Chuchu: ")
			leia(QCH)
			se(QCH < 0){
				escreva("O valor é invalido!\n")
			}senao{
				i++
			}
		}enquanto(i < 6)
		
		
		Vt = Tomate * QT + Cebola * QC + Aipim * QAI + 
		     Batatainglesa * QBT + Cenoura * QCN + Chuchu * QCH
		
		escreva("\nO valor total da sua compra é: R$", Vt)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 252; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */