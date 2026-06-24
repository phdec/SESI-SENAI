const rl = require('readline-sync')

function calcDesconto(preco){
    let desconto

    if(preco > 270 && preco <= 340){
        desconto = preco * 0.08
        return preco - desconto
    }else if(preco > 340 && preco <= 470){
         desconto = preco * 0.12
        return preco - desconto
    }else if(preco > 470){
         desconto = preco * 0.14
        return preco - desconto
    }else{return preco}
}

function main(){
    let tAsics = 248.98, tOlympikusSwift = 398.97, tNikeAirForce = 698.95 // tênis
    let qtTAsics = 0, qtTOlympikusSwift = 0, qtTNikeAirForce = 0
    let opcao = 0, preco = 0, precoFinal

    do{
        console.log(' --- Loja ---')
        console.log('1 - comprar\n2 - ampliação futura\n0 - Sair')
        opcao = Number(rl.question('Digite sua op: '))

        switch(opcao){
            case 1:
                console.log('tênis asics R$248.98')
                console.log('tênis olympikus swift R$398.97')
                console.log('tênis Nike Air Force R$698.95')

                qtTAsics = Number(rl.question('Quantidade tenis asics: '))
                qtTOlympikusSwift = Number(rl.question('Quantidade tenis olympikus swift: '))
                qtTNikeAirForce = Number(rl.question('Quantidade tenis Nike Air Force: '))

                preco += qtTAsics * tAsics + qtTOlympikusSwift * tOlympikusSwift + qtTNikeAirForce * tNikeAirForce

                precoFinal = calcDesconto(preco)

                console.log(`O preço da sua compra é R$${preco.toFixed(2)}`)
                console.log(`O preço final da sua compra é R$${precoFinal.toFixed(2)}`)
            break
            case 2:
            break
            case 0:
            break
            default: console.log('Opção inválida! Digite novamente.')
        }
    }while(opcao !== 0)
}main()