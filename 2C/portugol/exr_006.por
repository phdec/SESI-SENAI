programa
{

    funcao inicio()
    {
        inteiro num1, num2, num3

		escreva("Digite 3 números, e vamos descobrir quais deles são divisíveis por 5 e 7 ao mesmo tempo;\n")
       	escreva("Digite o 1° número: ")
       	leia(num1)
       	escreva("Digite o 2° número: ")
       	leia(num2)
       	escreva("Digite o 3° número: ")
      	leia(num3)
      	
       	 se(num1 % 5 == 0 e num1 % 7 == 0){
            escreva("O 1° número é divísivel por 5 e 7 \n")
      	  }
       	 se(num2 % 5 == 0 e num2 % 7 == 0){
            escreva("O 2° número é divísivel por 5 e 7 \n")
      	  }
      	 se(num3 % 5 == 0 e num3 % 7 == 0){
            escreva("O 3° número é divísivel por 5 e 7 \n")
       	 }

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */