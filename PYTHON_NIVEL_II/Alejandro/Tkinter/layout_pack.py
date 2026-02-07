import tkinter as tk

ventana = tk.Tk()
etiqueta1 = tk.Label(ventana, text="Etiqueta 1")
etiqueta2 = tk.Label(ventana, text="Etiqueta 2")

etiqueta1.pack()
etiqueta2.pack()
ventana.mainloop()