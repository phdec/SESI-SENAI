let vetor = []
let contador = 10, soma = 0
console.log(vetor)


for(let i = 0; i < 6; i++){
    vetor.push(contador)
    contador++
    soma += vetor[i]
}

console.table(vetor)
console.log(soma)