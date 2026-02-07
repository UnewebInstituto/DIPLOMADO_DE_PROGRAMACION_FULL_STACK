import tkinter as tk
ventana = tk.Tk()
#Crear el canvas
canvas = tk.Canvas(ventana,width=300, height=200)
canvas.pack()
#dibujar rectangulo en canvas
rect = canvas.create_rectangle(50,50,150,150,fill="red")
ventana.mainloop()
