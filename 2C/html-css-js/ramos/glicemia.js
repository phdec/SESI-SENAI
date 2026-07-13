let botaoClassificar = document.getElementById('classificar')
let tbody = document.getElementById('tbody')
let trTfoot = document.getElementById('trTfoot')

function classificar() {

    let glicemia = [
        65, 92, 110, 84, 150, 68, 75, 98, 120, 105,
        88, 72, 140, 60, 95, 102, 115, 82, 79, 130,
        69, 91, 108, 85, 125
    ]

    let hipoglicemia = []
    let normais = []
    let hiperglicemia = []

    let somaHipoglicemia = 0
    let somaNormais = 0
    let somaHiperglicemia = 0
    let somaGeral = 0

    for (let i = 0; i < glicemia.length; i++) {

        somaGeral += glicemia[i]

        if (glicemia[i] >= 1 && glicemia[i] <= 70) {

            hipoglicemia.push(glicemia[i])
            somaHipoglicemia += glicemia[i]

        } else if (glicemia[i] >= 71 && glicemia[i] <= 100) {

            normais.push(glicemia[i])
            somaNormais += glicemia[i]

        } else {

            hiperglicemia.push(glicemia[i])
            somaHiperglicemia += glicemia[i]
        }
    }

    let mediaGeral = somaGeral / glicemia.length
    let mediaHipoglicemia = somaHipoglicemia / hipoglicemia.length
    let mediaNormais = somaNormais / normais.length
    let mediaHiperglicemia = somaHiperglicemia / hiperglicemia.length

    return {
        hipoglicemia,
        normais,
        hiperglicemia,
        mediaGeral,
        mediaHipoglicemia,
        mediaNormais,
        mediaHiperglicemia
    }
}

function main() {

    let resposta = classificar()

    let qtdeLinhas = Math.max(
        resposta.hipoglicemia.length,
        resposta.normais.length,
        resposta.hiperglicemia.length
    )

    let linhas = ''

    for (let i = 0; i < qtdeLinhas; i++) {

        linhas += `
        <tr>
            <td>${i + 1}º</td>
            <td>${resposta.hipoglicemia[i] ?? ''}</td>
            <td>${resposta.normais[i] ?? ''}</td>
            <td>${resposta.hiperglicemia[i] ?? ''}</td>
        </tr>
        `
    }

    tbody.innerHTML = linhas

    trTfoot.innerHTML = `
        <td>${resposta.mediaGeral.toFixed(2)}</td>
        <td>${resposta.mediaHipoglicemia.toFixed(2)}</td>
        <td>${resposta.mediaNormais.toFixed(2)}</td>
        <td>${resposta.mediaHiperglicemia.toFixed(2)}</td>
    `
}

botaoClassificar.addEventListener('click', () => {
    main()
})