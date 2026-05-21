const rl = require('readline-sync')

let = num1 = 0, num2 = 0, resultado = 0
let operacao = ''

console.log('=== Programa para somar dois numeros ===')
do{
    operacao = ''
    num1 = rl.question(' Digite o primeiro numero: ')
    num2 = rl.question(' Digite o segundo numero ')
    operacao = rl.question(' Digite a operacao(+-*/): ')

    switch(operacao){
        case '+':
            resultado = Number(num1) + Number(num2)
        break
        case '-':
            resultado = Number(num1) - Number(num2)
        break
        case '*':
            resultado = Number(num1) * Number(num2)
        break
        case '/':
            resultado = Number(num1) / Number(num2)
        break
        default: console.log(' Inválido! Digite novamente.')
    }
}while(operacao == '')
   

console.log(` Resultado ${num1} ${operacao} ${num2} = ${resultado}`)