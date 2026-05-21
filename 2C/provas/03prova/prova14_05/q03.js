const rl = require('readline-sync')

function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function calcCertos(){
    let num = 0, soma = 0, media = 0, contador = 0

    for(let i = 0; i < 20; i++){
        num = sortear(1, 50)

        if(num % 3 == 0 || num % 5 == 0 || num % 7 == 0){
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
    let op // opção do sistema

    do {
        console.log(`\nb - Baixo\nm - Médio\na - Alto\n0 - Sair`)
        op = rl.question('Digite sua opcao: ')

        switch(op){
            case '0': 
            break
            case 'b':
                calcCertos()
            break
            case 'm':
                calcCertos()
            break
            case 'a':
                calcCertos()
            break
            default: console.log('Opção inválida! Digite novamente.')
        }

    } while (op != 0);
}
main()