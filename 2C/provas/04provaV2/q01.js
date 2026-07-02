let botaoGerar = document.getElementById('gerarRegistros')
let tbody = document.getElementById('tbody')
let trTfoot = document.getElementById('trTfoot')

function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function gerarRegistros(){
    let registros = [], economicos = [], normais = [], elevados = []
    let somaRegistros = 0, somaEconomicos = 0, somaNormais = 0, somaElevados = 0

    for(let i = 0; i < 60; i++){
        registros.push(sortear(1, 150))
        somaRegistros += registros[i]

        if(registros[i] >= 1 && registros[i] <= 50){
            economicos.push(registros[i])
            somaEconomicos += registros[i]
        }else if(registros[i] >= 51 && registros[i] <= 100){
            normais.push(registros[i])
            somaNormais += registros[i]
        }else if(registros[i] >= 101 && registros[i] <= 150){
            elevados.push(registros[i])
            somaElevados += registros[i]
        }
    }

    let mediaGeral = somaRegistros / registros.length
    let mediaEconomicos = somaEconomicos / economicos.length
    let mediaNormais = somaNormais / normais.length
    let mediaElevados = somaElevados / elevados.length

    return {economicos: economicos, normais: normais, elevados: elevados, mediaGeral: mediaGeral, mediaEconomicos: mediaEconomicos, mediaNormais: mediaNormais, mediaElevados: mediaElevados}
}

function main(){
    let resposta = gerarRegistros()

    let qtdeLinhas = Math.max(resposta.economicos.length, resposta.normais.length, resposta.elevados.length)
    let linhas = ''

    for(let i = 0; i < qtdeLinhas; i++){
        linhas += `
        <tr>
            <td>${i + 1}º</td>
            <td>${resposta.economicos[i] ?? ''}</td>
            <td>${resposta.normais[i] ?? ''}</td>
            <td>${resposta.elevados[i] ?? ''}</td>
        </tr>`    
    }

    tbody.innerHTML = linhas
    trTfoot.innerHTML = `
        <td>${resposta.mediaGeral.toFixed(2)}</td>
        <td>${resposta.mediaEconomicos.toFixed(2)}</td>
        <td>${resposta.mediaNormais.toFixed(2)}</td>
        <td>${resposta.mediaElevados.toFixed(2)}</td>
        `
}

botaoGerar.addEventListener('click', ()=> {main()})