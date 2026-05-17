const rl = require('readline-sync')

function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function calcCertos11(){
    let num = 0, soma = 0, media = 0, contador = 0

    for(let i = 0; i < 200; i++){
        num = sortear(1, 200)

        if(num % 11 == 0){
            console.log(`Valor certo: ${num}`)
            soma += num
            contador++
        }
    }

    media = soma / contador
    console.log(`Média final: ${media.toFixed(2)}`)
    console.log(`Soma final: ${soma}`)

}
function calcCertos13(){
    let num = 0, soma = 0, media = 0, contador = 0

    for(let i = 0; i < 200; i++){
        num = sortear(1, 200)

        if(num % 13 == 0){
            console.log(`Valor certo: ${num}`)
            soma += num
            contador++
        }
    }

    media = soma / contador
    console.log(`Média final: ${media.toFixed(2)}`)
    console.log(`Soma final: ${soma}`)

}

function main(){
    let op = 0 // opção do sistema

    do {
        console.log(`\n11 - 11\n13 - 13\n0 - Sair`)
        op = Number(rl.question('Digite sua opcao: '))

        switch(op){
            case 0:
            break
            case 11:
                calcCertos11()
            break
            case 13:
                calcCertos13()
            break
            default: console.log('Opção inválida! Digite novamente.')
        }

    } while (op !== 0);
}
main()