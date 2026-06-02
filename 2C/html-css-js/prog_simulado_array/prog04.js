let gerar = document.getElementById('gerar')
let result = document.getElementById('result')

gerar.addEventListener('click', () => {
    main()
})

function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function classificar(numeros){
    let classificacao = {baixos: [], medios: [], altos: [], soma: []}
    classificacao.soma = [0, 0, 0]
    for(let i = 0; i < numeros.length; i++){
        if(numeros[i] >= 1 && numeros[i] <= 35){
            classificacao.baixos.push(numeros[i])
            classificacao.soma[0] += numeros[i]
        }else if(numeros[i] >= 36 && numeros[i] <= 60){
            classificacao.medios.push(numeros[i])
            classificacao.soma[1] += numeros[i]
        }else if(numeros[i] >= 61 && numeros[i] <= 100){
            classificacao.altos.push(numeros[i])
            classificacao.soma[2] += numeros[i]
        }
    }
    return classificacao
}

function fazerTabela(classificacao, media){
    result.innerHTML = `
    <table>
        <thead>
            <th></th>
            <th>Baixos</th>
            <th>Médios</th>
            <th>Altos</th>
        </thead>
        <tbody>
            <tr>
                <th>Valores
                <td>${classificacao.baixos}</td>
                <td>${classificacao.medios}</td>
                <td>${classificacao.altos}</td>
            </tr>
            <tr>
                <th>Média
                <td>${media.baixos.toFixed(2)}
                <td>${media.medios.toFixed(2)}
                <td>${media.altos.toFixed(2)}
            <tr>
                <th>Quantidade
                <td>${classificacao.baixos.length}</td>
                <td>${classificacao.medios.length}</td>
                <td>${classificacao.altos.length}
            
        </tbody>
    </table>
    `
}

function main(){
    let numeros = []
    let classificacao = {baixos: [], medios: [], altos: [], soma: []}
    let media = {baixos: 0, medios: 0, altos: 0}

    for(let i = 0; i < 20; i++){
        numeros.push(sortear(1, 100))
    }
    classificacao = classificar(numeros)
    media.baixos = classificacao.soma[0] / classificacao.baixos.length
    media.medios = classificacao.soma[1] / classificacao.medios.length
    media.altos = classificacao.soma[2] / classificacao.altos.length
    fazerTabela(classificacao, media)
}