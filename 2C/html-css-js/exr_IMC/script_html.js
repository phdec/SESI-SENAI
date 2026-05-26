let resposta = document.getElementById('resposta')

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
    let altura = Number(document.getElementById('altura').value)
    let peso = Number(document.getElementById('peso').value)
    let imc, classificacao
    let opcao = document.getElementById('opcao').value


    switch (opcao) {
        case 'c':
            imc = calcularIMC(peso, altura)
            console.log(`O valor do IMC é ${imc.toFixed(2)}.`)
            resposta.innerHTML = ''
            resposta.innerHTML = `<p>O valor do IMC é ${imc.toFixed(2)}.</p>`
        break;
        case 'v':
            imc = calcularIMC(peso, altura)
            classificacao = verificarIMC(imc)
            console.log(`Classificação: ${classificacao}`)
            resposta.innerHTML = ''
            resposta.innerHTML = `<p>Classificação: ${classificacao}</p>`
        break;
    
        default: console.log('Opção inválida!')
        break;
    }
}