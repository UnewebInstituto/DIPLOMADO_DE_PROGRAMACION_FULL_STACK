import tkinter as tk
def imprimir_estado():
    print(var.get())

ventana = tk.Tk()
var = tk.StringVar(value="off")
boton = tk.Checkbutton(ventana,text="Botón de verificación",variable=var,onvalue="On", offvalue="off",command=imprimir_estado)

boton.pack()
ventana.mainloop()