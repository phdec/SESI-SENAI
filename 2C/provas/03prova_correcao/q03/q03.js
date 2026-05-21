let resposta = document.getElementById('resposta')

function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function verDiv3(qtde, min, max){ // verificar
    let soma = 0, media = 0, contador = 0, num
    let qt = 0

    resposta.textContent = 'Certos: '
    for(let i = 0; i < qtde; i++){
        num = sortear(min, max)
        if(num % 3 === 0){
            resposta.innerHTML += `${num}&emsp;`
            soma += num
            qt += 1
        }
    }
    resposta.innerHTML += `<p>A soma total é ${soma}</p>`
    media = soma / qt
    return media
}
function verDiv5(qtde, min, max){ // verificar
    let soma = 0, media = 0, contador = 0, num
    let qt = 0

    resposta.textContent = 'Certos: '
    for(let i = 0; i < qtde; i++){
        num = sortear(min, max)
        if(num % 5 === 0){
            resposta.innerHTML += `${num}&emsp;`
            soma += num
            qt += 1
        }
    }
    resposta.innerHTML += `<p>A soma total é ${soma}</p>`
    media = soma / qt
    return media
}
function verDiv7(qtde, min, max){ // verificar
    let soma = 0, media = 0, contador = 0, num
    let qt = 0

    resposta.textContent = 'Certos: '
    for(let i = 0; i < qtde; i++){
        num = sortear(min, max)
        if(num % 7 === 0){
            resposta.innerHTML += `${num}&emsp;`
            soma += num
            qt += 1
        }
    }
    resposta.innerHTML += `<p>A soma total é ${soma}</p>`
    media = soma / qt
    return media
}

function apagar(){
    resposta.innerHTML = ''
}

function main(){
    let qtde = Number(document.getElementById('qtde').value)
    let min = Number(document.getElementById('min').value)
    let max = Number(document.getElementById('max').value)
    let opcao = document.getElementById('opcao').value
    let media = 0

    resposta.innerHTML = ''

    // usando css no javaScript
    resposta.style.fontSize = '1.5rem'

    switch(opcao){
        case 'b':
            media = verDiv3(qtde, min, max)
            resposta.innerHTML += `<p>Média = ${media.toFixed(2)}</p>`
        break
        case 'm':
            media = verDiv5(qtde, min, max)
        break
        case 'a':
            media = verDiv7(qtde, min, max)
        break
    }

}