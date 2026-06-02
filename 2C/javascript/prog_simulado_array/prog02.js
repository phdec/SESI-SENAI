function sortear(min, max){
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function verDivs(num){
    let soma11 = 0, soma13 = 0, media11 = 0, media13 = 0, c11 = 0
    let div11 = [], div13 = []
    for(let i = 0; i < num.length; i++){
        if(num[i] % 11 === 0){
            div11.push(num[i])
            soma11 += div11[c11]
            c11++
        }else if(num[i] % 13 === 0){
            div13.push(num[i])
            soma13 += num[i]
        }
    }

    media11 = soma11 / c11
    media13 = soma13 / div13.length
        
    return { soma11, soma13, media11, media13, div11, div13 }
}

function main(){
    let num = []
    let result = { soma11: 0, soma13: 0, media11: 0, media13: 0, div11: 0, div13: 0 }

    for(let i = 0; i < 100; i++){
        num[i] = sortear(1, 100)
    }
    result = verDivs(num)
    soma.soma11 = result.soma11
    soma.soma13 = result.soma13
    media.media11 = result.media11
    media.media13 = result.media13

    console.table(result.div11)
    console.table(result.div13)
    console.log(`Soma dos divisíveis por 11: ${result.soma11}`)
    console.log(`Soma dos divisíveis por 13: ${result.soma13}`)
    console.log(`Média dos divisíveis por 11: ${result.media11}`)
    console.log(`Média dos divisíveis por 13: ${result.media13}`)
}main()