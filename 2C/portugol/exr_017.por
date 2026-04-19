programa
{
	
	funcao inicio()
	{
		caracter sexo
		real altura = 0.0, peso = 0.0

		escreva(" Calculadora de peso saudável para homens e mulheres.\n\n")
		escreva(" Homem = H / Mulher = M\n")
		escreva(" Qual seu sexo?: ")
		leia(sexo)
		escreva(" Digite sua altura (em metros): ")
		leia(altura)

		se(sexo == 'H' ou sexo == 'h' e altura > 0.0){
			peso = (72.7 * altura) - 58.0
			escreva(" O peso saudável para você é: ", peso)
		}
		senao se(sexo == 'M' ou sexo == 'm' e altura > 0.0){
			peso  = (62.1 * altura) - 44.7
			escreva(" O peso saudável para você é: ", peso)
		}
		senao{
		escreva(" \nO caracter selecionado é INVÁLIDO.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 557; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */