# 1) Importar dependencia
import tkinter as tk

# 2) Declarar funciones
def imprimir_seleccion():
    print(var.get())

# 3) Inicializar variables
ventana = tk.Tk()

var = tk.StringVar(value="Opción 1")

boton1 = tk.Radiobutton(ventana,text="Opción 1",variable=var,value="Opción 1", command=imprimir_seleccion)
boton2 = tk.Radiobutton(ventana,text="Opción 2",variable=var, value="Opción 2", command=imprimir_seleccion)
boton3 = tk.Radiobutton(ventana,text="Opción 3",variable=var, value="Opción 3", command=imprimir_seleccion)

boton1.pack()
boton2.pack()
boton3.pack()

# 4) Cuerpo principal del programa
ventana.mainloop()