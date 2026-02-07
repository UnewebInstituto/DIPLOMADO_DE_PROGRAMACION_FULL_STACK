import tkinter as tk
from tkinter import filedialog
ventana = tk.Tk()
# Abrir un cuadro de dialogo de archivo
archivo = filedialog.askopenfilename()
print("Archivo seleccionado:"+ archivo)
ventana.mainloop()