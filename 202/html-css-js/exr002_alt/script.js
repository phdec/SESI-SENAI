let botaoReiniciarGastos = document.getElementById("reiniciarGastos");
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


document.getElementById("listaGastos").addEventListener("click", (e) => {
    let botaoClicado = e.target.closest("button")
    if(!botaoClicado){return}
    
    // cria dois arrays com os botões e pega o index a partir deles; seria possível através do .gasto

    let botoesAlterar = [...document.getElementsByClassName("alterarGasto")]

    if(botoesAlterar.includes(botaoClicado)){
        let index = botoesAlterar.indexOf(botaoClicado)
        alterarGasto(index)
    }
    if(botoesExcluir.includes(botaoClicado)){
        let index = Array.from(document.getElementsByClassName("excluirGasto")).indexOf(botaoClicado)
        let confirmacao = confirm("Deseja realmente excluir este gasto?")
        if(confirmacao){
            excluirGasto(index)
        }
    }
})

botaoReiniciarGastos.addEventListener("click", ()=> {
    let confirmacao = confirm("Deseja realmente reiniciar? Todos os gastos serão apagados.")
    if(!confirmacao){return}
    localStorage.removeItem("total");
    localStorage.removeItem("gastos");
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
//     console.log(saldo)
//     console.table(gastos)
    document.getElementById('saldo').textContent = `${saldo.toLocaleString("pt-br", {style: "currency", currency: "BRL"})}`
    if(gastos[0]){
        listaGastos.innerHTML = ''
        for(let i = 0; i < gastos.length; i++){
            listaGastos.innerHTML += `
            <div class="gasto">
            <div class="infGasto">
                <span>${gastos[i].descricao}</span>
                <span>${gastos[i].valor.toLocaleString("pt-br", {style: "currency", currency: "BRL"})}</span>
            </div>
            <div class="botoesGasto">
                <button class="alterarGasto"><i class="fa-solid fa-pen"></i></button>
                <button class="excluirGasto"><i class="fa-solid fa-trash"></i></button>
            </div>
            </div>
            `
        }
    }else{
        listaGastos.innerHTML = ''
    }
    document.getElementById('total').textContent = `${total.toLocaleString("pt-br", {style: "currency", currency: "BRL"})}`
}

// as funções seuintes podem ter problemas se o index do html for diferente do index do array

function alterarGasto(index) {
    let entrada
    while(true){
        entrada = prompt("Digite o novo valor do gasto:")
        if(entrada === null){return}
        if(entrada.trim() === '' || isNaN(entrada) || !(entrada > 0)){
            alert("Valor inválido. Digite novamente!")
        }else if(Number(entrada) - gastos[index].valor > saldo){
            alert("Saldo insuficiente!")
        }else{
            break;
        }
    }
    saldo -= entrada - gastos[index].valor
    total += entrada - gastos[index].valor
    gastos[index].valor = Number(entrada)
    localStorage.setItem("saldo", saldo.toString());
    localStorage.setItem("total", total.toString());
    localStorage.setItem("gastos", JSON.stringify(gastos));
    carregarGastos()
}

function excluirGasto(index) {
    saldo += gastos[index].valor
    total -= gastos[index].valor
    gastos.splice(index, 1)
    localStorage.setItem("saldo", saldo.toString());
    localStorage.setItem("total", total.toString());
    localStorage.setItem("gastos", JSON.stringify(gastos));
    // listaGastos.removeChild(listaGastos.children[index])
    listaGastos.children[index].remove()
}