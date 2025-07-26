
   //decalaracion de variables 
  const canvas = document.getElementById('lienzo');
  const ctx = canvas.getContext('2d');
  const colores = ['yellow','blue','red','green','purple','orange'];
  //console.log(ctx)
    function dibujar()
  /* 
  let i = 0;
  let x = 0;
  let y = 0; 
while (i<6){
  ctx.fillStyle =colores[i]
  i = i + 1;
  ctx.fillRect(x,y,100,100)
  x = x + 100; 
  console.log(ctx.fillStyle);
  

  x = x + 100;
  y = y + 100;
  i = i + 1;


}
  }

  */
    ctx.fillStyle = colores[0];
    ctx.fillRect(0,0,20,10);
    ctx.fillStyle = colores[1];
    ctx.fillRect(20,10,20,10);
    ctx.fillStyle = colores[2];
    ctx.fillRect(40,20,20,10);
    ctx.fillStyle = colores[3];
    ctx.fillRect(60,30,20,10);
    ctx.fillStyle = colores[4]
    ctx.fillRect(80,40,20,10); 
    ctx.fillStyle = colores[5];
    ctx.fillRect(100,50,20,10);
  




