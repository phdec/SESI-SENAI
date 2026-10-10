let botaoReiniciar = document.getElementById("reiniciar");
let listaGastos = document.getElementById("listaGastos");
let botaoAlterarSaldo = document.getElementById("alterarSaldo");

let saldo = Number(localStorage.getItem("saldo")) || 0
// let descricao = localStorage.getItem("desc");
// let valor = Number(localStorage.getItem("valor"));
let total = Number(localStorage.getItem("total")) || 0
let gastos = []
gastos = JSON.parse(localStorage.getItem("gastos")) || []
carregarGastos()

botaoAlterarSaldo.addEventListener('click', () => {
    while(true){
        let entrada = prompt("Digite o novo saldo:")
        if(entrada === null){return}
        if(entrada.trim() === '' || isNaN(entrada) || !(entrada >= 0)){
            alert("Saldo inválido. Digite novamente!")
        }else{
            saldo = Number(entrada)
            break;
        }
    }
    localStorage.setItem("saldo", saldo.toString());
    carregarGastos()
})

botaoReiniciar.addEventListener("click", ()=> {
    localStorage.clear();
    saldo = 0
    total = 0
    gastos = []
    carregarGastos();
});

function adicionarGasto(){
    let novaDescricao = document.getElementById("descricao").value
    let novoValor = Number(document.getElementById("valor").value)

    if(novaDescricao == "" || novoValor <= 0 || isNaN(novoValor)){
        alert("Preencha a descrição e o valor!")
        return;
    }else if(novoValor > saldo){
        alert("Saldo insuficiente!")
        return;
    }
    total += novoValor
    saldo -= novoValor
    gastos.push({descricao: novaDescricao, valor: novoValor})

    localStorage.setItem("saldo", saldo.toString());
    // localStorage.setItem("desc", novaDescricao);
    // localStorage.setItem("valor", novoValor.toString());
    localStorage.setItem("total", total.toString());
    localStorage.setItem("gastos", JSON.stringify(gastos));

    carregarGastos()

    document.getElementById('descricao').value = ''
    document.getElementById('valor').value = ''
    // console.log(descricao)
    // console.log(valor)
    // console.log(novaDescricao)
    // console.log(novoValor)
}

function carregarGastos(){
    console.log(saldo)
    console.table(gastos)
    document.getElementById('saldo').textContent = `${saldo.toLocaleString("pt-br", {style: "currency", currency: "BRL"})}`
    if(gastos[0]){
        listaGastos.innerHTML = ''
        for(let i = 0; i < gastos.length; i++){
            listaGastos.innerHTML += `
            <div class="gasto">
            <span>${gastos[i].descricao}</span>
            <span>${Number(gastos[i].valor.toFixed(2))}</span>
            </div>
            `
        }
    }else{
        listaGastos.innerHTML = ''
    }
    document.getElementById('total').textContent = `R$${total.toFixed(2)}`
    document.getElementById('saldo').textContent = `R$${saldo.toFixed(2)}`
}