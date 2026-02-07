import tkinter as tk
from tkinter import filedialog

ventana = tk.Tk()
archivo = filedialog.askopenfilename()

ventana.mainloop()