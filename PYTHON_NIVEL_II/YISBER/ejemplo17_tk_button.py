import tkinter as tk



def imprimir_mensaje():
    print("¡Hola mundo!")


ventana = tk.Tk()
boton = tk.Button(ventana,text="Imprimir mensaje",command=imprimir_mensaje)
boton.pack()


ventana.mainloop()
