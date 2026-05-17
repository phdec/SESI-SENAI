const rl = require('readline-sync')

function calcularDesconto(precoAtual){
    let desconto = 0
    if(precoAtual > 130 && precoAtual < 240){
        desconto = precoAtual * 0.07
        return precoAtual - desconto
    } else if(precoAtual > 240 && precoAtual < 350){
        desconto = precoAtual * 0.09
        return precoAtual - desconto
    }else if(precoAtual > 350){
        desconto = precoAtual * 0.11
        return precoAtual - desconto
    }else{return precoAtual}
}

function main(){
    let op = 0 // opção do sistema
    let cEstampada = 95.28, cSlimFit = 75.49, regata = 77.95
    let qtcEstampa = 0, qtcSlimFit = 0, qtRegata = 0, preco = 0, precoDesconto

    console.log(' - Se o usuário comprar mais de R$ 130.00, ele ganha um desconto de 7% no preço final, se for mais de R$ 240.00 ganha 9% e se for maior que R$ 350.00 ganha 11%.')

    do {
        console.log(`\n1 - Camiseta estampada R$${cEstampada}\n2 - Camiseta slim fit R$${cSlimFit}\n3 - Regata R$${regata}\n4 - Ampliação futura\n0 - Sair`)
        op = Number(rl.question('Digite sua opcao: '))

        switch(op){
            case 0: 
            break
            case 1:
                qtcEstampa = Number(rl.question('Digite a quantidade que deseja: '))
                preco += qtcEstampa * cEstampada
                console.log(`\nPreço da compra até o momento: R$${preco.toFixed(2)}\n`)
                precoDesconto = calcularDesconto(preco)
                console.log(`Preço com desconto: R$${precoDesconto}`)
            break
            case 2:
                qtcSlimFit = Number(rl.question('Digite a quantidade que deseja: '))
                preco += qtcSlimFit * cSlimFit
                console.log(`\nPreço da compra até o momento: R$${preco.toFixed(2)}\n`)
                precoDesconto = calcularDesconto(preco)
                console.log(`Preço com desconto: R$${precoDesconto}`)
            break
            case 3:
                qtRegata = Number(rl.question('Digite a quantidade que deseja: '))
                preco += qtRegata * regata
                console.log(`\nPreço da compra até o momento: R$${preco.toFixed(2)}\n`)
                precoDesconto = calcularDesconto(preco)
                console.log(`Preço com desconto: R$${precoDesconto}`)
            break
            default: console.log('Opção inválida! Digite novamente.')
        }

    } while (op !== 0);
}
main()