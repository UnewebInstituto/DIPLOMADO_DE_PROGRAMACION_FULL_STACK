function potencia(b, e) {
    let producto;
    let contador;
    producto = 1;
    contador = 0;
    while (contador < e) {
        producto = producto * b;
        contador++;
    }
    return producto;
}

const limpiar = () => {
    document.getElementById('base').value = '';
    document.getElementById('exponente').value = '';
    document.getElementById('resultado').innerHTML = '';
}


const calcular = () => {
    let calculo_potencia = 0;
    base = parseInt(document.getElementById('base').value);
    exponente = parseInt(document.getElementById('exponente').value);
    calculo = potencia(base, exponente);
    document.getElementById('resultado').innerHTML = 'la potencia de ' +
        base + ' elevado a ' + exponente + ' es igual a ' + calculo;

}

/* declaracion de variables publicas */
var base, exponente;