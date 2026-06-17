let saida = document.getElementById('saida')
let calc = document.getElementById('calc')
let gravar = document.getElementById('gravar')
let input = document.getElementById('num')

let arr = [], soma = 0

gravar.addEventListener('dblclick', () => {
    let num = Number(input.value)

    arr.push(num)

    // console.log(`O valor gravado foi ${arr}`)
    console.log(arr)

    saida.innerHTML = `<p>O valor gravado foi ${arr}</p>`
    input.value = ''
})

calc.addEventListener('click', () => {
    if(arr.length > 0){
        for(let i = 0; i < arr.length; i++){
            soma += arr[i]

            console.log(`A soma é: ${soma}`)
            saida.innerHTML = `<p>O valor da soma é: ${soma}</p>`
        }
    }else{
        alert('Grave no vetor!')
    }
})