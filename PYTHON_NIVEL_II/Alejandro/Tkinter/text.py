import tkinter as tk

ventana = tk.Tk()
texto = tk.Text(ventana, width=40, height=10)
texto.pack()
texto.insert(tk.END, "Hola, Mundo")
ventana.mainloop()