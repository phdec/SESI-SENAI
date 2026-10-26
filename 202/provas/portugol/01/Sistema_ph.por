programa
{
    funcao inicio()
    {
        inteiro opcao
        real resultado
        real valor
        inteiro quantidade
        cadeia nome
        inteiro qtd
        inteiro horasTrabalhadas

        opcao = 0

        enquanto (opcao != 8)
        {
            escreva("\n===== SISTEMA DE LIMPEZA E EQUIPAMENTOS =====\n")
            escreva("1 - Exemplo: mostrar aviso de seguranca\n")
            escreva("2 - Exemplo: apresentar quantidade de equipamento\n")
            escreva("3 - Exemplo: calcular dobro de um valor\n")
            escreva("4 - Mostrar aviso de limpeza\n")
            escreva("5 - Mostrar equipamento e quantidade\n")
            escreva("6 - Calcular salario\n")
            escreva("7 - Calcular total da compra\n")
            escreva("8 - Encerrar\n")
            escreva("Escolha uma opcao: ")
            leia(opcao)

            escolha (opcao)
            {
                caso 1:
                    mostrarAvisoSeguranca()
                    pare

                caso 2:
                    escreva("Nome do equipamento: ")
                    leia(nome)
                    escreva("Quantidade: ")
                    leia(qtd)
                    apresentarEquipamento(nome, qtd)
                    pare

                caso 3:
                    escreva("Digite um valor: ")
                    leia(valor)
                    resultado = calcularDobro(valor)
                    escreva("Dobro: ", resultado, "\n")
                    pare

                caso 4:
                    // Chame a funcao mostrarAviso()
                    mostrarAviso()
                    pare

                caso 5:
                    // Leia o nome do equipamento e a quantidade
                    // Chame a funcao mostrarEquipamento(nome, qtd)
                    escreva("Nome do equipamento: ")
                    leia(nome)
                    escreva("Quantidade: ")
                    leia(qtd)
                    mostrarEquipamento(nome, qtd)
                    pare

                caso 6:
                    // Leia o valor por hora e as horas trabalhadas
                    // Chame calcularSalario e guarde em 'resultado'
                    // Exiba o resultado
                    escreva("Valor por hora: R$")
                    leia(valor)
                    escreva("Horas trabalhadas: ")
                    leia(horasTrabalhadas)
                    resultado = calcularSalario(valor, horasTrabalhadas)
                    escreva("Salário: R$", resultado, "\n")
                    pare

                caso 7:
                    // Leia o valor do produto e a quantidade
                    // Chame calcularTotal e guarde em 'resultado'
                    // Exiba o resultado
                    escreva("Valor do produto: ")
                    leia(valor)
                    escreva("Quantidade: ")
                    leia(qtd)
                    resultado = calcularTotal(valor, qtd)
                    escreva("Valor total: R$", resultado, "\n")
                    pare

                caso 8:
                    escreva("Programa encerrado!\n")
                    pare

                caso contrario:
                    escreva("Opcao invalida!\n")
            }
        }
    }


    // FUNCOES DE EXEMPLO (JA IMPLEMENTADAS - NAO ALTERAR)  ------------------------------------------

    funcao mostrarAvisoSeguranca()
    {
        escreva("Bem-vindo ao sistema de limpeza e equipamentos!\n")
    }

    funcao apresentarEquipamento(cadeia nomeEquip, inteiro qtdEquip)
    {
        escreva("Equipamento: ", nomeEquip, "\n")
        escreva("Quantidade disponivel: ", qtdEquip, "\n")
    }

    funcao real calcularDobro(real numero)
    {
        real dobro
        dobro = numero * 2

        retorne dobro
    }


    // DESENVOLVA AS QUATRO FUNCOES ABAIXO ------------------------------------------

    // 1. mostrarAviso
    // Sem parametro e sem retorno.
    // Exibir aviso sobre desligar os equipamentos antes da limpeza.
    // Use apenas escreva(). Sem retorne.
    // DESENVOLVA AQUI

    funcao mostrarAviso(){
    	escreva("\n              --- AVISO ---\n\n Desligue os equipamentos antes da limpeza!\n\n")
    	escreva("--------------------------------------------\n\n")
    }



    // 2. mostrarEquipamento
    // Com parametros e sem retorno.
    // Receber nome (cadeia) e quantidade (inteiro) e exibir os dois.
    // Use escreva() para os parametros. Sem retorne.
    // DESENVOLVA AQUI

    funcao mostrarEquipamento(cadeia nome, inteiro qtd){
    	limpa()
    	escreva("\nNome do equipamento: ", nome, ".\nQuantidade disponível: ", qtd, "\n\n")
    }



    // 3. calcularSalario
    // Com parametros e com retorno.
    // Receber valorHora e horas (reais), calcular valorHora * horas
    // e retornar o salario. Sem escreva() dentro da funcao.
    // DESENVOLVA AQUI

    funcao real calcularSalario(real valorHora, inteiro horasTrabalhadas){
    	retorne valorHora * horasTrabalhadas
    }



    // 4. calcularTotal (COMPLETAR)
    // Com parametros e com retorno.
    // Calcular total = valor * quantidade.
    // Se total > 1000, aplicar 10% de desconto.
    // Retornar o valor final. Sem escreva() dentro da funcao.
    funcao real calcularTotal(real valor, inteiro quantidade)
    {
        // COMPLETE AQUI
        real valorTotal = valor * quantidade
        real desconto = 0.10
        real valorFinal
        se(valorTotal > 1000.0){
        	real valorDesconto = valorTotal * desconto
        	valorFinal = valorTotal - valorDesconto
        	retorne valorFinal
        }
        retorne valorTotal
    }

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2971; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */