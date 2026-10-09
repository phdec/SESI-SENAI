let botaoReiniciar = document.getElementById("reiniciar");
let listaGastos = document.getElementById("listaGastos");

let saldo = Number(localStorage.getItem("saldo")) || 10000
let total = 0
let descricao = localStorage.getItem("desc");
let valor = Number(localStorage.getItem("valor"));
carregarGastos(descricao, valor)
if(!descricao && valor == null){
    document.getElementById("listaGastos").innerHTML += `
    <div class="gasto">
    <span>${descricao}</span>
    <span>${valor.toFixed(2)}</span>
    </div>
    `
    console.log(descricao)
    console.log(saldo)
}

botaoReiniciar.addEventListener("click", ()=> {
    localStorage.clear();
    localStorage.setItem("saldo", "10000");
    carregarGastos(descricao, valor);
});

function adicionarGasto(){
    let novaDescricao = document.getElementById("descricao").value
    let novoValor = Number(document.getElementById("valor").value)

    if(novaDescricao == "" || novoValor <= 0 || isNaN(novoValor)){
        alert("Preencha a descrição e o valor!")
        return;
    }else{
        window.alert(`Gasto de R$${novoValor.toFixed(2)} adicionado!`)
    }
    total += novoValor
    saldo -= novoValor
    localStorage.setItem("saldo", saldo.toString());
    localStorage.setItem("desc", novaDescricao);
    localStorage.setItem("valor", novoValor.toString());

    carregarGastos(novaDescricao, novoValor)

    document.getElementById('descricao').value = ''
    document.getElementById('valor').value = ''
    console.log(descricao)
    console.log(valor)
    console.log(novaDescricao)
    console.log(novoValor)
}

function carregarGastos(descricao, valor){
    document.getElementById('saldo').textContent = `R$${saldo.toFixed(2)}`
    console.log(saldo)
    if(!isNaN(valor) && descricao != null){
        listaGastos.innerHTML += `
        <div class="gasto">
        <span>${descricao}</span>
        <span>${valor.toFixed(2)}</span>
        </div>
        `
    }else{
        listaGastos.innerHTML = ''
    }
    document.getElementById('total').textContent = `R$${total.toFixed(2)}`
    document.getElementById('saldo').textContent = `R$${saldo.toFixed(2)}`
}