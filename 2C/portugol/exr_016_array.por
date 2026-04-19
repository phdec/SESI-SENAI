programa
{
    
    funcao inicio()
    {
        inteiro idade[5], i = 1
        cadeia nome[5], class[8]

        escreva("Seleção de atletas! \n")
        escreva("Digite: Nome e idade do atleta. \n")
        para(i = 1; i < 4; i ++)
            {
                escreva(i, "° Digite o nome do atleta: ")
                leia(nome[i])
                escreva("Digite a idade do atleta: ")
                leia(idade[i])
        
        class[5] ="Sem classificação"
        
        se(idade[i] >=6 e idade[i] <=9){
            class[i] = "Classificação infantil \n"
        }
        senao se(idade[i] >=10 e idade[i] <=13){
            class[i] = "Classificação adolescente \n"
        }
        senao se(idade[i] >=14 e idade [i]<=17){
            class[i] = "Classificação juvenil \n"
        }
        senao{
            class[i] = "Sem classificação esportiva"
        }
        
            }
        para(i = 1; i < 4; i ++)
            {
                escreva("============================================= \n")
                escreva("Nome: ", nome[i], "\n Idade: ", idade[i], "\n Classificação: ", class[i])
                escreva("============================================= \n")
            }
        

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 69; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 6, 26, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */