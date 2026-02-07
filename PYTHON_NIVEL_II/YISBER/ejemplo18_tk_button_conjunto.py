import tkinter as tk

def imprimir_seleccion():
    print(var.get())

ventana = tk.Tk()
var = tk.StringVar(value="Opcion1")
boton1 = tk.Radiobutton(ventana, text="Opcion 1", variable=var, value="Opcion1", command=imprimir_seleccion)
boton2 = tk.Radiobutton(ventana, text="Opcion 2", variable=var, value="Opcion2", command=imprimir_seleccion)

boton1.pack()
boton2.pack()

ventana.mainloop()