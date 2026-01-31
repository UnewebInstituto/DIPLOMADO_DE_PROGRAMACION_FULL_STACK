# 1) Declaración de dependencia
import tkinter as tk

# 2) Definición de funciones
def imprimir_mensaje():
    print("¡Hola mundo!")

# 3) Declaración de variables
ventana = tk.Tk()
button = tk.Button(ventana,text="Imprimir mensaje",command=imprimir_mensaje)
button.pack()

# 4) Cuerpo principal del programa
ventana.mainloop()
