//declaracion de variable
var contador = 0;

//declaracion de funcion
function contar() {
  contador = contador +1;
  //console.log(contador);
  console.warn('Data de contador enviada:',contador);
  postMessage(contador);
  setTimeout("contar()", 500);
}
/*
function disparo() {
  setInterval(contar, 500);
}
*/




contar();
