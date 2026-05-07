const rl = require('readline-sync')

function sortear(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function calcularBaixos (qt) {
    let soma = 0, peso = 0, contador = 0, media = 0

    for(let i = 0; i < qt; i++){
        peso = sortear(20, 200)
        if(peso >= 25 && peso <= 50){
            soma += peso
            contador += 1
            console.log(`${peso}`)
        }
    }
    console.log(`A soma dos pesos baixos é ${soma}`)
    media = soma / contador
    console.log(`A média é ${media}`)
}

function calcularMedios (qt) {
    let soma = 0, peso = 0, contador = 0, media = 0

    for(let i = 0; i < qt; i++){
        peso = sortear(20, 200)
        if(peso >= 90 && peso <= 110){
            soma += peso
            contador += 1
            console.log(`${peso}`)
        }
    }
    console.log(`A soma dos pesos médios é ${soma}`)
    media = soma / contador
    console.log(`A média é ${media}`)
}

function calcularAltos (qt) {
    let soma = 0, peso = 0, contador = 0, media = 0

    for(let i = 0; i < qt; i++){
        peso = sortear(20, 200)
        if(peso >= 150 && peso <= 190){
            soma += peso
            contador += 1
            console.log(`${peso}`)
        }
    }
    console.log(`A soma dos pesos altos é ${soma}`)
    media = soma / contador
    console.log(`A média é ${media}`)
}

function main () {
    let op, qt

    console.log(' --- Programa de controle de qualidade ---\n')

    do{
        console.log(' 1 - Baixo\n 2 - Médio\n 3 - Alto\n 0 - Sair')
        op = Number(rl.question('Digite sua opcao: '))
        
        switch(op) {
            case 1: 
                qt = Number(rl.question('Digite a quantidade de pecas: '))
                calcularBaixos(qt)
            break
            case 2: 
            break
            case 3: 
            break
            case 0: 
            break
            default: console.log(' Opção inválida! Digite novamente.\n')
        }
    }while(op !== 0)
}

main()