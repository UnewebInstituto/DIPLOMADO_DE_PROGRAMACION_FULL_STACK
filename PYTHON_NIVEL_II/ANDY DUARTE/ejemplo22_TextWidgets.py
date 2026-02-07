import tkinter as tk

ventana=tk.Tk()

text = tk.Text(ventana, width=40 , height=10)
text.pack()

text.insert(tk.END, "HOLA,MUNDO")

ventana.mainloop()