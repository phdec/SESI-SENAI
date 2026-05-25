let resultado = document.getElementById('resultado');
let tentativasRestantes = document.getElementById('tentativasRestantes');
let jogarNovamente = document.getElementById('jogarNovamente');
let numeroSecreto = Math.floor(Math.random() * 100) + 1;
let verificarChute = document.getElementById('verificarChute');
let tentativas = Number(document.getElementById('qtTentativas').value);
verificarChute.addEventListener('click', () => {
    let chute = Number(document.getElementById('chute').value);
    if(tentativas > 0) {
        if(chute < 1 || chute > 100) {
            resultado.textContent = 'Por favor, digite um número entre 1 e 100.'
        }else{
            if(chute === numeroSecreto) {
                resultado.textContent = 'Parabéns! Você acertou!'
                tentativas--;
                tentativasRestantes.textContent = 'Tentativas restantes: ' + tentativas;
                verificarChute.style.display = 'none';
                jogarNovamente.style.display = 'block';
            } else if(chute < numeroSecreto) {
                resultado.textContent = 'Seu chute é menor que número!'
                tentativas--;
                tentativasRestantes.textContent = 'Tentativas restantes: ' + tentativas;
            } else {
                resultado.textContent = 'Seu chute é maior que número!'
                tentativas--;
                tentativasRestantes.textContent = 'Tentativas restantes: ' + tentativas;
            }
        }
    }else if(tentativas === 0) {
        resultado.textContent = 'Você perdeu! O número secreto era ' + numeroSecreto;
        verificarChute.style.display = 'none';
        jogarNovamente.style.display = 'block';
    }else{
        resultado.textContent = 'Tá de brincadeira?';
    }
    });

jogarNovamente.addEventListener('click', () => {
    jogarNovamente.style.display = 'none';
    verificarChute.style.display = 'block';
    resultado.textContent = '';
    tentativasRestantes.textContent = '';
    numeroSecreto = Math.floor(Math.random() * 100) + 1;
    tentativas = Number(document.getElementById('qtTentativas').value);
});