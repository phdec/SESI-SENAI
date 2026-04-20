const rl = require('readline-sync')

let num, op

console.log(" --- 02 ---\n")
do{
    console.log("Escolha um número para o teste de calibração\n")
    console.log(" 3 / 5 / 7\n 0 - Sair\n")
    op = rl.question("Escolha uma opcao: ")

    switch (op) {
        case '3':
            divTres(num)
        break
        case '5':
            divCinco(num)
        break
        case '7':
            divSete(num)
        break
        case '0':
        break
        default: console.log("Opção inválida! Digite novamente.\n")
    }

}while(op != 0)

function divTres(num) {
    let soma = 0

    for(let i = 0; i < 20; i++) {
        num = Math.floor(Math.random() * 10) + 1
        if(num % 3 == 0) {
            soma += num
            console.log(`\n${num} é divisível por 3\n`)
        }
    }

    if(soma <= 0) {
        console.log("Nenhum número é divisível por 3\n")
    } 
    else {
        console.log(`A soma dos números divisíveis por 3 é: ${soma}\n`)
    }
}

function divCinco(num) {
    let soma = 0

    for(let i = 0; i < 20; i++) {
        num = Math.floor(Math.random() * 10) + 1
        if(num % 5 == 0) {
            soma += num
            console.log(`\n${num} é divisível por 5\n`)
        }
    }

    if(soma <= 0) {
        console.log("Nenhum número é divisível por 5\n")
    } 
    else {
        console.log(`A soma dos números divisíveis por 5 é: ${soma}\n`)
    }
}

function divSete(num) {
    let soma = 0

    for(let i = 0; i < 20; i++) {
        num = Math.floor(Math.random() * 10) + 1
        if(num % 7 == 0) {
            soma += num
            console.log(`\n${num} é divisível por 7\n`)
        }
    } 

    if(soma <= 0) { 
        console.log("Nenhum número é divisível por 7\n")
    } 
    else {
        console.log(`A soma dos números divisíveis por 7 é: ${soma}\n`)
    }
}