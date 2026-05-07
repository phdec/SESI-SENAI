let resp = document.getElementById('resposta')
console.log(resp)

function calcRial(valorReais){
    let rial = 1.33
    return valorReais / rial
}

function calcShekel(valorReais){
    let shekel = 1.33
    return valorReais / rial
}

function calcDolarAust(valorReais){
    let rial = 1.33
    return valorReais / rial
}

function main(){
    let valorReais = Number(document.getElementById('valorReais').value)
    console.log(valorReais)
    let op = document.getElementById('Moeda').value
    console.log(op)

    switch(op){
        case 'Rial':
            let rial = calcRial(valorReais)
            resp.innerHTML = `A resposta é ${rial}`
        break
        case 'Shekel':
            resp.innerHTML = `A resposta é 10`
        break
        case 'DolarAust':
            resp.innerHTML = `A resposta é 0`
        break
    }
}