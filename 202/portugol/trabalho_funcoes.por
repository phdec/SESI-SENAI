programa {

  inclua biblioteca Util --> u
  inclua biblioteca Texto --> txt
  inclua biblioteca Tipos --> tp

  funcao inicio() {
    gerarPlaca()
  }

  funcao gerarPlaca(){
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
    escreva(placa)
  }
}
