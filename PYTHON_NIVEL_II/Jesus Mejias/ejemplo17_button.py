#declaracion de dependencias
import tkinter as tk

#definicion de funciones
def imprimir_mensaje():
    print("Hola Mundo!")

#declaracion de variables
ventana = tk.Tk()
button = tk.Button(ventana,text ="Imprimir mensaje", command= imprimir_mensaje)
button.pack()

#cuerpo principal del programa
ventana.mainloop()