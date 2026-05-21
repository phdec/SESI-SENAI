const rl = require("readline-sync")

function somarNum(num, soma){
    return Number(soma + num)
}

function calcMedia(num = [3], qtd){
    return num[3] / 3
}

function main() {
    let num = [3], soma = 0, media = 0, op = 0, qtd = 0

    console.log("--- Calcular Média ---\n")
    
    do{
        console.log("1 - Somar os números\n 2 - Calcular a média\n 0 - Sair\n")
        op = Number(rl.question("Digite sua opcao: "))

        switch(op){
            case 1:
                for(let i = 0; i < 3; i++) {
                num[i] = Number(rl.question(`Digite o ${i} numero: `))
                console.log(`${num[i]}`)
                soma = somarNum(num[i], soma)
                qtd++
                }
                console.log(`Soma: ${soma}`)
                break
                case 2:
                    for(let i = 0; i < 3; i++) {
                        num[i] = Number(rl.question(`Digite o ${i} numero: `))
                        console.log(`${num[i]}`)
                        media = calcMedia(num[i], qtd)
                    }
                    console.log(`Média: ${media}`)
            break
            case 0:
            break
            default: console.log("Opção Inválida! Digite novamente.")
        }
        
    }while(op != 0)
}

main()