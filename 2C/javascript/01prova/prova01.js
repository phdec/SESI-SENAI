const rl = require('readline-sync')

let base, altura, lado, hexagono, retangulo, triangulo, op // opção do menu

console.log(" --- 01 ---\n")
do {
    console.log(" 1 - Triângulo\n 2 - Hexágono\n 3 - Retângulo\n 0 - Sair\n")
    op = rl.question("Escolha uma opcao: ")

    switch (op) {
        case '1':
            base = parseFloat(rl.question("Digite a base: "))
            altura = parseFloat(rl.question("Digite a altura: "))
            triangulo = areaTriangulo(base, altura)
            console.log(` A área do triângulo é: ${triangulo}\n`)
        break
        case '2':
            lado = parseFloat(rl.question("Digite o lado: "))
            hexagono = areaHexagono(lado)
        break
        case '3':
            base = Number(console.log("Digite a base: "))
            altura = Number(console.log("Digite a altura: "))
            retangulo = areaRetangulo(base, altura)
        break
        case '0':
        break
        default: console.log("Opção inválida! Digite novamente.\n")
    }
} while (op != 0);

function areaTriangulo(base, altura) {
    return (base * altura) / 2
}

function areaHexagono(lado) {
    return (3 * Math.pow(lado, 2) * Math.sqrt(3) /* poderia usar 1.732 (porque pede na questão) */) / 2
}

function areaRetangulo(base, altura) {
    return base * altura
}