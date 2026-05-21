const rl = require('readline-sync')

function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function verDiv3(qtde){
    let num, soma = 0
    for(let i = 0; i < qtde; i++){
        num = sortear(1, 30)

        if(num % 3 === 0){
            console.log(`O número sorteado foi ${num}`)
            soma += num
        }
    }
    return soma
}

function verDiv5(qtde){
    let num, soma = 0
    for(let i = 0; i < qtde; i++){
        num = sortear(1, 30)

        if(num % 5 === 0){
            console.log(`O número sorteado foi ${num}`)
            soma += num
        }
    }
    return soma
}

function verDiv7(qtde){
    let num, soma = 0
    for(let i = 0; i < qtde; i++){
        num = sortear(1, 30)

        if(num % 7 === 0){
            console.log(`O número sorteado foi ${num}`)
            soma += num
        }
    }
    return soma
}

function main(){
    let op = 0 // opção do sistema
    let soma, qtde = 20

    do{
        console.log(' --- Programa para calibrar o sensor ---\n')
        console.log(' 3 - Calibrar div por 3\n 5 - Calibrar div por 5\n 7 - Calibrar div por 7\n 0 - Sair')
        op = Number(rl.question('Digite sua opcao: '))

        switch(op){
            case 3:
                soma = verDiv3(qtde)
                console.log(` A soma dos divisíveis por ${op} é ${soma}\n`)
            break
            case 5:
                soma = verDiv5(qtde)
                console.log(` A soma dos divisíveis por ${op} é ${soma}\n`)
            break
            case 7:
                soma = verDiv7(qtde)
                console.log(` A soma dos divisíveis por ${op} é ${soma}\n`)
            break
            case 0 :
            break
            default: console.log('Opção inválida! Digite novamente.\n')
        }
    }while(op !== 0)
}

main()