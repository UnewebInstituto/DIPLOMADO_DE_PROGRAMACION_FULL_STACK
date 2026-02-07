import tkinter as tk
ventana = tk.Tk()
# Crear el widget de texto
texto = tk.Text(ventana, width=40, height=10)
texto.pack()
# Insertar texto en el widget
texto.insert(tk.END, "Hola mundo!!!")
ventana.mainloop()