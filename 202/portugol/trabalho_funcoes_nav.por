programa {

  inclua biblioteca Util --> u
  inclua biblioteca Texto --> txt
  inclua biblioteca Tipos --> tp

  funcao inicio() {
      cadeia opcaoDigitada, opcao, nome
      inteiro opcaoFinal
      cadeia carros[6] = {
      "Porsche", 
      "Mustang",
			"Ferrari",
			"Camaro (Amarelo)",
			"Pagani",
			"Kwid"}
      real precos[6] = {
			1000000.00,
			600000.00,
			3000000.00,
			500000.00,
			1500000.00,
			80000.00
		}
    faca{
      escreva(" --- Concessionária de carros ---")
      escreva("\nC - Continuar\nS - Sair")
      escreva("\nSua opção: ")
      leia(opcaoDigitada)
      opcao = txt.caixa_alta(opcaoDigitada)
      escolha(opcao){
        caso 'S': 
        pare
        caso 'C':
          nome = fazerCadastro()
          escreva("\n1 - ver carros\n2 - comprar")
          escreva("\nSua opção: ")
          leia(opcao)
          escreva("\n")

          escolha(opcao){
            caso "1": verCarros(carros, precos)
            pare
            caso "2": 
              opcaoFinal = comprar(nome, carros, precos)
              se(opcaoFinal != 0){
                gerarRelatorio(nome, carros, precos, opcaoFinal)
              }
            pare
          }

        pare
        caso contrario: escreva("Opção inválida! Digite novamente.\n")
      }
    }enquanto(opcao != 'S')

  }

  funcao cadeia fazerCadastro(){
    cadeia nome

    escreva("Digite seu nome: ")
    leia(nome)
    
    retorne nome
  }

  funcao verCarros(cadeia carros[], real precos[]){
    
    para(inteiro i = 0; i < 6; i++){
      escreva(i + 1, " - ", carros[i], " R$", precos[i], "\n")
    }escreva("\n")
  }

  funcao inteiro comprar(cadeia nome, cadeia carros[], real precos[]){
    inteiro opcao

    verCarros(carros, precos)
    escreva("0 - Nenhum\n")

    escreva("\n", nome, ", digite sua opção: ")
    leia(opcao)

    se(opcao == 0){
      retorne opcao
    }

    escreva("\n\nParabéns pela compra de: ", carros[opcao - 1], "!\n\n")
    retorne opcao

  }

  funcao gerarRelatorio(cadeia nome, cadeia carros[], real precos[], inteiro opcaoFinal){
    escreva("Relatório:\n")
    escreva("Cliente: ", nome, "\nCarro: ", carros[opcaoFinal - 1], "\nPreço: ", precos[opcaoFinal - 1], "\nPlaca: ", gerarPlaca(), "\n\n")
  }

  funcao cadeia gerarPlaca(){
    cadeia placa
    cadeia letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    inteiro posicao[3]

    posicao[0] = u.sorteia(0, 25)
    posicao[1] = u.sorteia(0, 25)
    posicao[2] = u.sorteia(0, 25)

    inteiro numeros = u.sorteia(0, 9999)
    cadeia numerosCadeia
    numerosCadeia = tp.inteiro_para_cadeia(numeros, 10)
    numerosCadeia = txt.preencher_a_esquerda('0', 4, numerosCadeia)

    placa = txt.extrair_subtexto(letras, posicao[0], posicao[0] + 1)
    placa += txt.extrair_subtexto(letras, posicao[1], posicao[1] + 1)
    placa += txt.extrair_subtexto(letras, posicao[2], posicao[2] + 1)
    placa = placa + "-" + numerosCadeia

    retorne placa
  }
}