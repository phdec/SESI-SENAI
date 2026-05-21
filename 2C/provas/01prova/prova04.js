const rl = require('readline-sync')

let brl, euro, dolar, libra /* Libra Esterlina */, op // opção do menu

console.log(" --- 04 ---\n")
console.log(" --- Conversor de Moedas ---\n")
do {
    console.log(" 1 - Euro\n 2 - Dólar\n 3 - Libra Esterlina\n 0 - Sair\n")
    op = rl.question("Escolha uma opcao: ")
    
    switch (op) {
        case '1':
            brl = parseFloat(rl.question("\nDigite o valor em reais: R$"))
            euro = cEuro(brl)
            console.log(`\nValor em euro: €${euro.toFixed(2)}\n`)
        break
        case '2':
            brl = parseFloat(rl.question("\nDigite o valor em reais: R$"))
            dolar = cDolar(brl)
            console.log(`\nValor em dólar: US$${dolar.toFixed(2)}\n`)

        break
        case '3':
            brl = parseFloat(rl.question("\nDigite o valor em reais: R$"))
            libra = cLibra(brl)
            console.log(`\nValor em libra esterlina: £${libra.toFixed(2)}\n`)
        break
        case '0':
        break
        default: console.log("Opção inválida! Digite novamente.\n")
    }
} while (op != 0);

function cEuro(brl) { // converter euro
    let euro = 5.96
    return brl / euro
}
function cDolar(brl) { // converter dólar
    let dolar = 5.11
    return brl / dolar
}
function cLibra(brl) { // converter libra esterlina
    let libra = 6.84
    return brl / libra
}