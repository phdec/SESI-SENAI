programa
{
inclua biblioteca Util --> util

funcao inicio(){
  faca{

    cadeia opcao
    
    inteiro tamanho = 3
    inteiro linha
    inteiro coluna

    escreva("1 - jogar\ns - sair\nDigite: ")
    leia(opcao)

    escolha(opcao){
      caso '1': 

      faca{
        escreva("Digite o tamanho do mapa (3 até 9): ")
        leia(tamanho)

        se(tamanho < 3 ou tamanho > 9){escreva("\nTamanho inválido! Digite novamente.\n")}
      }enquanto(tamanho < 3 ou tamanho > 9)
      cadeia oceano[tamanho][tamanho]
      cadeia tela[tamanho][tamanho]

      para(linha = 0; linha < tamanho; linha++){
          para(coluna = 0; coluna < tamanho; coluna++){
              oceano[linha][coluna] = "🌊"
              tela[linha][coluna] = "⬜"
          }
      }

      inteiro naviosCriados = 0

      enquanto(naviosCriados < 3){
          linha = util.sorteia(0,tamanho - 1)
          coluna = util.sorteia(0,tamanho - 1)

          se(oceano[linha][coluna] == "🌊"){
              oceano[linha][coluna] = "🚢"
              naviosCriados++
          }
      }

      inteiro naviosEncontrados = 0
      inteiro tentativas = 0

      enquanto(naviosEncontrados < naviosCriados){
          // limpa()

          escreva("=== BATALHA NAVAL ===\n")
          escreva("Navios destruídos: ", naviosEncontrados, "/3\n")
          escreva("Tentativas: ", tentativas, "\n\n")

          escreva("  ")
          para(inteiro i = 0; i < tamanho; i++){
            escreva("  ", i)
          }
          escreva("\n")
          para(linha = 0; linha < tamanho; linha++){
              escreva(linha, " ")

              para(coluna = 0; coluna < tamanho; coluna++){
                  escreva(" ", tela[linha][coluna])
              }
              escreva("\n")
          }

          inteiro linhaEscolhida
          inteiro colunaEscolhida


          faca{
              escreva("\nLinha (0 a ", tamanho - 1, "): ")
              leia(linhaEscolhida)

              escreva("Coluna (0 a ", tamanho - 1, "): ")
              leia(colunaEscolhida)

              se(linhaEscolhida < 0 ou linhaEscolhida >= tamanho ou
                colunaEscolhida < 0 ou colunaEscolhida >= tamanho)
              {
                  escreva("\n❌ Posição inválida! Digite novamente.\n")
              }
              senao se(tela[linhaEscolhida][colunaEscolhida] != "⬜"){
                  escreva("\n⚠️ Você já atirou aqui!\n")
              }
          }enquanto(
              linhaEscolhida < 0 ou linhaEscolhida > tamanho - 1 ou
              colunaEscolhida < 0 ou colunaEscolhida > tamanho - 1 ou
              tela[linhaEscolhida][colunaEscolhida] != "⬜"
          )

          se(oceano[linhaEscolhida][colunaEscolhida] == "🚢"){
              escreva("\nVocê acertou um navio!\n")
              tela[linhaEscolhida][colunaEscolhida] = "🚢"
              naviosEncontrados++
          }senao{
              escreva("\nVocê atirou no mar!\n")
              tela[linhaEscolhida][colunaEscolhida] = "🌊"
          }

          escreva("\nPressione ENTER para continuar...")
          leia(opcao)
          tentativas++
      }

      escreva("\n\n🎉 Você destruiu todos os navios!\n\n")
      pare
      caso 's':
      pare
      caso contrario: escreva("Opção inválida! Digite novamente.\n")
    }
  }enquanto(opcao != 's')
}
}