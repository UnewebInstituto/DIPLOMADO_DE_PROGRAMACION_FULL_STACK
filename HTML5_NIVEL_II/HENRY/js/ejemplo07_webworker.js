const x = document.getElementById("cuenta");
const msj = document.getElementById("mensaje");

function inicio() {
  if (typeof Worker !== "undefined") {
    msj.innerHTML = "Éxito. Su navegador web, si soporta Web Worker";
    if (typeof w == "undefined") {
      w = new Worker("./js/webworker.js");
    }
    w.onmessage = function (event) {
      console.log("Data de contador recibida:", event.data);
      x.innerHTML = event.data;
    };
  } else {
    msj.innerHTML = "Atención. Navegador no soporta Web Worker";
  }
}

function fin() {
  w.terminate();
  w = undefined;
  msj.innerHTML = "Web Worker finalizado.";
}
