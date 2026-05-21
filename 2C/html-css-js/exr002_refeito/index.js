let resposta = document.getElementById('resposta')

function calcTriangulo(lado){
    // return (lado * lado) * 1.732
    return ((lado * lado) * Math.sqrt(3)) / 4
}

function calcLosango(D, d){
    return (D * d) / 2.0
}

function calcTrapezio(B, b, h){
    return ((B * b) * h) / 2
}

function limparCampos(){
    let todosOsCampos = document.querySelectorAll('.triangulo, .losango, .trapezio')
    todosOsCampos.forEach(campos => {campos.style.display = 'none'})
}

function mostrarCampos(){
    let op = document.getElementById('op').value // opção
    switch(op){
        case 'triangulo':
            const triangulo = document.querySelectorAll('.triangulo')
            limparCampos()
            triangulo.forEach(triangulos => {
                triangulos.style.display = 'block'
            })
            break
            case 'losango':
            const losango = document.querySelectorAll('.losango')
            limparCampos()
            losango.forEach(losangos => {
                losangos.style.display = 'block'
            })
        break
        case 'trapezio':
            const trapezio = document.querySelectorAll('.trapezio')
            limparCampos()
            trapezio.forEach(trapezios => {
                trapezios.style.display = 'block'
            })
        break
    }
}

function main(){
    let op = document.getElementById('op').value // opção
    let lado = Number(document.getElementById('lado').value)
    let D = Number(document.getElementById('D').value)
    let d = Number(document.getElementById('d').value)
    let B = Number(document.getElementById('B').value)
    let b = Number(document.getElementById('b').value)
    let h = Number(document.getElementById('h').value)

    switch(op){
        case 'triangulo':
            let areaTriangulo = calcTriangulo(lado)
            resposta.innerHTML = ''
            resposta.innerHTML += `A área do triângulo é ${areaTriangulo.toFixed(2)} cm²`
        break
        case 'losango':
            let areaLosango = calcLosango(D, d)
            resposta.innerHTML = ''
            resposta.innerHTML += `A área do losango é ${areaLosango.toFixed(2)} cm²`
        break
        case'trapezio':
            let areaTrapezio = calcTrapezio(B, b, h)
                resposta.innerHTML = ''
                resposta.innerHTML += `A área do trapézio é ${areaTrapezio.toFixed(2)} cm²`
        break
    }

}