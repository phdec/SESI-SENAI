
let saldo = 500
let total = 0
document.getElementById('saldo').textContent = `R$${saldo.toFixed(2)}`

function adicionarGasto(){
    let descricao = document.getElementById("descricao").value
    let valor = Number(document.getElementById("valor").value)

    if(descricao == "" || valor <= 0 || isNaN(valor)){
        alert("Preencha a descrição e o valor!")
    }else{
        window.alert(`Gasto de R$${valor.toFixed(2)} adicionado!`)
    }
    total += valor
    saldo -= valor

    document.getElementById("listaGastos").innerHTML += `
    <div class="gasto">
    <span>${descricao}</span>
    <span>${valor.toFixed(2)}</span>
    </div>
    `

    document.getElementById('total').textContent = `R$${total.toFixed(2)}`
    document.getElementById('saldo').textContent = `R$${saldo.toFixed(2)}`

    document.getElementById('descricao').value = ''
    document.getElementById('valor').value = ''
}