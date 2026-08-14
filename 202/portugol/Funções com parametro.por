programa {
  funcao inicio() {
    //escreva(somar(150.0,320.0))  

    // escreva("A média do aluno é: ", media(7.0,5.0,9.0))

    escreva("O valor do desconto é: ", valorDesconto(1000.00, 15.00))
  }

  funcao real somar(real numero1, real numero2){
    retorne numero1 + numero2
  }

  funcao real media(real nota1, real nota2, real nota3){
    retorne (nota1 + nota2 + nota3) / 3
  }

  funcao real valorDesconto(real valorProduto, real percentual){
    retorne valorProduto * (percentual/100)
  }
}
