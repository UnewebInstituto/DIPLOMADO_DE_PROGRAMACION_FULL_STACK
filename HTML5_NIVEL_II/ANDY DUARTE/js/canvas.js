 // declaracion de variables
        const canvas = document.getElementById('lienzo');
        const ctx = canvas.getContext('2d');
        const colores =['yellow','blue','red','green','purple','orange'];
        console.log(ctx);
        function dibujar(){
         /*
          let i = 0;
          let x = 100;
          let y = 100;
          
          while (i < 6){
                ctx.fillStyle = colores[i];
                console.log(ctx.fillStyle);
                console.log('x:',x);
                console.log('y:',y);
                ctx.fillRect(x,y,100,100);
                x = x + 100;
                console.log(x);
                y = y + 100;
                console.log(y);
                i = i + 1;
                console.log(i);
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
         ctx.fillStyle = colores[4];
         ctx.fillRect(80,40,20,10);
         ctx.fillStyle = colores[5];
         ctx.fillRect(100,50,20,10);
        }
