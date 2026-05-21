const rl = require('readline-sync')

function main() {
    
    let num, op
    
    console.log(" --- 03 ---\n")
    do{
        console.log("Escolha o peso \n")
        console.log(" 1 - baixo\n 2 - médio\n 3 - alto\n 0 - Sair\n")
        op = parseInt(rl.question("Escolha uma opcao: "))
    
        switch (op) {
            case 1:
                baixos()
            break
            case 2:
                medios()
            break
            case 3:
                altos()
            break
            case 0:
            break
            default: console.log("Opção inválida! Digite novamente.\n")
        }
    
    }while(op !== 0)
    
        
    }

function baixos() {
        let soma = 0, num, qt = 0, media
    
        for(let i = 0; i < 20; i++) {
            num = Math.floor(Math.random() * (100 - 10 + 1)) + 10
            if(num >= 15 && num <= 25) {
                soma += num
                qt++
                console.log(`${num}kg é ideal baixo.\n`)
            }
        }
    
        if(qt === 0) {
            console.log("Nenhum peso é ideal baixo\n")
        } 
        else {
            media = soma / qt
            console.log(`A soma dos pesos ideias baixos: ${soma}kg\n`)
            console.log(`A média dos pesos ideias baixos: ${media}kg\n`)
        }
}

function medios() { 
        let soma = 0, num, qt = 0, media
    
        for(let i = 0; i < 20; i++) {
            num = Math.floor(Math.random() * (100 - 10 + 1)) + 10
            if(num >= 40 && num <= 60) {
                soma += num
                qt++
                console.log(`${num}kg é ideal médio.\n`)
            }
        }
    
        if(qt === 0) {
            console.log("Nenhum peso é ideal médio\n")
        } 
        else {
            media = soma / qt
            console.log(`A soma dos pesos ideias médios: ${soma}kg\n`)
            console.log(`A média dos pesos ideias médios: ${media}kg\n`)
        }
}

function altos() {
        let soma = 0, num, qt = 0, media
    
        for(let i = 0; i < 20; i++) {
            num = Math.floor(Math.random() * (100 - 10 + 1)) + 10
            if(num >= 80 && num <= 90) {
                soma += num
                qt++
                console.log(`${num}kg é ideal alto.\n`)
            }
        }
    
        if(qt === 0) {
            console.log("Nenhum peso é ideal alto\n")
        } 
        else {
            media = soma / qt
            console.log(`A soma dos pesos ideias altos: ${soma}kg\n`)
            console.log(`A média dos pesos ideias altos: ${media}kg\n`)
        }
}

main()