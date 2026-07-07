programa
{
inclua biblioteca Util --> util

```
funcao inicio()
{
    // =====================================
    // CRIE DUAS MATRIZES 4x4
    //
    // oceano -> armazenará água e navios
    // tela   -> armazenará o que o jogador vê
    // =====================================

    // ===== INÍCIO DO CÓDIGO =====



    // ===== FIM DO CÓDIGO =====

    inteiro linha
    inteiro coluna

    inteiro naviosEncontrados = 0

    // =====================================
    // PREENCHA A MATRIZ oceano COM 🌊
    //
    // PREENCHA A MATRIZ tela COM ⬜
    //
    // Utilize dois laços PARA:
    // um para as linhas e outro para
    // as colunas.
    // =====================================

    // ===== INÍCIO DO CÓDIGO =====



    // ===== FIM DO CÓDIGO =====

    // =====================================
    // SORTEIA 3 NAVIOS 🚢
    //
    // Não altere este trecho.
    // =====================================

    inteiro naviosCriados = 0

    enquanto(naviosCriados < 3)
    {
        linha = util.sorteia(0,3)
        coluna = util.sorteia(0,3)

        se(oceano[linha][coluna] == "🌊")
        {
            oceano[linha][coluna] = "🚢"
            naviosCriados++
        }
    }

    // =====================================
    // LOOP PRINCIPAL DO JOGO
    // =====================================

    enquanto(naviosEncontrados < 3)
    {
        limpa()

        escreva("=== BATALHA NAVAL ===\n")
        escreva("Navios destruídos: ", naviosEncontrados, "/3\n\n")

        // =====================================
        // EXIBA A MATRIZ tela
        //
        // Exemplo:
        //
        //    0 1 2 3
        // 0  ⬜ ⬜ ⬜ ⬜
        // 1  ⬜ ⬜ ⬜ ⬜
        // 2  ⬜ ⬜ ⬜ ⬜
        // 3  ⬜ ⬜ ⬜ ⬜
        //
        // Utilize dois laços PARA.
        // =====================================

        // ===== INÍCIO DO CÓDIGO =====



        // ===== FIM DO CÓDIGO =====

        inteiro linhaEscolhida
        inteiro colunaEscolhida

        // =====================================
        // VALIDAÇÃO DA POSIÇÃO
        //
        // Não altere este trecho.
        // =====================================

        faca
        {
            escreva("\nLinha (0 a 3): ")
            leia(linhaEscolhida)

            escreva("Coluna (0 a 3): ")
            leia(colunaEscolhida)

            se(linhaEscolhida < 0 ou linhaEscolhida > 3 ou
               colunaEscolhida < 0 ou colunaEscolhida > 3)
            {
                escreva("\n❌ Posição inválida!\n")
            }
            senao se(tela[linhaEscolhida][colunaEscolhida] != "⬜")
            {
                escreva("\n⚠️ Você já atirou aqui!\n")
            }

        }
        enquanto(
            linhaEscolhida < 0 ou linhaEscolhida > 3 ou
            colunaEscolhida < 0 ou colunaEscolhida > 3 ou
            tela[linhaEscolhida][colunaEscolhida] != "⬜"
        )

        // =====================================
        // VERIFIQUE O CONTEÚDO DA POSIÇÃO
        //
        // Consulte a matriz oceano usando:
        //
        // oceano[linhaEscolhida][colunaEscolhida]
        //
        // Se encontrar um 🚢:
        // - Mostrar mensagem de acerto
        // - Incrementar naviosEncontrados
        //
        // Caso contrário:
        // - Mostrar mensagem de erro
        // =====================================

        // ===== INÍCIO DO CÓDIGO =====



        // ===== FIM DO CÓDIGO =====

        escreva("\nPressione ENTER para continuar...")
        leia()
    }

    // FIM DO JOGO
    // =====================================
    // EXIBA UMA MENSAGEM DE VITÓRIA
    //
    // Exemplo:
    // 🎉 Você destruiu todos os navios!
    // =====================================

    // ===== INÍCIO DO CÓDIGO =====



    // ===== FIM DO CÓDIGO =====
}
```

}
