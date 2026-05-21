const rl = require('readline-sync')

function calcularRial (BRL) {
    return BRL / 1.33
}

function calcularShekel (BRL) {
    return BRL / 1.67
}

function calcularDolarAust (BRL) {
    return BRL / 3.58
}

function main () {
    let BRL, op, rial, sheker, dolarAust

    console.log(' --- Programa conversor de moedas ---\n')

    do{
        console.log(' 1 - Rial\n 2 - Shekel\n 3 - Dolar Australiano\n 0 - Sair')
        op = Number(rl.question('Digite sua opcao: '))
        
        switch(op) {
            case 1: 
                BRL = parseFloat(rl.question('Digite o valor em reais: R$'))
                rial = calcularRial(BRL)
                console.log(` A conversão de R$${BRL} é ${rial.toFixed(2)}. `)
                break
                case 2: 
                BRL = parseFloat(rl.question('Digite o valor em reais: R$'))
                sheker = calcularShekel(BRL)
                console.log(` A conversão de R$${BRL} é ${shekel.toFixed(2)}. `)
                break
                case 3: 
                BRL = parseFloat(rl.question('Digite o valor em reais: R$'))
                dolarAust = calcularDolarAust(BRL)
                console.log(` A conversão de R$${BRL} é ${dolarAust.toFixed(2)}. `)
            break
            case 0: 
            break
            default: console.log(' Opção inválida! Digite novamente.\n')
        }
    }while(op !== 0)
}

main()