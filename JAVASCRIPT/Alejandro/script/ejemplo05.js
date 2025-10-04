// Declaración de función de forma tradicionale
        function potencia(b,e){
            let producto = 1;
            let contador = 0;
            while (contador < e){
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

        // Declaración de arrow function
        // Se obtienen los valores de base y exponente a partir del html
        // Todo valor ingresado a travéz de teclado es texto.
        // Posteriormente se convierte a número entero.
        function calcular(){
            // Declaración de variable con notación snake case
            let calculo_potencia = 0;
            // Declaración de variable con notación camel case
            // let calculoPotencia = 0;
            // Declaración de variable con notación pascal case
            // let Calculo_Potencia = 0;
            // Declaración de variable con notación snake case (constantes)
            // let CALCULO_POTENCIA = 0;
            
            base = parseInt(document.getElementById('base').value);
            exponente = parseInt(document.getElementById('exponente').value);
            calculo_potencia = potencia(base, exponente)
            document.getElementById('resultado').innerHTML='La potencia de '+base+' elevado a '+exponente+' es igual a '+calculo_potencia;
        }

        // Declaración de variables públicas
        var base, exponente;