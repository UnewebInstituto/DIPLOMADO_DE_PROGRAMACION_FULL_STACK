function calcular(){
    let a = parseFloat(document.getElementById('a').value);
    let b = parseFloat(document.getElementById('b').value);
    let c = parseFloat(document.getElementById('c').value);
    let subRadical = 0;
    let x1 = 0;
    let x2 = 0;
    let mensaje = '';
    if (a==0){
        mensaje = 'ERROR: El valor de \'a\' debe ser diferente de 0.';
        resultado.className = 'mensaje error';
    }else{
        subRadical = Math.pow(b,2) - 4*a*c;
        if (subRadical < 0){
            mensaje = 'ATENCIÓN: Valor de la expresión sub radical no puede ser negativo.';
            resultado.className = 'mensaje alerta';
        }else{
            x1 = (-b+Math.sqrt(subRadical))/(2*a);
            x2 = (-b-Math.sqrt(subRadical))/(2*a);
            mensaje = 'RESULTADO:<br>x1= ' + x1 + '<br>x2= ' + x2;
            resultado.className = 'mensaje exito';
        }
    }
    document.getElementById('resultado').innerHTML = mensaje;
}

// Declaración de variables públicas
var resultado = document.getElementById('resultado')

const btnCalcular = document.getElementById('btnCalcular');
const btnLimpiar = document.getElementById('btnLimpiar');

btnCalcular.addEventListener('click',calcular);

