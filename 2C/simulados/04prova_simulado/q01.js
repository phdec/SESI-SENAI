let botãoGerar = document.getElementById('botãoGerar')
let saidaMediaBaixos = document.getElementById('mediaBaixos')
let saidaMediaMedios = document.getElementById('mediaMedios')
let saidaMediaAltos = document.getElementById('mediaAltos')
let saidaMediaGeral = document.getElementById('mediaGeral')
let saidaNivelBaixos = document.getElementById('nivelBaixos')
let saidaNivelMedios = document.getElementById('nivelMedios')
let saidaNivelAltos = document.getElementById('nivelAltos')
let saidaNivelGeral = document.getElementById('nivelGeral')

function gerarNíveisPoluição(){
    return Math.floor(Math.random() * 200 + 1)
}

function classNíveis(){ // classificar
    let níveis = [], baixos = [], medios = [], altos = []
    let somaGeral = 0, somaBaixos = 0, somaMedios = 0, somaAltos = 0

    for(let i = 0; i < 50; i++){
        níveis.push(gerarNíveisPoluição())
        somaGeral += níveis[i]

        if(níveis[i] >= 1 && níveis[i] <= 60){
            baixos.push(níveis[i])
            somaBaixos += níveis[i]
        }else if(níveis[i] >= 61 && níveis[i] <= 140){
            medios.push(níveis[i])
            somaMedios += níveis[i]
        }else if(níveis[i] >= 151 && níveis[i] <= 200){
            altos.push(níveis[i])
            somaAltos += níveis[i]
        }
    }

    let mediaBaixos = somaBaixos / baixos.length
    let mediaMedios = somaMedios / medios.length
    let mediaAltos = somaAltos / altos.length
    let mediaGeral = somaGeral / níveis.length

    saidaMediaBaixos.innerText = mediaBaixos.toFixed(2)
    saidaMediaMedios.innerText = mediaMedios.toFixed(2)
    saidaMediaAltos.innerText = mediaAltos.toFixed(2)
    saidaMediaGeral.innerText = mediaGeral.toFixed(2)
    saidaNivelBaixos.innerText = baixos.join(' - ')
    saidaNivelMedios.innerText = medios.join(' - ')
    saidaNivelAltos.innerText = altos.join(' - ')
    saidaNivelGeral.innerText = níveis.join(' - ')
}

botãoGerar.addEventListener('click', () => {
    classNíveis()
})