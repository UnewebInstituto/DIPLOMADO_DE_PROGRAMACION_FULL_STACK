    //Declaracin de funciones
    function suma() {
        n1 = document.getElementById("n1").value;
        n2 = document.getElementById("n2").value;
        n1 = parseFloat(n1);
        n2 = parseFloat(n2);
        resultado = n1 + n2;
        document.getElementById("resultado").value = resultado;
    }
    function resta() {
        n1 = document.getElementById("n1").value;
        n2 = document.getElementById("n2").value;
        n1 = parseFloat(n1);
        n2 = parseFloat(n2);
        resultado = n1 - n2;
        document.getElementById("resultado").value = resultado;
    }
    function multiplica() {
        n1 = document.getElementById("n1").value;
        n2 = document.getElementById("n2").value;
        n1 = parseFloat(n1);
        n2 = parseFloat(n2);
        resultado = n1 * n2;
        document.getElementById("resultado").value = resultado;
    }
    function divide() {
        n1 = document.getElementById("n1").value;
        n2 = document.getElementById("n2").value;
        n1 = parseFloat(n1);
        n2 = parseFloat(n2);
      if (n2 == 0) {
        mensaje = "No se puede dividir por cero";
        resultado = "ERROR"
        document.getElementById("mensaje").className = "error";
        document.getElementById("mensaje").innerHTML = mensaje;
      } else {
        mensaje = "";
        resultado = n1 / n2;
        document.getElementById("mensaje").className = "";
        document.getElementById("mensaje").innerHTML = mensaje;
      }
        document.getElementById("resultado").value = resultado;
    }
    function limpia() {
        document.getElementById("n1").value = "";
        document.getElementById("n2").value = "";
        document.getElementById("mensaje").innerHTML = "";
        document.getElementById("resultado").value = "";
        document.getElementById("mensaje").className = "";
    }
    //Declaracin de variables
    var n1, n2, resultado, mensaje;