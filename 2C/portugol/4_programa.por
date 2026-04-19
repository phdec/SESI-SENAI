programa
{
	
	funcao inicio()
	{
		inteiro idade = 0
		cadeia nome = ""
		escreva("Digite o seu nome: ")
		leia(nome)
		escreva("\n")
		escreva("Digite a sua idade: ")
		leia(idade)
		escreva("\n")

		se(idade > 0 e idade < 16){
			escreva(" Em função da sua idade você não pode votar. \n")

		}
		
		senao se(idade >= 16 e idade <= 17){
			escreva(nome, ", para você o voto é facultativo. \n")
		}

		senao se(idade >= 18 e idade <70){
			escreva(nome, ", para você o voto é obrigatório! \n")
		}

		senao se(idade >= 70){
			escreva(nome, ", para você o voto é facultativo. \n")
		}
		
		senao{
			escreva("inválido \n")		
		}

			escreva("===============  \n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */