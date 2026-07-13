let btnSortear = document.getElementById('sortear')
let btn11 = document.getElementById('btn11')
let btn13 = document.getElementById('btn13')
let btn17 = document.getElementById('btn17')
let tbody = document.getElementById('tbody')
let result = document.getElementById('result')

let multiplo
let numeros = []

function sortear(max, min) {

    let vetor = []

    for (let i = 0; i < 30; i++) {
        vetor.push(Math.floor(Math.random() * (max - min + 1) + min))
    }

    return vetor
}

function mostrarTabela() {

    let linhas = ''

    for (let i = 0; i < numeros.length; i++) {

        linhas += `
        <tr>
            <td>${i + 1}º</td>
            <td>${numeros[i]}</td>
        </tr>
        `
    }

    tbody.innerHTML = linhas
    if (!isNaN(multiplo)) {
        verificarMultiplo(multiplo)
    }
}

function verificarMultiplo(multiplo) {

    let soma = 0
    let quantidade = 0

    for (let i = 0; i < numeros.length; i++) {

        if (numeros[i] % multiplo === 0) {

            soma += numeros[i]
            quantidade++
        }
    }

    let media = quantidade > 0 ? soma / quantidade : 0
    result.innerHTML = `
        <h2>Múltiplos de ${multiplo}</h2>

        <p><strong>Quantidade:</strong> ${quantidade}</p>
        <p><strong>Soma:</strong> ${soma}</p>
        <p><strong>Média:</strong> ${media.toFixed(2)}</p>
    `
    
}

btnSortear.addEventListener('click', () => {
    numeros = sortear(200, 1)
    mostrarTabela()
    
    // result.innerHTML = ''

})

btn11.addEventListener('click', () => {

    verificarMultiplo(11)
    multiplo = 11

})

btn13.addEventListener('click', () => {

    verificarMultiplo(13)
    multiplo = 13

})

btn17.addEventListener('click', () => {

    verificarMultiplo(17)
    multiplo = 17

})