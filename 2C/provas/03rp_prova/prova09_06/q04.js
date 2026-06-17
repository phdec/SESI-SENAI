const rl = require('readline-sync')

function impares(){
    let soma = 0, qtCertos = 0, media

    for(let i = 1; i <= 400; i++){
        if(i % 2 !== 0){
            soma += i
            qtCertos++
            console.log(i)
        }
    }

    media = soma / qtCertos
    console.log(`A soma dos ímpares é ${soma}.`)
    console.log(`A média dos ímpares é ${media}.`)
    console.log(qtCertos)
}

function pares(){
    let soma = 0, qtCertos = 0, media

    for(let i = 1; i <= 400; i++){
        if(i % 2 === 0){
            soma += i
            qtCertos++
            console.log(i)
        }
    }

    media = soma / qtCertos
    console.log(`A soma dos pares é ${soma}.`)
    console.log(`A média dos pares é ${media}.`)
    console.log(qtCertos)
}

function main(){
    let opcao = 0
    
    console.log('Identificar pares e ímpares')

    do{
        console.log('1 - Ímpares')
        console.log('2 - Pares')
        console.log('0 - Sair')

        opcao = Number(rl.question('Digite sua op: '))

        switch(opcao){
            case 1:
                impares()
            break
            case 2:
                pares()
            break
            case 0:
            break
            default: console.log('Opção inválida! Digite novamente.')
        }
    }while(opcao !== 0)
}main()