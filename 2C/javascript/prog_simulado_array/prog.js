function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function verImpar(numeros){
    let soma = 0, contador = 0
    console.log('-Ímpares-')
    for(let i = 0; i < 10; i++){
        if(numeros[i] % 2 !== 0){
            soma += numeros[i]
            contador++
            console.log(`${contador}º ${numeros[i]}`)
        }
    }
    return soma
}
function verPar(numeros){
    let soma = 0, contador = 0
    console.log('-Pares-')
    for(let i = 0; i < 10; i++){
        if(numeros[i] % 2 === 0){
            soma += numeros[i]
            contador++
            console.log(`${contador}º ${numeros[i]}`)
        }
    }
    return soma
}

function principal(){
    let numeros = []
    let opcao = 1, somaImpares, somaPares

	switch(opcao){
	case 1:
        for(let i = 0; i < 10; i++){
            numeros[i] = sortear(1, 50)
            /*num = sortear(1, 50)
            numeros.push(num)*/
        }
        console.table(numeros)

        somaImpares = verImpar(numeros)
        somaPares = verPar(numeros)

        console.log(`Soma dos ímpares: ${somaImpares}\nSoma dos pares: ${somaPares}`)
    break
	}
}
principal()