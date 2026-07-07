function gerarESepararSequenciais() {
    let multiplos10 = []
    let naoMultiplos10 = []
    let somaMultiplos10 = 0, somaNaoMultiplos10 = 0
    for(let i = 1; i <= 300; i++){
        if(i % 10 === 0){
            multiplos10.push(i)
            somaMultiplos10 += i
        } else {
            naoMultiplos10.push(i)
            somaNaoMultiplos10 += i
        }
    }
    console.log('múltiplos de 10:')
    console.table(multiplos10)
    console.log('não múltiplos de 10:')
    console.table(naoMultiplos10)
    console.log('soma dos múltiplos de 10:', somaMultiplos10)
    console.log('soma dos não múltiplos de 10:', somaNaoMultiplos10)
    
    let mediaMultiplos10 = somaMultiplos10 / multiplos10.length
    let mediaNaoMultiplos10 = somaNaoMultiplos10 / naoMultiplos10.length
    
    console.log('média dos múltiplos de 10:', mediaMultiplos10)
    console.log('média dos não múltiplos de 10:', mediaNaoMultiplos10)

}gerarESepararSequenciais()