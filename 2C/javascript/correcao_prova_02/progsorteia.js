const rl = require('readline-sync')

function sortear(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min)
}

function main() {
    let num = 0
    for(let i = 0; i < 6; i++){
        num = sortear(6, 7)
        console.log(`${num}`)
    }
}

main()