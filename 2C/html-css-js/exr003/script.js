let resposta = document.getElementById('resposta')

function sortear(min, max){
    let valor = Math.floor(Math.random() * (max - min + 1) + min)

    return valor
}

function medirBaixos(qtde){
    let num, soma = 0, contador, media

    for(let i = 0; i < qtde; i++){
        num = sortear(1,100)

        if(num >= 15 && num <= 25){
            soma += num
            contador++
        }
    }
    media = soma / contador
    return soma
}

function medirMedios(qtde){
    let num, soma = 0, contador, media

    for(let i = 0; i < qtde; i++){
        num = sortear(1,100)

        if(num >= 40 && num <= 60){
            soma += num
            contador++
        }
    }

    media = soma / contador
    return soma
}

function medirAltos(qtde){
    let num, soma = 0, contador, media

    for(let i = 0; i < qtde; i++){
        num = sortear(1,100)

        if(num >= 80 && num <= 90){
            soma += num
            contador++
        }
    }

    media = soma / contador
    return soma
}

function main(){
    let op = document.getElementById('opcao').value
    let valor
    let qtde = Number(document.getElementById('quantidade').value)

    switch(op){
        case 'baixo':
            valor = medirBaixos(qtde)
            resposta.innerHTML = ''
            resposta.innerHTML += `A soma dos certos é ${valor}`
        break
        case 'medio':
            valor = medirMedios(qtde)
            resposta.innerHTML = ''
            resposta.innerHTML += `A soma dos certos é ${valor}`
        break
        case 'alto':
            valor = medirAltos(qtde)
            resposta.innerHTML = ''
            resposta.innerHTML += `A soma dos certos é ${valor}`
        break
    }
}