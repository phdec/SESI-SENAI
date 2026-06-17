const rl = require('readline-sync')

function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function main(){
    let numMin, numMax, quantidade, num, somaPares = 0, somaImpares = 0, mediaPares, mediaImpares, pares = [], impares = []

    numMin = Number(rl.question('Digite o valor minimo: '))
    numMax = Number(rl.question('Digite o valor maximo: '))
    quantidade = Number(rl.question('Digite a quantidade de sorteios: '))

    for(let i = 0; i < quantidade; i++){
        num = sortear(numMin, numMax)

        if(num % 2 === 0){
            somaPares += num
            pares.push(num)
        }else{
            somaImpares += num
            impares.push(num)
        }
    }

    mediaPares = somaPares / pares.length
    mediaImpares = somaImpares / impares.length

    console.log(`Média dos pares: ${mediaPares}`)
    console.log(`Média dos ímpares: ${mediaImpares}`)
    console.log(`soma dos pares: ${somaPares}`)
    console.log(`soma dos ímpares: ${somaImpares}`)

    console.table(pares)
    console.table(impares)
}main()