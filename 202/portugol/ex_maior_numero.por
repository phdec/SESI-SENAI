programa {

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    // retorna o maior entre dois números
    real num1, num2
    leia(num1)
    leia(num2)

    real maior = mat.maior_numero(num1, num2)
    escreva(maior)
  }
}
