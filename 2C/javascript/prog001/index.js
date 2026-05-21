const rl = require('readline-sync')

let = num1 = 0, num2 = 0, resultado = 0

console.log('=== Programa para somar dois numeros ===')
num1 = rl.question(' Digite o primeiro numero: ')
num2 = rl.question(' Digite o segundo numero ')
resultado = Number(num1) + Number(num2)

console.log(` Resultado ${num1} + ${num2} = ${resultado}`)