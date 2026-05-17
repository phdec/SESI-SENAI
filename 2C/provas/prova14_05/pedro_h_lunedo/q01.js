let resposta = document.getElementById('resposta')

function calcEsfera(r){ // calcular
    return (3 / 4) * Math.PI * (r * r * r)
}
function calcCone(r, h){ // calcular
    return (1 / 3) * Math.PI * (r * r) * h
}
function calcCilindro(r, h){ // calcular
    return Math.PI * (r * r) * h
}

function main(){
    let op = document.getElementById('op').value
    let r = Number(document.getElementById('raio').value)
    let h = Number(document.getElementById('altura').value)

    switch(op){
        case 'esfera':
            let esfera = calcEsfera(r)
            resposta.innerHTML = ''
            resposta.innerHTML += `A resposta do cálculo da esfera é: ${esfera.toFixed(2)}`
        break
        case 'cone':
            let cone = calcCone(r, h)
            resposta.innerHTML = ''
            resposta.innerHTML += `A resposta do cálculo da cone é: ${cone.toFixed(2)}`
        break
        case 'cilindro':
            let cilindro = calcCilindro(r, h)
            resposta.innerHTML = ''
            resposta.innerHTML += `A resposta do cálculo da cilindro é: ${cilindro.toFixed(2)}`
        break
    }
}