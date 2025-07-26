function ubicacionExitosa(posicion) {
  console.log(posicion);
  latitud = posicion.coords.latitude;
  longitud = posicion.coords.longitude;
  mensaje = "Latitud=" + latitud + ", Longitud=" + longitud;
  document.getElementById("resultado").innerHTML = mensaje;
  document.getElementById("btn_ver").disabled = false;
}

function manejoDeError(error) {
  console.log(error);
  switch (error.code) {
    case 1:
      mensaje = "Usuario negó acceso a ubicación geográfica";
      break;
    case 2:
      mensaje = "Ubicación no disponible";
      break;
    case 3:
      mensaje = "Se excedio en el tiempo de espera";
      break;
    default:
      mensaje = "Error desconocido";
      break;
  }
  document.getElementById("resultado").innerHTML = mensaje;
}

function obtener() {
  /* 
        Verificar que el navegador soporta geolocalización
      */
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(ubicacionExitosa, manejoDeError);
  } else {
    documento.getElementById("resultado").innerHTML =
      "Error: Su navegador no soporta Geolocalización.";
  }
}

function ver() {
  let url = "https://www.openstreetmap.org/#map=17/";
  url = url + latitud + "/" + longitud;
  window.open(url);
}

// Declaración de variables
var latitud, longitud, mensaje;
// Inicialización de variables
mensaje = "";
