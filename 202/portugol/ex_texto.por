programa {
  inclua biblioteca Texto --> txt

  funcao inicio() {
    // completa o texto à esquerda até atigir o tamanho informado
    cadeia cad
    leia(cad)
    cadeia codigo = txt.preencher_a_esquerda("*", 7, cad)
    escreva(codigo)
  }
}