const rl = require("readline-sync")

function calcMedia(n1, n2, n3) {
    return (n1 + n2 + n3) / 3
}

function verificarAp(media) { // ap = aprovado
    console.log("verificar")

    if(media >= 7){
        return 'O aluno foi aprovado!'
    }else{
        return 'O aluno foi reprovado!'
    }
}

function main() {
    let n1, n2, n3, media
    let resultado = ''

    n1 = Number(rl.question("Digite a primeira nota: "))
    console.log(`Primeira: ${n1}`)
    n2 = Number(rl.question("Digite a segunda nota: "))
    console.log(`Segunda: ${n2}`)
    n3 = Number(rl.question("Digite a terceira nota: "))
    console.log(`Terceira: ${n3}`)
    

    media = calcMedia(n1, n2, n3)
    console.log(`A média é: ${media}`)
    resultado = verificarAp(media)
    console.log('resultado')

}
    
main()