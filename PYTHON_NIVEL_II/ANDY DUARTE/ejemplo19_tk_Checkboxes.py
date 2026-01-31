import tkinter as tk


def imprimir_estado():
    print(var.get())
    

ventana =tk.Tk()
var = tk.StringVar(value="OFF")
boton = tk.Checkbutton(ventana, text='Boton de verificacion',variable=var, onvalue="on",offvalue="OFF", command=imprimir_estado)
boton.pack()

ventana.mainloop()