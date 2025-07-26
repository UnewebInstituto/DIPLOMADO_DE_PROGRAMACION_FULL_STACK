 function ubicacionExitosa(posicion){
            console.log(posicion);
            latitud = posicion.coords.latitude;
            longitud = posicion.coords.longitude;
            mensaje= "latitud=" + latitud + ",longitud=" + longitud;
            document.getElementById("resultado").innerHTML = mensaje;
            document.getElementById("btn_ver").disabled = false;
        }

        function manejoDeError(error){
            console.log(error);
            switch (error.code) {
                case 1:
                    mensaje = "Usuario nego acceso a ubicacion geografica";
                    break;
                case 2:
                    mensaje = "Ubicacion no disponible";
                    break;
                case 3:
                    mensaje = "Se excedio en el tiempo de espera"
                    break;
                default:
                    mensaje = "Error desconocido"
                    break;
            }
            document.getElementById("resultado").innerHTML = mensaje;
        }

        function obtener(){
            /*
                verificar que el navegador soporta geolocalizacion
            */
            if(navigator.geolocation){
                navigator.geolocation.getCurrentPosition(ubicacionExitosa, manejoDeError);


            }else{
                documento.getElementById("resultado").innerHTML = "Error: su navegador no soporta Geolocalizacion.";
            }
        }
        function ver(){
            let url="https://www.openstreetmap.org/#map=17/";
            url = url + latitud + "/" + longitud;
            window.open(url);
        }

        // Declaracion de variables 
        var latitud, longitud, mensaje;
        // Inicializacion de variables
        mensaje = "";