const rl = require("readline-sync")

function calcularIMC(peso, altura){
    return peso / (altura * altura)
}

function verificarIMC(imc){
    let classificacao

    if(imc >= 0 && imc < 18.5 ){
        classificacao = 'Magreza'
    }else if(imc >= 18.5 && imc < 25){
        classificacao = 'Normal'
    }else if(imc >= 25 && imc < 30){
        classificacao = 'Sobrepeso'
    }else if(imc >= 30 && imc < 40){
        classificacao = 'Obesidade'
    }else if(imc >= 40){
        classificacao = 'Obesiade grave'
    }else{classificacao = 'Erro.'}

    return classificacao
}

function main(){
    let imc, peso, altura, opcao = 's', classificacao

        console.log(' --- Calculadora de IMC --- ')
    do {
        console.log(' c - Calcular o IMC\n v - verificar o índice do IMC\n s - sair')
        opcao = rl.question('Digite sua opcao: ')

        switch (opcao) {
            case 'c':
                peso = Number(rl.question('Digite o peso: '))
                altura = Number(rl.question('Digite o altura: '))

                imc = calcularIMC(peso, altura)
                console.log(`O valor do IMC é ${imc.toFixed(2)}.`)
            break;
            case 'v':
                classificacao = verificarIMC(imc)
                console.log(`Classificação: ${classificacao}`)
            break;
            case 's':
            break;
        
            default: console.log('Opção inválida!')
            break;
        }

    } while (opcao !== 's');
}main()