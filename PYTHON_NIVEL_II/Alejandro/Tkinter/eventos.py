import tkinter as tk

ventana = tk.Tk()

def clic():
  etiqueta.config(text="Se hizo clic en el botón")

boton = tk.Button(ventana, text="Haz clic aquí", command=clic)
etiqueta = tk.Label(ventana, text="")
boton.pack()
etiqueta.pack()
boton.bind("<Enter>", lambda e:etiqueta.config(text="El cursor esta sobre el botón"))
boton.bind("<Leave>", lambda e:etiqueta.config(text=""))

ventana.mainloop()