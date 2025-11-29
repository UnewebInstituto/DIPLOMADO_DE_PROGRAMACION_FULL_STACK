
        //Declaracion de funcion tradicional
        function potencia(b,e){
            let producto;
            let contador;
            producto = 1;
            contador = 0;
            while (contador <  e){
                producto = producto * b;
                contador++;
            }
            return producto;
        }
        //Declaracion de arrow functon
        const Limpiar = () => {
            document.getElementById('base').value;        
            document.getElementById('exponente'),value;
            document.getElementById('resultado').value;
        }
        const calcular = () => {
            let calculo_potencia = 0;
            //se obtienen los valores de base y exponente a partir del html 
            // (todo valor ingresado a traves de teclado es texto).
            //posteriormente se convierte a numero entero
            base = parseInt(document.getElementById('base').value);
            exponente = parseInt(document.getElementById('exponente').value);
            calculo = potencia(base,exponente);
            document.getElementById('resultado').innerHTML = ' la potencia de ' + base + 
            ' elevado a ' + exponente + ' es igual a ' + calculo;
        }

        //Declaracion de variables publicas
        var base, exponente;