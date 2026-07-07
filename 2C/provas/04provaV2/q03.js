const rl = require('readline-sync')
let num = sortear(200, 1)

function sortear(max, min) {
    let numSortear = []
    for(let i = 0; i < 30; i++) {
        numSortear.push(Math.floor(Math.random() * (max - min + 1) + min))
    }
    return numSortear
}

function verificarMultiplo(multiplo) {
    let somaMultiplos = 0, qtMultiplos = 0

    for(let i = 0; i < num.length; i++) {
        if(num[i] % multiplo === 0) {
            qtMultiplos++
            somaMultiplos += num[i]
        }

    }
    let mediaMultiplos = somaMultiplos / qtMultiplos

    console.log(`Soma dos múltiplos de ${multiplo}: ${somaMultiplos}`)
    console.log(`Média dos múltiplos de ${multiplo}: ${mediaMultiplos}\n`)
}

function main() {
    let option

    do{
        console.log('11 - Mútiplos de 11\n13 - Mútiplos de 13\n17 - Mútiplos de 17\n1 - Sortear novamente\n0 - Sair')
        option = Number(rl.question('Digite sua escolha: '))

        switch(option) {
            case 11:
                verificarMultiplo(option)
                break
            case 13:
                verificarMultiplo(option)
                break
            case 17:
                verificarMultiplo(option)
                break
            case 1:
                num = sortear(200, 1)
                console.log('\nNúmeros sorteados novamente!\n')
                break
            case 0:

                break
            default: console.log('Opção inválida')
        }
    }while(option !== 0)
}main()