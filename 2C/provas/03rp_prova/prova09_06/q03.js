const rl = require('readline-sync')

function sortear(min, max){
    return  Math.floor(Math.random() * (max - min + 1) + min)
}

function ver11(){
    let num, soma = 0, qtCertos = 0, media

    for(let i = 0; i < 20; i++){
        num = sortear(1, 90)
        if(num % 11 === 0){
            console.log(num)
            soma += num
            qtCertos++
        }
    }

    media = soma / qtCertos
    console.log(`A soma dos certos é ${soma}.`)
    console.log(`A média dos certos é ${media}.`)
}
function ver13(){
    let num, soma = 0, qtCertos = 0, media

    for(let i = 0; i < 20; i++){
        num = sortear(1, 90)
        if(num % 13 === 0){
            console.log(num)
            soma += num
            qtCertos++
        }
    }

    media = soma / qtCertos
    console.log(`A soma dos certos é ${soma}.`)
    console.log(`A média dos certos é ${media}.`)
}
function ver17(){
    let num, soma = 0, qtCertos = 0, media

    for(let i = 0; i < 20; i++){
        num = sortear(1, 90)
        if(num % 17 === 0){
            console.log(num)
            soma += num
            qtCertos++
        }
    }

    media = soma / qtCertos
    console.log(`A soma dos certos é ${soma}.`)
    console.log(`A média dos certos é ${media}.`)
}

function main(){
    let opcao = 0
    
    console.log('Teste do sensor')

    do{
        console.log('11 - Testar com 11')
        console.log('13 - Testar com 13')
        console.log('17 - Testar com 17')
        console.log('0 - Sair')

        opcao = Number(rl.question('Digite sua op: '))

        switch(opcao){
            case 11:
                ver11()
            break
            case 13:
                ver13()
            break
            case 17:
                ver17()
            break
            case 0:
            break
            default: console.log('Opção inválida! Digite novamente.')
        }
    }while(opcao !== 0)
}main()