import tkinter as tk

def mensaje():
    print("hola,Mundo")
 
ventana =tk.Tk()
boton = tk.Button(ventana, text='mensaje', command=mensaje)
boton.pack()

ventana.mainloop()