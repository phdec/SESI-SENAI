let resposta = document.getElementById('resposta')
console.log(resposta)

function calcularRial(valorReais){
    return valorReais / 1.33
}
function calcularShekel(valorReais){
    return valorReais / 1.67
}
function calcularDolarAust(valorReais){
    return valorReais / 3.58
}

function principal(){
    let valorReais = Number(document.getElementById('valorReais').value)
    console.log(valorReais)
    let opcao = document.getElementById('opcao').value
    console.log(opcao)

    switch(opcao){
        case 'rial':
            let rial = calcularRial(valorReais)
            resposta.innerHTML = ''
            resposta.innerHTML += `A conversão de R$ ${valorReais} 
                em Rial é: ${rial.toFixed(2)}`        
        break
        case 'shekel':
            let shekel = calcularShekel(valorReais)
            resposta.innerHTML = ''
            resposta.innerHTML += `A conversão de R$ ${valorReais} em shekel é: ${shekel.toFixed(2)}`
        break
        case 'dolarAust':
            let dolarAust = calcularDolarAust(valorReais)
            resposta.innerHTML = ''
            resposta.innerHTML += `A conversão de R$ ${valorReais} 
                em Dolar Australiano é: ${dolarAust.toFixed(2)}`
        break
    }    
}