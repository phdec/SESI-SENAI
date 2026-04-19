programa
{
	
	funcao inicio()
	{
		real tomate = 5.35, cebola = 3.32, aipim = 2.87, btti = 4.43, cenoura = 3.59, chuchu = 1.79, vt
		inteiro qtdTomate = 0, qtdCebola = 0, qtdAipim = 0, qtdBtti = 0, qtdCenoura = 0, qtdChuchu = 0, contador = 0
		
		escreva("  Hortifruti\n")
		escreva("===================================================\n")
		escreva(" Indique a quantidade de cada item que você deseja.\n\n")

		faca{
		escreva("R$", tomate, " Tomate: ")
		leia(qtdTomate)
		se(qtdTomate >= 0){
		escreva("R$", cebola, " Cebola: ")
		leia(qtdCebola)
		se(qtdCebola >= 0){
		escreva("R$ ", aipim, " Aipim: ")
		leia(qtdAipim)
		se(qtdAipim >= 0){
		escreva("R$ ", btti, " Batata Inglesa: ")
		leia(qtdBtti)
		se(qtdBtti >=0){
		escreva("R$ ", cenoura, " Cenoura: ")
		leia(qtdCenoura)
		se(qtdCenoura >=0){
		escreva("R$ ", chuchu, " Chuchu: ")
		leia(qtdChuchu)
		se(qtdChuchu >=0){
			
		vt = (qtdTomate * tomate) + (qtdCebola * cebola) + (qtdAipim * aipim) + (qtdBtti * btti) + (qtdCenoura * cenoura) + (qtdChuchu * chuchu)

		se(vt >= 0){
			escreva(" O valor total da sua compra é de: R$ ", vt, ".\n")
		}
		senao{
			escreva(" Até mais!\n")
		}
		}senao{
			escreva("Valor inválido.")
			contador = contador + 5
			
		}
		}senao{
			escreva("Valor inválido.")
			contador = contador + 1
			
		}
		}senao{
			escreva("Valor inválido.")
			contador = contador + 1
			
		}
		}senao{
			escreva("Valor inválido.")
			contador = contador + 1
			
		}
		}senao{
			escreva("Valor inválido.")
			contador = contador + 1
			
		}
		}senao{
			escreva("Valor inválido.")
			contador = contador + 1
			
		}
		contador = contador + 1
		}enquanto(contador < 1)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */