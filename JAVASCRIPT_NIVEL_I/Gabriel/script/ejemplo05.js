  //Declaracion de funciones
        //Declaracion de funcion tradicional
        function potencia(b,e){
            let producto;
            let contador;
            producto = 1;
            contador = 0;
            while (contador < e){
                producto = producto * b;
                contador ++;
            }
            return producto
        }


        //Declaracion arrow function
        const limpiar =() =>{
            document.getElementById('base').value = '';
            document.getElementById('exponente').value = '';
            document.getElementById('resultado').innerHTML = '';
        }

        const calcular = () =>{
            // Declaracion de variable con notacion snake case
            let calculo_potencia = 0;
            // Declaracion de variable con notacion camel case
            //let calculoPotencia = 0;
            // Declaracion de variable con notacion Kebab case
            // No recomendada porque se puede interpretar como una resta
            //let calculo-potencia = 0;
            // Declaracion de variable con notacion Pascal case
            //let Calculo_Potencia = 0;
            // Declaracion de variable con notacion snake case en mayuscula
            //Se emplea preferiblemente para constantes
            //let CALCULO_POTENCIA = 0;
            /**
             * Se obtienen los valroes de base y exponente del 
             * html ( todo valor ingresado a traves de teclado es texto)
             * Posteriormente se convierte a numero entero
             * */
            base = parseInt(document.getElementById('base').value);
            exponente = parseInt(document.getElementById('exponente').value);
            calculo = potencia(base,exponente)
            document.getElementById('resultado').innerHTML='La potencia de ' +base+ 'elevado a ' +exponente+ 'es igual a ' + calculo;
        }

        /* Declaracion de variable publica */
        var base, exponente;