import tkinter as tk

ventana=tk.Tk()

etiqueta1 = tk.Label(ventana, text="etiqueta1")
etiqueta2 = tk.Label(ventana, text="etiqueta2")

etiqueta1.pack()
etiqueta2.pack()

ventana.mainloop()