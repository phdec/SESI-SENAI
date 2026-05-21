const rl = require('readline-sync')

function somar(num1, num2){
    return num1 + num2
}

function main(){
    let num1= 0, num2 = 0, resultado = 0

    console.log(' --- Programa para somar dois números ---')
    num1 = Number(rl.question('Digite o primeiro numero: ') )
    num2 = Number(rl.question('Digite o segundo numero: ') )
    resultado = somar(num1 , num2)
    console.log(`Resultado é: ${resultado}`)
}

main()