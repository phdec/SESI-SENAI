let resposta = document.getElementById('resp')

function calcCubo(a){ // calcular
    return a ** 3
}

function calcParalelepipedo(c, l, h){
    return c * l * h
}

function calcPiramide(l, h){
    return 1 / 3 * l * l * h
}

function main(){
    let opcao = document.getElementById('opcao').value
    let c = Number(document.getElementById('comprimento').value) // comprimento
    let a = Number(document.getElementById('aresta').value) // aresta
    let l = Number(document.getElementById('largura').value) // lado
    let h = Number(document.getElementById('altura').value) // altura
    let cubo, paralelepipedo, piramide

    switch(opcao){
        case 'cubo':
            cubo = calcCubo(a)
            resposta.innerHTML = `<p>Volume do cubo: ${cubo}</p>`
        break
        case 'paralelepipedo':
            paralelepipedo = calcParalelepipedo(c, l, h)
            resposta.innerHTML = `<p>Volume do paralelepipedo: ${paralelepipedo}</p>`
        break
        case 'piramide':
            piramide = calcPiramide(l, h)
            resposta.innerHTML = `<p>Volume da piramide: ${piramide}</p>`
        break
    }
}