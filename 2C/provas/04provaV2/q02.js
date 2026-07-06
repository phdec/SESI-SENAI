function classificar(){
    let glicemia = [65, 92, 110, 84, 150, 68, 75, 98, 120, 105, 88, 72, 140, 60, 95, 102, 115, 82, 79, 130, 69, 
91, 108, 85, 125], Hipoglicemia = [], normais = [], Hiperglicemia = []
    let somaHipoglicemia = 0, somaNormais = 0, somaHiperglicemia = 0

    for(let i = 0; i < 60; i++){

        if(glicemia[i] >= 1 && glicemia[i] <= 70){
            Hipoglicemia.push(glicemia[i])
            somaHipoglicemia += glicemia[i]
        }else if(glicemia[i] >= 71 && glicemia[i] <= 100){
            normais.push(glicemia[i])
            somaNormais += glicemia[i]
        }else if(glicemia[i] >= 101 && glicemia[i] <= 200){
            Hiperglicemia.push(glicemia[i])
            somaHiperglicemia += glicemia[i]
        }
    }


    return {Hipoglicemia: Hipoglicemia, normais: normais, Hiperglicemia: Hiperglicemia, somaHipoglicemia: somaHipoglicemia, somaNormais: somaNormais, somaHiperglicemia: somaHiperglicemia}
}

function soma(){
    let resposta = classificar()

    console.table(resposta.Hipoglicemia)
    console.table(resposta.normais)
    console.table(resposta.Hiperglicemia)
    console.log('Soma Hipoglicemia:', resposta.somaHipoglicemia)
    console.log('Soma Normais:', resposta.somaNormais)
    console.log('Soma Hiperglicemia:', resposta.somaHiperglicemia)
}
soma()