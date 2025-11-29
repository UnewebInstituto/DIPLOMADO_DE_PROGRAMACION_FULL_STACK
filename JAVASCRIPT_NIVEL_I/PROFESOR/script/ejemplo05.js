        /* Declaración de funciones */
        // Declaración de función tradicional
        function potencia(b,e){
            let producto;
            let contador;
            producto = 1;
            contador = 0;
            while (contador < e){
                producto = producto * b;
                contador ++;
            }
            return producto;
        }

        // Declaración de arrow function
        const limpiar = () =>{
            document.getElementById('base').value = '';
            document.getElementById('exponente').value = '';
            document.getElementById('resultado').innerHTML = '';
        }

        const calcular = () =>{
            // Declaración de variable con notacion snake case
            let calculo_potencia = 0;
            // Declaración de variable con notacion camel case
            // let calculoPotencia = 0;
            // Declaración de variable con notacion pascal case
            // let Calculo_Potencia = 0;
            // Declaración de variable con notacion kebab case
            // No recomendada, porque el "-" se intepreta como resta
            // let calculo-potencia = 0;
            // Declaración de variable con notacion snake case MAYÚSCULA
            // Se emplea preferiblemente para constantes
            // let CALCULO_POTENCIA = 0;
            /** 
            * Se obtienen los valores de base y exponente a partir del
            * html (todo valor ingresado a través de teclado es texto).
            * Posteriormente se convierte a número entero.
            */
            base = parseInt(document.getElementById('base').value);
            exponente = parseInt(document.getElementById('exponente').value);
            calculo = potencia(base, exponente);
            document.getElementById('resultado').innerHTML='La potencia de '+ base + ' elevado a ' + exponente + ' es igual a ' + calculo;
        }

        /* Declaración de variable públicas */
        var base, exponente;