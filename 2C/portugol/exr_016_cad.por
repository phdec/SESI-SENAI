programa
{
	
	funcao inicio()
	{
		inteiro idade = 0, contador = 1
		cadeia nome = "", infantil = "", adolescente = "", juvenil = ""
	
		escreva("   7 Atletas para seleção brasileira de natação.\n")
		escreva(" =================================================\n\n")
		escreva(" Digite seu nome e sua idade e veja a categoria que se enquadra.\n (Idade mínima de 6 e máxima de 18 anos)\n")
		
		faca{
			escreva(contador, "º nome: ")
			leia(nome)
			escreva(" idade: ")
			leia(idade)

			se( idade >= 6 e idade < 18 ){
				nome = nome
				contador = contador + 1
				se(idade < 10){
					infantil = infantil + nome + ", " + idade + " anos, infantil. "
				}
				senao se(idade <14){
					adolescente = adolescente + nome + ", " + idade + " anos, adolescente. "
				}
				senao{
					juvenil = juvenil + nome + ", " + idade + " anos, juvenil. "
				}
			}	
			senao{
				escreva(" IDADE INVÁLIDA.\n")
			}
		}enquanto(contador < 5)

		
			escreva(" INSCRIÇÕES CONFIRMADAS: \n")
			se( infantil != ""){
				escreva(infantil, "\n")
			}
			se(adolescente != ""){
				escreva(adolescente, "\n")
			}
			se( juvenil != ""){
				escreva(juvenil, "\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 843; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 6, 10, 5}-{nome, 7, 9, 4}-{infantil, 7, 20, 8}-{adolescente, 7, 35, 11}-{juvenil, 7, 53, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */