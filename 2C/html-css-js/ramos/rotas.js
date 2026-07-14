let botaoGerar = document.getElementById('gerarRelatorio')
let resultado = document.getElementById('rotas')

function gerarESepararRotas() {

    let rotasPrincipais = []
    let rotasSecundarias = []

    let somaPrincipais = 0
    let somaSecundarias = 0

    for (let i = 1; i <= 300; i++) {

        if (i % 10 === 0) {

            rotasPrincipais.push(i)
            somaPrincipais += i

        } else {

            rotasSecundarias.push(i)
            somaSecundarias += i
        }
    }

    let mediaPrincipais = somaPrincipais / rotasPrincipais.length
    let mediaSecundarias = somaSecundarias / rotasSecundarias.length

    return {
        rotasPrincipais,
        rotasSecundarias,
        somaPrincipais,
        somaSecundarias,
        mediaPrincipais,
        mediaSecundarias
    }
}

function main() {

    let resposta = gerarESepararRotas()

    resultado.innerHTML = `
    
    <h2>Relatório de Rotas</h2>

    <hr class="linhas">
    
    <section>
    
    <h3>📦 Rotas Principais</h3>
    
    <p><strong>Quantidade:</strong> ${resposta.rotasPrincipais.length}</p>
    
        <p><strong>Soma:</strong> ${resposta.somaPrincipais.toFixed(2)}</p>
        
        <p><strong>Média:</strong> ${resposta.mediaPrincipais.toFixed(2)}</p>
        
        <p><strong>Rotas:</strong></p>
        
        <p>${resposta.rotasPrincipais.join(', ')}</p>
        
    </section>
    
    <hr class="linhas">

    <section>

        <h3>🚚 Rotas Secundárias</h3>

        <p><strong>Quantidade:</strong> ${resposta.rotasSecundarias.length}</p>

        <p><strong>Soma:</strong> ${resposta.somaSecundarias.toFixed(2)}</p>

        <p><strong>Média:</strong> ${resposta.mediaSecundarias.toFixed(2)}</p>

        <p><strong>Rotas:</strong></p>

        <p>${resposta.rotasSecundarias.join(', ')}</p>

    </section>
    `
}

botaoGerar.addEventListener('click', () => {
    main()
})