function suma() {
      nro1 = document.getElementById('n1').value;
      nro2 = document.getElementById('n2').value;
      nro1 = parseFloat(nro1);
      nro2 = parseFloat(nro2);
      resultado = nro1 + nro2;
      document.getElementById('resultado').value = resultado;
    }

    function resta() {
      nro1 = document.getElementById('n1').value;
      nro2 = document.getElementById('n2').value;
      nro1 = parseFloat(nro1);
      nro2 = parseFloat(nro2);
      resultado = nro1 - nro2;
      document.getElementById('resultado').value = resultado;
    }

    function multiplica() {
      nro1 = document.getElementById('n1').value;
      nro2 = document.getElementById('n2').value;
      nro1 = parseFloat(nro1);
      nro2 = parseFloat(nro2);
      resultado = nro1 * nro2;
      document.getElementById('resultado').value = resultado;
    }
    function divide() {
      nro1 = document.getElementById('n1').value;
      nro2 = document.getElementById('n2').value;
      nro1 = parseFloat(nro1);
      nro2 = parseFloat(nro2);
      if (nro2 == 0) {
        mensaje = "No se puede dividir por 0";
        resultado = "ERROR"
        document.getElementById("mensaje").className= "ERROR"; 
        document.getElementById("mensaje").innerHTML = mensaje;
      } else {
        mensaje = "";
        resultado = nro1 / nro2;
        document.getElementById("mensaje").className = ""; 
        document.getElementById("mensaje").innerHTML = mensaje;
      }
      document.getElementById('resultado').value = resultado;
    }

    function limpia() {
      document.getElementById('n1').value =" ";
      document.getElementById('n2').value =" ";
      document.getElementById('mensaje').innerHTML =" ";
      document.getElementById('resultado').value =" ";
      document.getElementById("mensaje").className = ""; 
    }
       var nro1, nro2, resultado, mensaje