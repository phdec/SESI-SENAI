let temperaturas = [5, 12, 8, 25, 19, 7, 21, 9, 14, 30, 17, 3, 6, 20, 11, 28, 10, 22, 15, 2, 13, 18, 16, 23, 27, 24, 1, 4, 26,
29]

let baixo = [], medio = [], alto = []

function verTempBaixa(){
    for(let i = 0; i < 30; i++){
        if(temperaturas[i] >= 1 && temperaturas[i] <= 10){
            baixo.push(temperaturas[i])
        }
    }
    console.log('temperaturas baixas na tabela a seguir:')
    console.table(baixo)
}

function verTempMedia(){
    let c = 0
     for(let i = 0; i < 30; i++){
        if(temperaturas[i] >= 11 && temperaturas[i] <= 20){
            medio[c] = temperaturas[i]
            c++
        }
    }
    console.log('temperaturas médias na tabela a seguir:')
    console.table(medio)
}

function verTempAlta(){
     for(let i = 0; i < 30; i++){
        if(temperaturas[i] >= 21 && temperaturas[i] <= 30){
            alto.push(temperaturas[i]) 
        }
    }
    console.log('temperaturas altas na tabela a seguir:')
    console.table(alto)
}

function main(){
    console.log('--- Programa para separar temperaturas em tabelas ---')

    verTempBaixa()
    verTempMedia()
    verTempAlta()
}main()